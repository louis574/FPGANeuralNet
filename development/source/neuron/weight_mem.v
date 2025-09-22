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
    data_width = 16, weight_file = "" //need to put full path for weight file!!!
    )
    //inputs-outputs
    //dual port can read and write at same time
    (
    input [address_width-1:0] r_add,
    output reg [data_width-1:0] w_out
    );
    
    reg [data_width-1:0] w_mem [num_weight-1:0];
    
    //initial begin
        //$display("Neuron layer %0d neuron %0d loading weights from: %s", layer_no, neuron_no, weight_file);
    //end
    
    initial begin
        $readmemh(weight_file, w_mem);
        #10;
        $display("Neuron layer %0d neuron %0d loading weights from: %s", layer_no, neuron_no, weight_file);
        $display("w_mem[0]=%h w_mem[1]=%h w_mem[2]=%h w_mem[3]=%h", w_mem[0], w_mem[1], w_mem[2], w_mem[3]);
        //$display("r_add=%0d, w_out=%h, w_reg=%h, mul=%h", r_add, w_out, w_reg, mul);
    end
     
     always @(*) begin
        w_out = w_mem[r_add];
     end
     
    
endmodule
