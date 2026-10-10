# Timing constraints for the combinational adder comparison.
# Use this SAME file for ripple_carry_adder, tree_adder, and behavioral_adder
# at WIDTH = 8, 16, 32, and optionally 64.
# Enable for both synthesis and implementation.
# Do not enable a second copy of these virtual-clock constraints.
#
# Experimental timing assumptions:
#   Virtual clock period: 10 ns, equivalent to a 100 MHz timing reference.
#   External input/output delays: 0 ns, for this standalone comparison.
# A virtual clock does not add a clock port, registers, or clock circuitry.
# The 10 ns period is a timing target, not the measured adder delay.
# This 10ns period was chosen because it matches the clock period of the basys-3 board
#
# This file covers timing only.
# Keep the device, I/O assumptions, implementation settings, and power
# assumptions consistent across experiments.

create_clock -name virtual_clk -period 10.000

set_input_delay  -clock [get_clocks virtual_clk] -max 0.000 [all_inputs]
set_input_delay  -clock [get_clocks virtual_clk] -min 0.000 [all_inputs]
set_output_delay -clock [get_clocks virtual_clk] -max 0.000 [all_outputs]
set_output_delay -clock [get_clocks virtual_clk] -min 0.000 [all_outputs]

# These constraints ignore timing overhead outside the FPGA.
# Zero input delays model inputs arriving at the virtual clock edge,
# with no delay from an external source device or board wiring.
# Zero output delays reserve no time for external board wiring or
# a receiving device's setup/hold requirements.
#
# Vivado still includes delays through the FPGA's input/output buffers,
# adder logic, and internal routing. With a 10 ns virtual clock and
# zero external delays, the nominal input-to-output timing budget is 10 ns.
#
# For a real external interface, replace these zeros with values based
# on board delays and the source and receiving devices' timing requirements and that would reduce the timing budget.
