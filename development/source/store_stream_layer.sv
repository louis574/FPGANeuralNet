`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 21:32:51
// Design Name: 
// Module Name: store_stream_layer
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


module store_stream_layer #(parameter dataWidth = 16, neuron_no = 20)(
    input [dataWidth*neuron_no-1:0] in,
    input done,
    input clk,
    output reg [dataWidth*neuron_no-1:0] out
    );
    
    reg reset = 0;
    
    always @(posedge clk) begin
        if(done & ~reset) begin
            out <= in;
            reset <=1;
        end
        else if(reset) begin
            reset <= 0;
        end
        
    
    end
    
    
endmodule
