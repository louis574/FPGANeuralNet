`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 21:48:51
// Design Name: 
// Module Name: stream_neural_net_tb
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


module stream_neural_net_tb;
    localparam no_of_layers = 3; 
    localparam int layer_array [0:no_of_layers-1] = '{784,20,10};
    localparam dWidth = 16;
    
    //reg [12543:0] in_x [0:0]; //[0:0];
    reg [layer_array[0]*dWidth-1:0] in_x [9:0];
    reg clk;
    reg VSYNC;
    reg HSYNC;
    integer example;
    integer i = 0;
    wire [3:0] y;
    wire done_outs [no_of_layers-2:0];
    wire [dWidth-1:0] feeder_buses [no_of_layers - 2:0];
    //wire [2*dWidth-1:0] mul_out [no_of_layers-2:0][3:0];
    wire [2*dWidth-1:0] sum_out [no_of_layers-2:0][19:0];
    wire [dWidth-1:0] weight_out [no_of_layers-2:0][19:0];
    wire freeze_out [no_of_layers-2:0];
    wire [dWidth-1:0] in; 
    
    
    assign in = in_x[example][i*dWidth+:dWidth]; //this is how you clip with parameters

    





    initial begin
        $readmemb("Batch_0_vals.mif", in_x);
    end
   
    stream_neural_net #( .number_of_layers(no_of_layers), .array(layer_array), .dataWidth(dWidth), .frac_bits(11)) test
    (
    .in(in),
    .clk(clk),
    .HSYNC(HSYNC),
    .VSYNC(VSYNC),
    .result(y),
    .d_outs(done_outs),
    .feed_buses(feeder_buses),
    .weight_out(weight_out),
    //.mul_out(mul_out),
    .sum_out(sum_out),
    .freeze_out(freeze_out)
    );
    
    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin        
        
            example = 5;
            VSYNC=1;
            #50;
    
            
            for (int l = 0; l < 18; l = l+1) begin
                HSYNC = 1;
                for(int x = 0; x < 18; x= x+1) begin
                    i = x+l*18;
                    #10;
                end
                //
                //HSYNC=0;
                //#40;
            end
            VSYNC=0;
            #30;
        

        
        
        
        

    end

endmodule
