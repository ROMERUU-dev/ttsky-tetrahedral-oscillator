# Tetrahedral Oscilator for Tiny Tapeout

A compact SKY130 analog oscillator inspired by a tetrahedral
  oscillator topology, targeting the Tiny Tapeout analog flow.

This project was generated from the Tiny Tapeout SKY130 analog/custom layout template shape.

## Project Data

- Top module: `tt_um_tetrahedral_oscilator`
- Design type: `digital`
- Tiles: `1x2`
- Analog pins: `0`
- Uses 3.3V: `false`
- Clock Hz: `0`
- Author: Juvenal Romero Pedraza

## Structure

- `src/project.v`: Tiny Tapeout wrapper module placeholder
- `gds/`: final or imported GDS files
- `lef/`: LEF abstracts when available
- `xschem/`: schematics
- `mag/`: Magic layout
- `spice/`: design netlists
- `test/`: CI/simulation tests
- `tb/`: local SPICE testbenches
- `docs/`: pinout, verification, and notes
- `runs/`: SKY130 Flow GUI outputs

## Online Viewers

- [GDS layout viewer](https://romeruu-dev.github.io/ttsky-tetrahedral-oscillator/)
- [Main Xschem schematic viewer](https://xschem-viewer.com/?file=https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/blob/main/xschem/tt_um_tetrahedral_oscilator.sch)
- [LVS Xschem schematic viewer](https://xschem-viewer.com/?file=https://github.com/ROMERUU-dev/ttsky-tetrahedral-oscillator/blob/main/xschem/tt_um_tetrahedral_oscilator_xschem_lvs.sch)

The Xschem links are also listed in [`docs/xschem-viewer.md`](docs/xschem-viewer.md).
