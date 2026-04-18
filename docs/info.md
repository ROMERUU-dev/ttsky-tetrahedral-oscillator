## How it works

This project implements a compact tetrahedral-style oscillator in SKY130 for
the Tiny Tapeout analog flow. The circuit is built as a semi-custom Magic
layout using SKY130 standard-cell inverters and buffers as the active devices,
with MIM capacitors used as distributed load elements.

The oscillator is inspired by the tetrahedral oscillator concept described by
Richelle L. Smith and Thomas H. Lee. This implementation is adapted to the
Tiny Tapeout 1x2 analog layout template and uses four buffered observation
nodes routed to `uo_out[0]` through `uo_out[3]`.

The design uses the 1.8 V supply domain:

- `VDPWR`: 1.8 V supply
- `VGND`: ground
- `uo_out[0]` to `uo_out[3]`: buffered oscillator observation outputs

## How to test

Power the design from `VDPWR = 1.8 V` and `VGND = 0 V`. Observe
`uo_out[0]` through `uo_out[3]` with a high-impedance oscilloscope probe or a
frequency counter input that does not overload the output drivers.

Post-layout extracted simulation was run with Magic extraction and ngspice.
The PEX testbench is in `tb/tt_um_tetrahedral-oscilator_pex_tb.spice`, and it
saves the four output waveforms as `uo_out_0`, `uo_out_1`, `uo_out_2`, and
`uo_out_3`.

The measured post-layout transient waveforms oscillate around the 1.8 V logic
range. A frequency near 12 MHz is practical to measure with standard university
lab equipment such as a 50 MHz or 100 MHz oscilloscope, provided the output is
probed with a high-impedance probe.

## External hardware

No external passives or bias sources are required. Use standard 1.8 V power
and high-impedance probing on the output pins.
