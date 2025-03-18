`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2025 23:21:28
// Design Name: 
// Module Name: ALU_8_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU_8_bit (
    input [7:0] A,
    input [7:0] B,
    input [2:0] ALU_Sel,
    output reg [7:0] ALU_Out,
    output reg Zero
);
    
    always @(*) begin
        case (ALU_Sel)
            3'b000: ALU_Out = A + B; // Addition
            3'b001: ALU_Out = A - B; // Subtraction
            3'b010: ALU_Out = A & B; // AND
            3'b011: ALU_Out = A | B; // OR
            3'b100: ALU_Out = A ^ B; // XOR
            3'b101: ALU_Out = ~A;    // NOT
            3'b110: ALU_Out = A << 1; // Left Shift
            3'b111: ALU_Out = A >> 1; // Right Shift
            default: ALU_Out = 8'b0;
        endcase
        
        Zero = (ALU_Out == 8'b0) ? 1'b1 : 1'b0;
    end

endmodule

