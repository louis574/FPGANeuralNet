`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 16:32:29
// Design Name: 
// Module Name: first_layer
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


module first_layer #(parameter weightNo = 784, dataWidth = 16)(
    input clk,
    input done_in,
    input first,
    input [weightNo*dataWidth - 1:0] in,
    output reg [weightNo*dataWidth - 1:0] out,
    output wire [weightNo*dataWidth - 1:0] f_layer  
    
    );
    
    assign f_layer = out;
    reg standby;
    reg done_in_d;
    
    initial begin
        standby = 1;
    end
    
    always @(posedge clk) begin
    
        done_in_d <= done_in;
        if((done_in | first) & standby) begin
            standby <= 0;
            out <= in;    
        end
        
        if(done_in_d & ~done_in) begin
            standby <= 1;
        end
        
    end
endmodule
