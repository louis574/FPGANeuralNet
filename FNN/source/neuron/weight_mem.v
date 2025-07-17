`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.07.2025 13:23:01
// Design Name: 
// Module Name: weight_mem
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


module weight_mem #(parameter num_weight = 3, neuron_no=5, //parameters
    layer_no = 1, address_width=10,
    data_width = 16, weight_file = "../../../../weights/weight_test.mif" //need to put full path for weight file!!!
    )
    //inputs-outputs
    //dual port can read and write at same time
    (
    input clk,
    input r_en,
    input [address_width-1:0] r_add,
    output reg [data_width-1:0] w_out
    );
    
    reg [data_width-1:0] w_mem [num_weight-1:0];
    
    initial begin
        $readmemb(weight_file, w_mem);
    end
     
     always @(posedge clk) begin
        if(r_en) begin
            w_out <= w_mem[r_add];
        end
     end
    
endmodule
