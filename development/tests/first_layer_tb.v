`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:45:28
// Design Name: 
// Module Name: first_layer_tb
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


module first_layer_tb;

    localparam weightNo = 10;
    localparam dataWidth = 16;
    
    reg clk;
    reg first;
    reg go_in_r;
    reg [weightNo*dataWidth - 1:0] in;
    wire [weightNo*dataWidth - 1:0] out;
    wire go_out_r;

    first_layer #(.weightNo(weightNo), .dataWidth(dataWidth)) test
    (
    .first(first), .clk(clk), .go_in_r(go_in_r), .in(in), .out(out), .go_out_r(go_out_r)
    );
    
    initial begin
    clk = 0;
    forever #10 clk = ~clk;
    end
    
    initial begin
    in = {weightNo{16'hEFEF}};
    go_in_r = 0;
    #50;
    first = 1;
    #50;
    in = {weightNo{16'hEEEE}};
    #20;
    go_in_r = 1;
    #50;
    $finish;
    end
    
endmodule
