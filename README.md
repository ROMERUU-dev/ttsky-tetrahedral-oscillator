![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)

# Tetrahedral Oscillator

This project implements a **tetrahedral oscillator** for **Tiny Tapeout analog** in **SKY130**.

The design is inspired by the paper **“Analysis and Design of a Tetrahedral Oscillator”** by **Richelle L. Smith** and **Thomas H. Lee**.  
The oscillator core is built from **coupled CMOS inverter pairs**, and its oscillation frequency is adjusted by adding **capacitive loads** to the internal nodes.

## Project goal

The goal of this project is to implement and study a compact integrated tetrahedral oscillator using open-source tools and the SKY130 process, targeting fabrication through the Tiny Tapeout analog flow.

## Design overview

The oscillator is based on multiple inverter stages arranged in a tetrahedral-style feedback structure.  
Instead of relying on a traditional odd-stage ring oscillator topology, this design uses **coupled inverter pairs** and **distributed loading** to produce oscillation.

Key characteristics of the design:

- CMOS inverter-pair based oscillator core
- Frequency adjustment through added capacitive loads
- Buffered observation nodes for waveform readout
- Intended for **Tiny Tapeout analog 1x2**
- Supply voltage: **1.8 V**

## Research basis

This work is based on the research paper:

**Richelle L. Smith** and **Thomas H. Lee**,  
*Analysis and Design of a Tetrahedral Oscillator*

The project is not intended as a literal reproduction of the published design, but rather as an implementation inspired by its oscillator concept and adapted to the Tiny Tapeout analog environment and SKY130 standard-cell based experimentation.

## Current implementation approach

At the current stage, the project focuses on:

- building the oscillator core from SKY130 standard cells
- studying physical layout constraints in a **1x2 Tiny Tapeout analog tile**
- integrating the design with the Tiny Tapeout analog pin template
- preparing custom layout and exported GDS/LEF for submission

## Layout strategy

The oscillator core is being implemented as a custom physical design using SKY130 standard cells placed manually in Magic.  
Because the circuit contains multiple active drivers per internal node, it is not a conventional digital logic block for standard RTL-to-GDS flows, so the custom layout approach is more suitable.

## Visualization and flow tooling

This repository already includes finalized GDS and documentation artifacts, and the next step is to improve usability without disturbing the verified flow.

Planned/added workflow extensions:

- **GDS2WebGL integration (viewer workflow):** use [GDS2WebGL](https://github.com/s-holst/GDS2WebGL) as a non-invasive visualization path for inspecting GDS in a browser.
- **`png2layout` usage:** use [PNG-2-Layout](https://github.com/ROMERUU-dev/PNG-2-Layout) to transform transparent PNG inputs into Manhattan-clean, pixel-style GDS geometry with DRC-safe cleanup.
- **`sky-flow` usage:** use [sky130-flow-gui](https://github.com/ROMERUU-dev/sky130-flow-gui) to simplify PDK/VLSI software setup, route generation, simulation execution (`ngspice`), waveform visualization, and auxiliary engineering utilities.

These additions are intentionally documented as **support tooling** around the existing tapeout collateral, so they do not modify the validated core deliverables (`gds/`, `lef/`, `mag/`, and project docs).

## Status

Current project status:

- [x] Tiny Tapeout analog repository created
- [x] Project metadata initialized
- [x] Verilog/project stub cleanup
- [x] Pin allocation finalization
- [x] Magic template initialization
- [x] Oscillator core placement
- [x] Capacitive load integration
- [x] GDS export
- [x] LEF export
- [x] Final Tiny Tapeout checks
- [x] Post-layout ngspice validation and waveform review
- [x] Additional visualization/flow tooling documentation

## Documentation

Additional project documentation can be found here:

- [Project information](docs/info.md)

## What is Tiny Tapeout?

Tiny Tapeout is an educational project that makes it easier and cheaper to manufacture digital and analog integrated circuit designs on real silicon.

To learn more, visit https://tinytapeout.com.
