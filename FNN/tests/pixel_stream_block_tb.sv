`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 17:42:39
// Design Name: 
// Module Name: pixel_stream_block_tb
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


module pixel_stream_block_tb;

reg clk;
reg HSYNC = 0;
reg VSYNC = 0;
reg [15:0] data_in = 16'h1111;

wire done_out;
wire freeze_r;
wire pause_r;
wire [15:0] data_out;

pixel_stream_block t (
.clk(clk),
.HSYNC(HSYNC),
.VSYNC(VSYNC),
.data_in(data_in),
.done_out(done_out),
.pause_r(pause_r),
.freeze_r(freeze_r),
.data_out(data_out)

);



initial begin
    clk = 1;
    forever #5 clk = ~clk;
end

initial begin
    #50;
    VSYNC = 1;
    #20;
    HSYNC = 1;
    #10;
    data_in = 16'hAAAA;
    #10;
    data_in = 16'hFFFF;
    #20;
    HSYNC = 0;
    #20;
    HSYNC = 1;
    #50;
    HSYNC = 0;
    #20;
    VSYNC = 0;
    #50;
    $finish;

end

endmodule
