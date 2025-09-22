`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 23:02:36
// Design Name: 
// Module Name: last_layer_tb
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


module last_layer_tb;
    localparam dataWidth = 16;
    localparam weightNo = 4;
    
    reg clk;
    reg go_in_l;
    reg [weightNo*dataWidth - 1:0] in;
    wire [3:0] out;
    
    last_layer #(.dataWidth(dataWidth), .weightNo(weightNo)) test
    (.clk(clk), .go_in_l(go_in_l), .in(in), .out(out)
    );
    
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        in = 64'h000000007FFF0000;
        go_in_l = 1;
        #50;  
        go_in_l = 0;
        in = 64'h0000000000000001;
        #30;
        in = 64'h0200000000000000;
        go_in_l = 1;
        #20;  
    $finish;
    end
    


    
endmodule
