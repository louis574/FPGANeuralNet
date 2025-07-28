`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 22:36:48
// Design Name: 
// Module Name: ReLU_tb
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


module ReLU_tb;
    localparam d_width = 4;
    
    reg [2*d_width-1:0]in;
    wire [d_width-1:0]out;
    
    ReLU #(.data_width(d_width)) test
    (.in(in),
    .out(out)
    );

    initial begin 
        in = 8'b10000000;
        #10;
        in = 8'b00010000;
        #10;
        in = 8'b00000010;
        #10;
        $finish;
        
    end


endmodule
