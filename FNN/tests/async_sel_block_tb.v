`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 13:41:51
// Design Name: 
// Module Name: async_sel_block_tb
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


module async_sel_block_tb;
    localparam num_weight = 8;
    localparam data_width = 4;
    
    reg clk;
    reg [num_weight*data_width - 1: 0] d_in;
    reg go_in_l;
    reg go_in_r;
    wire freeze;
    wire go_out_r;
    wire go_out_l;
    wire [data_width-1:0] d_out;
    
    
    async_sel_block #(.weight_n(num_weight), .data_width(data_width)) test
    (.go_in_l(go_in_l),.go_in_r(go_in_r),.go_out_l(go_out_l), .go_out_r(go_out_r), .clk(clk), .data_in(d_in), .data_out(d_out), .freeze_r(freeze));
    
    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin
        d_in = 32'hECA86420;
        go_in_l = 0;
        go_in_r = 0;
        #20;
        go_in_l = 1;
        #10;
        go_in_l = 0;
        #100;
        go_in_l = 1;
        go_in_r = 1;
        #10;
        go_in_l = 0;
        go_in_r = 0;
        #20;
        go_in_l = 1;
        go_in_r = 1;
        #10;
        go_in_l = 0;
        go_in_r = 0;
        #100;
        $finish;
    end

endmodule
