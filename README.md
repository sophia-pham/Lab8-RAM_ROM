# Lab8-RAM_ROM

This project implements a simple version of Random Access Memory (RAM) and Read Only Memory (ROM).

The RAM module (ram.v) allows data to be written and read from 8 data locations that are each 8 bits wide. The inputs to the module include a 3-bit address (to access 8 locations), a data-in bus, a clock, a reset signal, and a write enable signal. The module outputs data-out when in read mode, i.e., when the write enable is off. The output is synchronous/clocked.

The ROM module (rom.v) allows predetermined 4-bit data to be read from 8 registers. The data is set arbitrarily in the code. Upon receiving a change in address signal, data-out outputs the value stored at that address (asynchronous).
