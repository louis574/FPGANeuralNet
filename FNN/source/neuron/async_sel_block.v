`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2025 00:45:41
// Design Name: 
// Module Name: async_sel_block
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


module async_sel_block #(parameter weight_n = 5, data_width = 16)
(input go_in_l,
input go_in_r,
input clk,
input [data_width * weight_n - 1:0] data_in,
output reg go_out_l,
output reg go_out_r,
output reg freeze_r,
output [data_width-1:0] data_out
    );
    
    parameter addressWidth = $clog2(weight_n);
    
    reg [1:0] state = 0; //0 = start, 1 = freeze, 2 = multiply
    reg [addressWidth-1:0] address = 0;
    
    assign data_out = data_in[data_width*address +: data_width];
    
    initial begin
        go_out_l = 0;
        go_out_r = 0;
        freeze_r = 1;
    end
    
    always @(posedge clk) begin
        if(go_in_l & (state == 0)) begin
            state <= 2;
            address <= {addressWidth{1'b0}};
            go_out_l <= 0;
            go_out_r <= 0;
            freeze_r <= 0;
        end
        
        if(go_in_l & go_in_r & (state == 1)) begin
            state <= 2;
            address <= {addressWidth{1'b0}};
            go_out_l <= 0;
            go_out_r <= 0;
            freeze_r <= 0;
        end
        
        
        if ((state == 2) & (address < weight_n - 1)) begin // dont use while block - clock makes iteration anyway
            address <= address + 1;
        end
        
        if ((state == 2) & (address == weight_n - 1)) begin
            state <= 1;
            go_out_l <= 1;
            go_out_r <= 1;
            freeze_r <= 1;
        end
    end
endmodule
