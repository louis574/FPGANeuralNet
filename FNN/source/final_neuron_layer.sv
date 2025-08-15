`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 23:15:05
// Design Name: 
// Module Name: final_neuron_layer
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


module final_neuron_layer #(parameter layerNo = 0, numWeight = 784,neuron_number = 10, dataWidth = 16)(
    input           clk,
    input           freeze,
    input [dataWidth-1:0]    myinput,
    output wire [2*neuron_number*dataWidth-1:0]    out,
    output wire [2*dataWidth-1:0] sum_out [19:0],
    output wire [dataWidth-1:0] weight_out [19:0] 
);

    genvar i;
    
    generate
        for(i = 0; i < neuron_number; i = i + 1) begin : neurons
            neuron_no_ReLU #(.layerNo(layerNo), .neuronNo(i), .dataWidth(dataWidth), .numWeight(numWeight)) n 
            (
            .clk(clk), .freeze(freeze), .myinput(myinput), .out_n(out[dataWidth*2*i + 2*dataWidth - 1 : 2*dataWidth*i]), .sum_out(sum_out[i]), .weight_out(weight_out[i])
            );
        end    
    endgenerate

endmodule
