#!/usr/bin/env python3
"""Build a static GitHub Pages GDS viewer.

The generated site is intentionally simple: a single HTML page plus an SVG
rendered from the GDS. GitHub cannot preview GDS files directly, but it can
serve this output through Pages.
"""

from __future__ import annotations

import argparse
import html
import re
import shutil
from pathlib import Path


def read_project_field(info_yaml: Path, field: str) -> str | None:
    pattern = re.compile(rf"^\s*{re.escape(field)}\s*:\s*(.+?)\s*$")
    for line in info_yaml.read_text(encoding="utf-8").splitlines():
        match = pattern.match(line)
        if not match:
            continue
        value = match.group(1).strip()
        if value.startswith(("'", '"')) and value.endswith(("'", '"')):
            value = value[1:-1]
        return value
    return None


def resolve_gds_path(repo_root: Path, info_yaml: Path, explicit_gds: str | None) -> Path:
    if explicit_gds:
        gds_path = Path(explicit_gds)
        return gds_path if gds_path.is_absolute() else repo_root / gds_path

    top_module = read_project_field(info_yaml, "top_module")
    if not top_module:
        raise SystemExit(f"Could not find project.top_module in {info_yaml}")

    gds_path = repo_root / "gds" / f"{top_module}.gds"
    if not gds_path.exists():
        raise SystemExit(f"Expected GDS file does not exist: {gds_path}")
    return gds_path


def write_svg(gds_path: Path, svg_path: Path, cell_name: str | None) -> str:
    try:
        import gdstk
    except ImportError as exc:
        raise SystemExit("Missing dependency: install gdstk to build the GDS viewer") from exc

    library = gdstk.read_gds(str(gds_path))
    if cell_name:
        try:
            top_cell = library[cell_name]
        except KeyError as exc:
            raise SystemExit(f"Cell {cell_name!r} was not found in {gds_path}") from exc
    else:
        top_cells = library.top_level()
        if not top_cells:
            raise SystemExit(f"No top-level cells found in {gds_path}")
        top_cell = top_cells[0]

    svg_path.parent.mkdir(parents=True, exist_ok=True)
    style = {
        (layer, datatype): {
            "fill": color,
            "stroke": color,
            "fill-opacity": "0.55",
            "stroke-width": "0.02",
        }
        for (layer, datatype), color in {
            (64, 20): "#f94144",
            (65, 20): "#f3722c",
            (66, 20): "#f9c74f",
            (67, 20): "#90be6d",
            (68, 20): "#43aa8b",
            (69, 20): "#4d96ff",
            (70, 20): "#b5179e",
            (71, 20): "#ffffff",
            (72, 20): "#2ec4b6",
        }.items()
    }

    top_cell.write_svg(
        str(svg_path),
        scaling=12,
        precision=4,
        shape_style=style,
        background="#111111",
        pad="2%",
    )
    return top_cell.name


def write_index(out_dir: Path, title: str, cell_name: str, gds_path: Path) -> None:
    safe_title = html.escape(title)
    safe_cell = html.escape(cell_name)
    safe_gds = html.escape(gds_path.name)
    (out_dir / "index.html").write_text(
        f"""<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{safe_title} GDS Viewer</title>
  <style>
    :root {{
      color-scheme: dark;
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      background: #111;
      color: #f5f5f5;
    }}
    body {{
      margin: 0;
    }}
    header {{
      display: flex;
      flex-wrap: wrap;
      align-items: baseline;
      justify-content: space-between;
      gap: 0.75rem;
      padding: 1rem;
      background: #181818;
      border-bottom: 1px solid #333;
    }}
    h1 {{
      margin: 0;
      font-size: 1.1rem;
      font-weight: 650;
    }}
    a {{
      color: #8bd3ff;
    }}
    main {{
      width: 100vw;
      height: calc(100vh - 4rem);
      overflow: auto;
      background: #111;
    }}
    object {{
      display: block;
      min-width: 100%;
      min-height: 100%;
      border: 0;
    }}
    .meta {{
      color: #ccc;
      font-size: 0.9rem;
    }}
  </style>
</head>
<body>
  <header>
    <div>
      <h1>{safe_title}</h1>
      <div class="meta">Top cell: {safe_cell} · Source: {safe_gds}</div>
    </div>
    <a href="layout.svg">Open SVG</a>
  </header>
  <main>
    <object type="image/svg+xml" data="layout.svg" aria-label="{safe_title} layout"></object>
  </main>
</body>
</html>
""",
        encoding="utf-8",
    )


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo-root", default=".", help="Repository root")
    parser.add_argument("--info", default="info.yaml", help="Tiny Tapeout info.yaml")
    parser.add_argument("--gds", help="GDS path. Defaults to gds/<top_module>.gds")
    parser.add_argument("--out", default="_site", help="Output directory")
    parser.add_argument("--title", help="Page title. Defaults to project.title")
    parser.add_argument("--cell", help="Top cell name. Defaults to first top-level GDS cell")
    args = parser.parse_args()

    repo_root = Path(args.repo_root).resolve()
    info_yaml = repo_root / args.info
    out_dir = repo_root / args.out
    gds_path = resolve_gds_path(repo_root, info_yaml, args.gds)
    title = args.title or read_project_field(info_yaml, "title") or gds_path.stem

    if out_dir.exists():
        shutil.rmtree(out_dir)
    out_dir.mkdir(parents=True)

    cell = args.cell or read_project_field(info_yaml, "top_module")
    cell_name = write_svg(gds_path, out_dir / "layout.svg", cell)
    write_index(out_dir, title, cell_name, gds_path)
    shutil.copy2(gds_path, out_dir / gds_path.name)


if __name__ == "__main__":
    main()
