`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 18:41:53
// Design Name: 
// Module Name: stream_neural_net
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


module stream_neural_net #(parameter number_of_layers = 3, int array [0:number_of_layers-1] = '{784,20,10}, dataWidth = 8, largest_width = 4, frac_bits = 7)
(
    input [dataWidth-1:0] in,
    
    input clk,
    input VSYNC,
    input HSYNC,
    output reg [3:0] result
    //output d_outs [number_of_layers-2:0],
    //output [dataWidth-1:0] feed_buses [number_of_layers - 2:0],
    //output [2*dataWidth-1:0] mul_out [number_of_layers-2:0][9:0],
    //output [2*dataWidth-1:0] sum_out [number_of_layers-2:0][19:0],
    //output [dataWidth-1:0] weight_out [number_of_layers-2:0][19:0],
    //output freeze_out [number_of_layers-2:0],
    //output [array[0]*dataWidth-1:0] f_layer,
    //output [array[1]*dataWidth-1:0] stream_layer_store
    );
    
    genvar i;
    genvar x;
    wire done_outs [number_of_layers-2:0];
    wire freeze [number_of_layers-2:0];
    wire [dataWidth-1:0] feeder_buses [number_of_layers - 2:0];
    wire [2*dataWidth*array[number_of_layers-1]-1:0] unquantized_out;
    wire pause;
    wire [dataWidth*array[1]-1:0] stream_layer;
    wire b_clk;

    
    
    //assign feed_buses = feeder_buses;
    //assign freeze_out = freeze;
    //assign d_outs = done_outs;
    //assign stream_layer_store = out_bus_layer[0].out_bus;
            //generate arrays with different widths
            
    BUFG bufg_inst (
    .I(clk),
    .O(b_clk)
    ); 
    
             
    generate
        for(x = 0; x < number_of_layers-2; x = x+1) begin : out_bus_layer
            wire [dataWidth*array[x+1]-1:0] out_bus;
        end
    endgenerate
    
    
    generate
        for( i = 0; i < number_of_layers-1; i = i + 1) begin : layers
            if(i == 0) begin
                pixel_stream_block #(.data_width(dataWidth)) stream 
                (
                .HSYNC(HSYNC), .VSYNC(VSYNC), .clk(b_clk), .data_in(in),
                .done_out(done_outs[i]), .freeze_r(freeze[i]), .pause_r(pause),
                .data_out(feeder_buses[i]) //add remaining block then add stream layer in correctly
                );  
            end
            else if(i==1) begin
                stream_layer #(.layerNo(i-1), .numWeight(array[i-1]), .neuron_number(array[i]), .dataWidth(dataWidth), .frac_bits(frac_bits)) layer
                (
                .clk(b_clk), 
                .freeze(freeze[i-1]),
                .pause(pause),
                 .myinput(feeder_buses[i-1]), 
                 .out(stream_layer) 
                 //.mul_out(mul_out[i-1]),
                 //.sum_out(sum_out[i-1]), 
                 //.weight_out(weight_out[i-1])
                );
                
                store_stream_layer #(.dataWidth(dataWidth), .neuron_no(array[1])) store (                    
                .clk(b_clk),
                .done(done_outs[i-1]),
                .in(stream_layer),
                .out(out_bus_layer[i-1].out_bus)                
                );
                
                async_sel_block #( .weight_n(array[i]), .data_width(dataWidth)) sel 
                (
                .done_in(done_outs[i-1]), .clk(b_clk), .data_in(out_bus_layer[i-1].out_bus),
                .done_out(done_outs[i]), .freeze_r(freeze[i]),
                .data_out(feeder_buses[i])        
                );
            end
           
            else begin
                layer #(.layerNo(i-1), .numWeight(array[i-1]), .neuron_number(array[i]), .dataWidth(dataWidth), .frac_bits(frac_bits)) layer
                (
                .clk(b_clk), 
                .freeze(freeze[i-1]),
                 .myinput(feeder_buses[i-1]), 
                 .out(out_bus_layer[i-1].out_bus) 
                 //.mul_out(mul_out[i-1]),
                 //.sum_out(sum_out[i-1]), 
                 //.weight_out(weight_out[i-1])
                );            
            

                async_sel_block #( .weight_n(array[i]), .data_width(dataWidth)) sel 
                (
                .done_in(done_outs[i-1]), .clk(b_clk), .data_in(out_bus_layer[i-1].out_bus),
                .done_out(done_outs[i]), .freeze_r(freeze[i]),
                .data_out(feeder_buses[i])        
                );
            
            end
            
                
            
            
        end
        
        
        final_neuron_layer #(.layerNo(number_of_layers-2), .numWeight(array[number_of_layers-2]), .neuron_number(array[number_of_layers-1]), .dataWidth(dataWidth)) layer
        (
        .clk(b_clk), .freeze(freeze[number_of_layers-2]), .myinput(feeder_buses[number_of_layers-2]), .out(unquantized_out)
         //.mul_out(mul_out[number_of_layers-2]),
         //.sum_out(sum_out[number_of_layers-2]),
          //.weight_out(weight_out[number_of_layers-2])
        );         
        
        output_layer #(.weightNo(array[number_of_layers-1]), .dataWidth(dataWidth)) ll
        (.clk(b_clk), .done_in(done_outs[number_of_layers-2]), .in(unquantized_out), .out(result)
        );
    endgenerate
endmodule
