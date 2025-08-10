`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 12:19:42
// Design Name: 
// Module Name: master_controller_tb
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


module master_controller_tb;

    reg clk = 1;
    reg start = 0;
    wire [2:0] control;

    master_controller #(.max(5),.layer_no(4)) test
    (
        .clk(clk), .start(start),
        .control(control)
    );
    
    initial begin
        forever #5 clk = ~clk;
    end
    
    initial begin
        #20;
        start = 1;
        #500;
    end
endmodule
