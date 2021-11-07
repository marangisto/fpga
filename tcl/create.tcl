# Create project
create_project main ./_vivado -part xc7a50ticsg324-1L -force

# Set project properties
set_property board_part digilentinc.com:nexys-a7-50t:part0:1.0 [current_project]
set_property platform.board_id nexys-a7-50t [current_project]
set_property target_language Verilog [current_project]
set_property enable_vhdl_2008 1 [current_project]

# Add source files
add_files -norecurse -fileset [get_filesets sources_1] [glob src/*.v]
add_files -norecurse -fileset [get_filesets constrs_1] [glob src/*.xdc]
