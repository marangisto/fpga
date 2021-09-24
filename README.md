# fpga
FPGA Example Projects

My first FPGA development board ia the NEXYS A7 50T from Digilent. To get started the Xilinx toolchain, called Vivado, has to be installed:  

https://www.xilinx.com/support/download.html

The board is not recognized by this distribution so the installation needs to be updated by adding the board files from Digilent. The files and instructions can be found here:

https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk

We can now create a new project using the Vivado IDE:

  Create Project -> Next ->
    choose project name and directory
    Next -> RTL Project -> Next -> Next -> Next -> Boards ->
    choose the correct board
    Next -> Finish
     
We now have an empty skeleton project.

