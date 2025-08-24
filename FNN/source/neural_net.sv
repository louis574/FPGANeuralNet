`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 17:35:40
// Design Name: 
// Module Name: neural_net
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


module neural_net #(parameter number_of_layers = 3, int array [0:number_of_layers-1] = '{4,4,4}, dataWidth = 16, largest_width = 4, frac_bits = 11)
(
    input [array[0]*dataWidth-1:0] in,
    
    input clk,
    input first,
    output reg [3:0] result,
    output d_outs [number_of_layers-2:0],
    output [dataWidth-1:0] feed_buses [number_of_layers - 2:0],
    //output [2*dataWidth-1:0] mul_out [number_of_layers-2:0][9:0],
    output [2*dataWidth-1:0] sum_out [number_of_layers-2:0][19:0],
    output [dataWidth-1:0] weight_out [number_of_layers-2:0][19:0],
    output freeze_out [number_of_layers-2:0],
    output [array[0]*dataWidth-1:0] f_layer
    );
    
    genvar i;
    genvar x;
    wire done_outs [number_of_layers-2:0];
    wire freeze [number_of_layers-2:0];
    wire [dataWidth-1:0] feeder_buses [number_of_layers - 2:0];
    wire [2*dataWidth*array[number_of_layers-1]-1:0] unquantized_out;
    
    
    assign feed_buses = feeder_buses;
    assign freeze_out = freeze;
    assign d_outs = done_outs;
            //generate arrays with different widths
            
            
    generate
        for(x = 0; x < number_of_layers-1; x = x+1) begin : out_bus_layer
            wire [dataWidth*array[x]-1:0] out_bus;
        end
    endgenerate
    
    generate
        for( i = 0; i < number_of_layers-1; i = i + 1) begin : layers
            if(i == 0) begin
                first_layer #(.weightNo(array[i]), .dataWidth(dataWidth)) fl
                 (.clk(clk), .done_in(done_outs[1]), .first(first), .in(in), .out(out_bus_layer[i].out_bus), .f_layer(f_layer)
                 );
                 
                 
                async_sel_block #( .weight_n(array[i]), .data_width(dataWidth)) sel 
                (
                .done_in(done_outs[1]|first), .clk(clk), .data_in(out_bus_layer[i].out_bus),
                .done_out(done_outs[i]), .freeze_r(freeze[i]),
                .data_out(feeder_buses[i])        
                );
            end
           
            else begin
                layer #(.layerNo(i-1), .numWeight(array[i-1]), .neuron_number(array[i]), .dataWidth(dataWidth), .frac_bits(frac_bits)) layer
                (
                .clk(clk), 
                .freeze(freeze[i-1]),
                 .myinput(feeder_buses[i-1]), 
                 .out(out_bus_layer[i].out_bus), 
                 //.mul_out(mul_out[i-1]),
                 .sum_out(sum_out[i-1]), 
                 .weight_out(weight_out[i-1])
                );            
            

                async_sel_block #( .weight_n(array[i]), .data_width(dataWidth)) sel 
                (
                .done_in(done_outs[i-1]), .clk(clk), .data_in(out_bus_layer[i].out_bus),
                .done_out(done_outs[i]), .freeze_r(freeze[i]),
                .data_out(feeder_buses[i])        
                );
            
            end
            
                
            
            
        end
        
        
        final_neuron_layer #(.layerNo(number_of_layers-2), .numWeight(array[number_of_layers-2]), .neuron_number(array[number_of_layers-1]), .dataWidth(dataWidth)) layer
        (
        .clk(clk), .freeze(freeze[number_of_layers-2]), .myinput(feeder_buses[number_of_layers-2]), .out(unquantized_out),
         //.mul_out(mul_out[number_of_layers-2]),
         .sum_out(sum_out[number_of_layers-2]),
          .weight_out(weight_out[number_of_layers-2])
        );         
        
        output_layer #(.weightNo(array[number_of_layers-1]), .dataWidth(dataWidth)) ll
        (.clk(clk), .done_in(done_outs[number_of_layers-2]), .in(unquantized_out), .out(result)
        );
    endgenerate
endmodule
