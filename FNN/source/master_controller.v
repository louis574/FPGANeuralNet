`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.08.2025 12:07:12
// Design Name: 
// Module Name: master_controller
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


module master_controller #(parameter max=10, layer_no = 4)(
    input start,
    input clk,
    output reg [layer_no-1:0] control
    );
    
    localparam x_w = $clog2(max);
    
    reg [x_w-1:0] x = 0;
    
    initial begin
        control = {(layer_no){1'b0}};
    end
    
    always @(posedge clk) begin
        if(start) begin
            if(x==max-1)begin
                x <= 0;
                control <= {{~control[layer_no-1]},control[layer_no-1:1]};
            end
            else begin
                x <= x+1;
            end
        end
    end
endmodule
