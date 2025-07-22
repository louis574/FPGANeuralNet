`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.07.2025 19:23:25
// Design Name: 
// Module Name: neuron
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
///////////////////////////////////////////////////////////////////////////


module neuron #(parameter num_weight = 3, neuron_no = 5, layer_no = 1, address_width = 10, data_width = 16, weight_file = "../../../../weights/weight_test.mif")
(
    );

weight_mem #(.num_weight(num_weight), .neuron_no(neuron_no), .layer_no(layer_no), .address_width(address_width), .data_width(data_width), .weight_file(weight_file)) n
 ( .clk(clk),
.r_en(r_en),
.r_add(r_add),
.w_out(w_out));
    
endmodule
