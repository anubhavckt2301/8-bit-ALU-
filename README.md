8-bit inputs A and B

Supports the following operations:

Addition

Subtraction

AND

OR

XOR

NOT (on A)

Left Shift (on A)

Right Shift (on A)

Zero flag output to indicate if the result is zero

Files

ALU_8bit.v - Verilog module for the 8-bit ALU

ALU_8bit_tb.v - Testbench to verify the functionality of the ALU



### Test Cases

The testbench covers the following scenarios:

Addition of two numbers

Subtraction resulting in zero

Logical AND, OR, and XOR

NOT operation on input A

Left and Right shifts on input A

### Example Output

A=00001111, B=00000001, ALU_Sel=000, ALU_Out=00010000, Zero=0
A=00001111, B=00001111, ALU_Sel=001, ALU_Out=00000000, Zero=1

## Author

## Anubhav Rai
