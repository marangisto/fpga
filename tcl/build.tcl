# Open the project
open_project _vivado/main.xpr

# Run synthesis and report
reset_run synth_1
launch_runs synth_1
wait_on_run synth_1
open_run synth_1
report_timing_summary

# Run implementation and report
launch_runs impl_1
wait_on_run impl_1
open_run impl_1
report_utilization

# Generate bit-stream
launch_runs impl_1 -to_step write_bitstream
wait_on_run impl_1
