`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 22:07:59
// Design Name: 
// Module Name: weight_mem_tb
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


module weight_mem_tb;

    //change params:
    localparam num_weight = 3;
    localparam address_width = 2;
    localparam data_width = 16;
    
    reg clk = 0;
    reg r_en = 0;
    reg [address_width-1:0] r_add = 0;
    wire [data_width-1:0] w_out;
    
    weight_mem #(.weight_file(`w_file), .address_width(address_width))
    test
    ( .r_en(r_en), .r_add(r_add), .w_out(w_out));
    
    initial begin
        forever #5 clk = ~clk;
    end
    
    initial begin
        r_en = 1;
        #14;
        r_add = 2'b00;
        #10;
        r_add = 2'b01;
        #10;
        r_add = 2'b10;
        #10;
        r_add = 2'b0;
        #10;
        r_en = 1;
        #10;
        $finish;
    end
    
endmodule
