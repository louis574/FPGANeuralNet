`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 17:02:08
// Design Name: 
// Module Name: pixel_stream_block
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


module pixel_stream_block #(parameter image_width=18, image_height=18, data_width = 16)
(input clk,
input HSYNC,
input VSYNC,
input [data_width - 1:0] data_in,
output reg done_out,
output reg pause_r,
output reg freeze_r,
output reg [data_width-1:0] data_out
    );
   
reg state = 0;

always @(posedge clk)begin
    data_out <= data_in;
end
  
initial begin
    done_out = 0;
end      
    
always @(posedge clk) begin
    if(VSYNC) begin
        state <= 1;
        done_out<=0;
    end
    
    freeze_r <= ~VSYNC;
    pause_r <= ~HSYNC;
    
    if(state & ~VSYNC) begin
        done_out <= 1;
        state <= 0;
    end
end
    
    



endmodule
