# 16-bit-RAM
This project implements a 16-bit Random Access Memory (RAM) module in Verilog HDL. The RAM is designed to store and retrieve data in 16 different memory locations, where each location can hold a 16-bit word.
The design supports the following operations:
Write Operation: Data can be stored into a specified memory location when the write enable signal is active.
Read Operation: Data can be read from a specified memory location when the read enable signal is active.
Addressing: A 4-bit address input is used to uniquely select one of the 16 memory locations.
This RAM design is simple yet effective for demonstrating memory design concepts in digital systems. It can be simulated and tested using Verilog simulation tools (like ModelSim or Vivado) and also synthesized on FPGA boards for hardware verification.
