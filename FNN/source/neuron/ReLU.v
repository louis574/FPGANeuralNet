`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 22:23:44
// Design Name: 
// Module Name: ReLU
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


module ReLU #(parameter data_width = 16)(
    input [data_width*2-1:0] in,
    output reg [data_width-1:0] out
    );
    
    always @(*) begin
        if (in[data_width*2-1] == 1) begin
            out = {data_width{1'b0}};
        end
        else begin
            if (!in[data_width*2-2:data_width]) begin
                out = in[data_width-1:0];
            end
            else begin
                out = {data_width{1'b1}};
            end
            
        end
    end
    
endmodule
