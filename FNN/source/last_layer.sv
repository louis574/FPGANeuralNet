`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 17:26:50
// Design Name: 
// Module Name: last_layer
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

module output_layer #(parameter weightNo = 10, dataWidth = 16)(
    input clk,
    input done_in,
    input [weightNo*2*dataWidth - 1:0] in,
    output reg [3:0] out
    );
    
    reg standby = 1;
    
    //reg [3:0] largest_1;
    //reg [3:0] largest_2;
    //integer i;
    //integer x;
    //always @(*) begin
    //    largest_1 = 4'b0000;
    //    largest_2 = 4'b0101;
    //    for(i = 1; i<weightNo/2; i = i+1) begin
    //        if ($signed(in[i*2*dataWidth  +: 2*dataWidth]) > $signed(in[largest_1*2*dataWidth +: 2*dataWidth])) begin
    //            largest_1 = i;
    //        end 
    //    end
    //    for(x = weightNo/2+1; x<weightNo; x = x+1) begin
    //        if ($signed(in[x*2*dataWidth  +: 2*dataWidth]) > $signed(in[largest_2*2*dataWidth +: 2*dataWidth])) begin
    //            largest_2 = x;
    //        end 
    //    end
    //end
    //always @(posedge clk) begin
    //    if(standby & done_in) begin
    //        if($signed(in[largest_2*2*dataWidth +: 2*dataWidth]) > $signed(in[largest_1*2*dataWidth +: 2*dataWidth])) begin
     //           out <= largest_2;    
      //      end
       //     else begin
        //        out <= largest_1;
         //   end
         //   standby <= 0;
       // end
        
       // if(~done_in) begin
        //    standby <=1;
       // end
    //end
    
    reg [3:0] b_1_1;
    reg [3:0] b_1_2;
    reg [3:0] b_1_3;
    reg [3:0] b_1_4;
    reg [3:0] b_1_5;
    reg [3:0] b_2_1;
    reg [3:0] b_2_2;
    reg [3:0] b_2_3;
    reg [3:0] b_3_1;
    reg [3:0] b_3_2;
    
    always @(*) begin
        if($signed(in[0*2*dataWidth  +: 2*dataWidth]) > $signed(in[1*2*dataWidth +: 2*dataWidth])) begin
            b_1_1 = 4'b0000;
        end
        else begin
            b_1_1 = 4'b0001;
        end
        if($signed(in[2*2*dataWidth  +: 2*dataWidth]) > $signed(in[3*2*dataWidth +: 2*dataWidth])) begin
            b_1_2 = 4'b0010;
        end
        else begin
            b_1_2 = 4'b0011;
        end
        if($signed(in[4*2*dataWidth  +: 2*dataWidth]) > $signed(in[5*2*dataWidth +: 2*dataWidth])) begin
            b_1_3 = 4'b0100;
        end
        else begin
            b_1_3 = 4'b0101;
        end
        if($signed(in[6*2*dataWidth  +: 2*dataWidth]) > $signed(in[7*2*dataWidth +: 2*dataWidth])) begin
            b_1_4 = 4'b0110;
        end
        else begin
            b_1_4 = 4'b0111;
        end
        if($signed(in[8*2*dataWidth  +: 2*dataWidth]) > $signed(in[9*2*dataWidth +: 2*dataWidth])) begin
            b_1_5 = 4'b1000;
        end
        else begin
            b_1_5 = 4'b1001;
        end
        
    end
    always @(posedge clk) begin
    
    
    
    
        //second stage
        if($signed(in[b_1_1*2*dataWidth  +: 2*dataWidth]) > $signed(in[b_1_2*2*dataWidth +: 2*dataWidth])) begin
            b_2_1 <= b_1_1;
        end
        else begin
            b_2_1 <= b_1_2;
        end
        
        if($signed(in[b_1_3*2*dataWidth  +: 2*dataWidth]) > $signed(in[b_1_4*2*dataWidth +: 2*dataWidth])) begin
            b_2_2 <= b_1_3;
        end
        else begin
            b_2_2 <= b_1_4;
        end  
        
        b_2_3 <= b_1_5;
        
        //LAST LAYER
        if($signed(in[b_2_1*2*dataWidth  +: 2*dataWidth]) > $signed(in[b_2_2*2*dataWidth +: 2*dataWidth])) begin
            b_3_1 <= b_2_1;
        end
        else begin
            b_3_1 <= b_2_2;
        end  
        
        b_3_2 <= b_2_3;
        
        //top out
        
        if($signed(in[b_3_1*2*dataWidth  +: 2*dataWidth]) > $signed(in[b_3_2*2*dataWidth +: 2*dataWidth])) begin
            out <= b_3_1;
        end
        else begin
            out <= b_3_2;
        end  
        
        
            
    end

    
    
endmodule
