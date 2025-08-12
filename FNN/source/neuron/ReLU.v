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


module ReLU #(parameter data_width = 16, frac_bits = 11)(
    input [2*data_width-frac_bits-1:0] in,
    output reg [data_width-1:0] out
    );
    
    always @(*) begin
        if (in[2*data_width-frac_bits-1] == 1) begin
            out = {data_width{1'b0}};
        end
        else begin
            if (!in[data_width*2-2-frac_bits:data_width-1]) begin //also includes msb of 16 bit as if you do 4000 + 4000 youll get 8000 which would be output as 8000 as the signed bit is not extended so we need to check this final bit aswell to test overflow
                out = in[data_width-1:0];
            end
            else begin
                out = {1'b0,{(data_width-1){1'b1}}};
            end
            
        end
    end
    
endmodule
