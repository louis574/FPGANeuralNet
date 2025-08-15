`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 17:26:50
// Design Name: 
// Module Name: last_layer
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

module output_layer #(parameter weightNo = 10, dataWidth = 16)(
    input clk,
    input done_in,
    input [weightNo*2*dataWidth - 1:0] in,
    output reg [3:0] out
    );
    reg standby = 1;
    reg [3:0] largest;
    int i;
    always @(*) begin
        largest = {2*dataWidth{1'b0}};
        for(i = 0; i<weightNo; i = i+1) begin
            if ($signed(in[i*2*dataWidth  +: 2*dataWidth]) > $signed(in[largest*2*dataWidth +: 2*dataWidth])) begin
                largest = i;
            end 
        end
    end
    always @(posedge clk) begin
        if(standby & done_in) begin
            out <= largest;
            standby <= 0;
        end
        
        if(~done_in) begin
            standby <=1;
        end
    end
    
    
endmodule
