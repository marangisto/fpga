# fpga
FPGA Example Projects

## Toolchain Installation

My first FPGA development board ia the NEXYS A7 50T from Digilent. To get started the Xilinx toolchain, called Vivado, has to be installed:  

https://www.xilinx.com/support/download.html

The board is not recognized by this distribution so the installation needs to be updated by adding the board files from Digilent. The files and instructions can be found here:

https://digilent.com/reference/programmable-logic/guides/installing-vivado-and-sdk

We will also need the constraint file templates for the board. These can be downloaded here and placed somewhere for future reference:

https://github.com/Digilent/digilent-xdc/archive/master.zip?_ga=2.114820295.156699094.1632468635-1321010191.1631887614

Finally, when trying to connect to your device you may find that you need to install or tweak your drivers. In my case I read this post and hand-installed the Digilent Adept drivers found under the Xilinx directory:

https://www.xilinx.com/support/answers/59128.html?_ga=2.256441865.307985857.1632484317-2069869458.1632484317

## Project Creation

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

Open the source file add your Verilog code. Then you can run *RTL Analysis -> Open Elaborated Design* to see a depiction of your circuit.

## Constraint File

Use the same *File -> Add Sources* option but this time with *Add or create constraints*. We are not going to create this from scratch but rather use a template that came with the board. Use *Add Files*, navigate and select the relevant *master* file and check the *Copy constraints files into project* box before hitting *Finish*.

Edit the constraint file and modify the pin assignments to map the names used in your design, e.g. to send a signal named *O* to LED-1, change `LED[1]` to `O` in the relevant `get_ports {..}` expression.

## Bitstream Generation

We are now ready to generate the bitstream: *Generate Bitstream*, wait for completion and then *Open Hardware Manager*. If no target is open: *Open Target -> Auto Connect*.
