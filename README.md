# fpga
FPGA Example Projects

My first FPGA development board ia the NEXYS A7 50T from Digilent. To get started the Xilinx toolchain, called Vivado, has to be installed:  

https://www.xilinx.com/support/download.html

The board is not recognized by this distribution so the installation needs to be updated by adding the board files from Digilent. The files and instructions can be found here:

https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk

We can now create a new project using the Vivado IDE:

* Create Project -> Next ->
* _choose project name and directory_
* Next -> RTL Project -> Next -> Next -> Next -> Boards ->
* _choose the correct board_
* Next -> Finish

Next we add sources:

* File -> Add Sources ->
* Add or creadte design sources -> Create File
* _Choose Verilog file type and a name_
* Ok -> Finish -> Ok



