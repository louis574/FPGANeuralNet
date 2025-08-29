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
    localparam no_of_layers = 5; 
    localparam int layer_array [0:no_of_layers-1] = '{4096,30,30,30,2};
    localparam dWidth = 12;
    localparam frac_width = 9;
    
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
    wire [layer_array[1]*dWidth-1:0] stream_layer_store;
    
    
    assign in = in_x[example][i*dWidth+:dWidth]; //this is how you clip with parameters

    





    initial begin
        $readmemb("0_Batch_4_vals.mif", in_x);
    end
   
    stream_neural_net #( .number_of_layers(no_of_layers), .array(layer_array), .dataWidth(dWidth), .frac_bits(frac_width)) test
    (
    .in(in),
    //.stream_layer_store(stream_layer_store),
    .clk(clk),
    .HSYNC(HSYNC),
    .VSYNC(VSYNC),
    .result(y)
    //.d_outs(done_outs),
    //.feed_buses(feeder_buses),
    //.weight_out(weight_out),
    //.mul_out(mul_out),
    //.sum_out(sum_out),
    //.freeze_out(freeze_out)
    );
    
    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end
    
    initial begin
    
        for(int e = 0; e < 10; e=e+1) begin        


                VSYNC=1;
                example=e;
                #30;
 
            
                for (int l = 0; l < 64; l = l+1) begin
                    HSYNC = 1;
                    for(int x = 0; x < 64; x= x+1) begin
                        i = x+l*64;
                        #10;
                    end
                    //
                    HSYNC=0;
                    #40;
                end
                
                VSYNC=0;
                #10;
                
            end
                
                
                
                
                
                #100000;
                
                
                
                
                
 

        

        
        
        
        

    end

endmodule
