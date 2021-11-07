###
#
#   Program FPGA board
#
#   use: vivado -mode batch -source ../tcl/upload.tcl -nolog -nojournal
#
###

open_project _vivado/main.xpr
open_hw_manager
connect_hw_server 
open_hw_target
current_hw_device [lindex [get_hw_devices] 0]
set_property PROGRAM.FILE {./_vivado/main.runs/impl_1/main.bit} [current_hw_device]
program_hw_devices [current_hw_device]
close_hw_manager
