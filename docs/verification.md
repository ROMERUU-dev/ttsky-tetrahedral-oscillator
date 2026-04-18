# Verificación de tt_um_tetrahedral_oscillator

## Simulación

- La simulación PEX se corre con `tb/tt_um_tetrahedral-oscilator_pex_tb.spice`.
- El netlist extraído usado por el testbench se genera con `mag/extract_pex.tcl`.
- Las salidas guardadas para inspección son `uo_out_0`, `uo_out_1`, `uo_out_2` y `uo_out_3`.
- Los pines de entrada no usados se amarran débilmente a `VGND` en el testbench para evitar nodos flotantes durante ngspice.

## LVS / Extracción

- LVS del núcleo analógico: `lvs/lvs.log` reporta `Circuits match correctly`.
- Extracción PEX: `env PDK_ROOT=/home/romeruu/pdk magic -dnull -noconsole -rcfile /home/romeruu/pdk/sky130A/libs.tech/magic/sky130A.magicrc extract_pex.tcl`.
- Antena: `env PDK_ROOT=/home/romeruu/pdk magic -dnull -noconsole -rcfile /home/romeruu/pdk/sky130A/libs.tech/magic/sky130A.magicrc run_magic_antenna.tcl`.
- El antennacheck de Magic terminó con `antennacheck finished`.
