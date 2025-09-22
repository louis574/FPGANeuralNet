`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 18:38:46
// Design Name: 
// Module Name: stream_layer
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


module stream_layer #(parameter layerNo = 0, numWeight = 784,neuron_number = 10, dataWidth = 16, frac_bits = 11)(
    input           clk,
    input           freeze,
    input pause,
    input [dataWidth-1:0]    myinput,
    output wire [neuron_number*dataWidth-1:0]    out
    //output [2*dataWidth-1:0] mul_out [9:0],
    //output [2*dataWidth-1:0] sum_out [19:0],
    //output [dataWidth-1:0] weight_out [19:0]
);

    
    
    genvar i;
    
    generate
        for(i = 0; i < neuron_number; i = i + 1) begin : neurons
            first_neuron #(.layerNo(layerNo), .neuronNo(i), .dataWidth(dataWidth), .numWeight(numWeight), .frac_bits(frac_bits)) n 
            (
            .clk(clk),.pause(pause), .freeze(freeze), .myinput(myinput), .out_n(out[dataWidth*i + dataWidth - 1 : dataWidth*i])
             //.mul_out(mul_out[i]), 
             //.weight_out(weight_out[i]), 
             //.sum_out(sum_out[i])
            );
        end    
    endgenerate


endmodule
