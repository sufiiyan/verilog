# Verilog 

This repo contains basic code snippets of verilog, which is a hardware description language(HDL) used to model electronic systems. 

## Compile and Run the code
The following code is to compile main file and test bench file.

```
iverilog -o <output name> <main file> <testbench file>
vvp <output name> 
```
After running the above code you will able to see vvp output

For GTK wave
``` 
gtkwave <output vcd file>
```
