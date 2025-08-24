`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2025 12:35:47
// Design Name: 
// Module Name: neural_net_tb
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


module neural_net_tb;


    localparam no_of_layers = 3; 
    localparam int layer_array [0:no_of_layers-1] = '{784,20,10};
    localparam dWidth = 16;
    
    //reg [12543:0] in_x [0:0]; //[0:0];
    reg [layer_array[0]*dWidth-1:0] in_x [99:0];
    reg clk;
    reg first_val;
    integer index;
    wire [3:0] y;
    wire done_outs [no_of_layers-2:0];
    wire [dWidth-1:0] feeder_buses [no_of_layers - 2:0];
    //wire [2*dWidth-1:0] mul_out [no_of_layers-2:0][3:0];
    wire [2*dWidth-1:0] sum_out [no_of_layers-2:0][19:0];
    wire [dWidth-1:0] weight_out [no_of_layers-2:0][19:0];
    wire freeze_out [no_of_layers-2:0];
    wire [layer_array[0]*dWidth-1:0] in; 
    wire [layer_array[0]*dWidth-1:0] f; 
    
    
    assign in = in_x[index];
    





    initial begin
        $readmemb("Batch_19_vals.mif", in_x);
    end
   
    neural_net #( .number_of_layers(no_of_layers), .array(layer_array), .dataWidth(dWidth), .frac_bits(11)) test
    (
    .in(in),
    .clk(clk),
    .first(first_val),
    .result(y),
    .d_outs(done_outs),
    .feed_buses(feeder_buses),
    .weight_out(weight_out),
    //.mul_out(mul_out),
    .sum_out(sum_out),
    .freeze_out(freeze_out),
    .f_layer(f)
    );
    
    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin
        index = 0;
        first_val=1;
        #20;
        first_val=0;
        #8020;
        index=1;
        #8020;
        index=2;
        #8020;
        index=3;
        #8020;
        index=4;
        #8020;
        index=5;
        #8020;
        index=6;
        #8020;
        index=7;
        #8020;
        index=8;
        #8020;
        index=9;
        #10000;
        $stop;
    end

endmodule
