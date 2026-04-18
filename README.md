[![gds](https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/actions/workflows/gds.yaml/badge.svg)](https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/actions/workflows/gds.yaml)
[![docs](https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/actions/workflows/docs.yaml/badge.svg)](https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/actions/workflows/docs.yaml)

# Tetrahedral Oscillator for Tiny Tapeout

This project implements a compact SKY130 tetrahedral oscillator for the Tiny Tapeout analog flow.

The design is inspired by the paper **“Analysis and Design of a Tetrahedral Oscillator”** by **Richelle L. Smith** and **Thomas H. Lee**. The oscillator core is built from coupled CMOS inverter pairs, with capacitive loads added to internal nodes to study and tune oscillation behavior.

## Online Viewers

- [GDS layout viewer](https://romeruu-dev.github.io/ttsky-tetrahedral-oscillator/)
- [Xschem schematic viewer](https://xschem-viewer.com/?file=https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/blob/main/xschem/tt_um_tetrahedral_oscilator_xschem_lvs.sch)

## Project Data

| Item | Value |
| --- | --- |
| Top module | `tt_um_tetrahedral_oscilator` |
| Process | SKY130 |
| Target | Tiny Tapeout analog/custom layout |
| Tile size | `1x2` |
| Design type | Analog oscillator |
| Supply | 1.8 V core supply |
| Clock | `0 Hz` |
| Author | Juvenal Romero Pedraza |

## How It Works

The oscillator uses multiple inverter stages arranged in a tetrahedral-style feedback structure. Instead of using a conventional odd-stage ring oscillator topology, the design explores coupled inverter-pair feedback and distributed capacitive loading.

The current implementation focuses on:

- CMOS inverter-pair based oscillator core
- Frequency adjustment through added capacitive loads
- Buffered observation nodes for waveform readout
- Custom physical layout inside a Tiny Tapeout analog `1x2` tile
- Exported GDS and LEF collateral for the Tiny Tapeout flow

## How To Test

Simulate the extracted design with the provided SPICE testbenches and inspect the oscillator core and buffered output waveforms. The intended review flow is:

- Open the schematic with the online Xschem viewer.
- Inspect the final layout with the GDS layout viewer.
- Run or review the post-layout ngspice testbenches in `tb/` and `runs/results/`.
- Compare the oscillator core waveforms against the buffered output waveforms.

## Simulation Results

The oscillator was checked at two observation points: directly at the internal core nodes and after the output buffer chain. The core view shows the coupled inverter-pair dynamics, while the buffered view shows the same oscillation after it has been isolated for external observation.

### Oscillator Core

![Oscillator core waveforms](docs/images/oscillator_core_waveforms_overlay_zoom.svg)

The internal nodes (`x9/Y`, `x4/A`, `x9/A`, and `x8/A`) oscillate with the phase relationships expected from the tetrahedral-style feedback network. These are the most useful waveforms for understanding the behavior of the oscillator itself, before the buffer stages reshape and isolate the signals.

### Buffered Outputs

![Buffered output waveforms](docs/images/buffered_output_waveforms_overlay_zoom.svg)

The buffered outputs preserve the oscillatory behavior while providing cleaner observation nodes. These signals are useful for integration and probing, but the core waveforms remain the better reference for studying the oscillator topology.

## Layout Preview

![Layout preview](docs/images/layout.svg)

The final layout is exported as GDS/LEF and can be inspected interactively with the online GDS layout viewer. The layout collateral is kept in `gds/`, `lef/`, and `mag/`.

## Tooling

![SkyFlow logo](docs/images/sky130-flow-gui.svg)
![PNG-2-Layout logo](docs/images/pxl.svg)

SkyFlow was used as the local workflow environment for simulation and layout support. PNG-2-Layout is kept as supporting tooling for converting image-based artwork into layout-friendly geometry.

## Conclusions

The simulation results show that the coupled inverter network can sustain oscillation and that the buffered outputs track the oscillator activity without being the primary source of the behavior. This supports the custom-layout approach: the oscillator is best treated as an analog/mixed-signal feedback structure rather than as a conventional RTL block.

## Layout Strategy

The oscillator core is implemented as custom physical layout using SKY130 standard cells placed manually in Magic. Because the circuit contains multiple active drivers around internal feedback nodes, this custom layout approach is more suitable than treating the block as a conventional digital RTL-to-GDS design.

## Images

Image assets for documentation live in [`docs/images/`](docs/images/).

## Repository Structure

- `src/project.v`: Tiny Tapeout wrapper module
- `gds/`: final or imported GDS files
- `lef/`: LEF abstracts
- `xschem/`: schematics
- `mag/`: Magic layout
- `spice/`: design netlists
- `tb/`: local SPICE testbenches
- `runs/`: SKY130 Flow GUI outputs and simulation results
- `docs/`: notes, generated docs, viewer links, and image assets
