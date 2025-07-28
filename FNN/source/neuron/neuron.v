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

module neuron #(parameter layerNo=0,neuronNo=0,numWeight=784,dataWidth=16,sigmoidSize=10,weightIntWidth=4,actType="relu",biasFile="biases_layer_0.mif",weightFile="weights_layer_0.mif")(
    input           clk,
    input           freeze,
    input [dataWidth-1:0]    myinput,
    output[dataWidth-1:0]    out  
    );
    
    localparam addressWidth = $clog2(numWeight);
    
    reg [addressWidth-1:0]   r_addr;//read address has to reach until numWeight hence width is 1 bit more
    reg [2*dataWidth-1:0]  mul; 
    reg [2*dataWidth-1:0]  sum;
    reg [2*dataWidth-1:0]  bias;
    reg [dataWidth-1:0]    biasReg [0:0];
    wire [2*dataWidth:0] comboAdd;
    wire [2*dataWidth:0] BiasAdd;
    reg addr=0;
    wire [dataWidth-1:0] w_out;
    
    reg state = 0; //0 = frozen, 1 = unfrozen
    reg reset = 0; 

	
    assign comboAdd = mul + sum;
    assign BiasAdd = bias + sum;
    

	initial
		begin
			$readmemh(biasFile,biasReg);
		end
		always @(posedge clk)
		begin
            bias <= {{dataWidth{1'b0}},biasReg[0][dataWidth-1:0]};
    end

    
    always @(posedge clk)
    begin
        if(state & freeze) begin
            state <= 0;
        end
        else if(~state & ~freeze) begin
            state <= 1;
            r_addr <= {addressWidth{1'b0}};
            reset <= 1;
        end
        if(reset) begin
            reset <= 0;
        end
        
        if(state) begin
            r_addr <= r_addr + 1;
        end
            
    end
    
    always @(posedge clk)
    begin
        mul  <= $signed(myinput) * $signed(w_out);
    end
    
    
    
    always @(posedge clk) begin
        if(reset) begin
            sum <= mul;
        end
        else begin
            if(state) begin
                if(r_addr == numWeight - 1) begin
                    //biasadd
                    if(!bias[2*dataWidth-1] &!sum[2*dataWidth-1] & BiasAdd[2*dataWidth-1]) //If bias and sum are positive and after adding bias to sum, if sign bit becomes 1, saturate
                    begin
                        sum[2*dataWidth-1] <= 1'b0;
                        sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
                    end
                    else if(bias[2*dataWidth-1] & sum[2*dataWidth-1] &  !BiasAdd[2*dataWidth-1]) //If bias and sum are negative and after addition if sign bit is 0, saturate
                    begin
                        sum[2*dataWidth-1] <= 1'b1;
                        sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
                    end
                    else
                        sum <= BiasAdd; 
                end
                else begin
                    //normal add
                    if(!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & comboAdd[2*dataWidth-1])
                    begin
                        sum[2*dataWidth-1] <= 1'b0;
                        sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b1}};
                    end
                    else if(mul[2*dataWidth-1] & sum[2*dataWidth-1] & !comboAdd[2*dataWidth-1])
                    begin
                        sum[2*dataWidth-1] <= 1'b1;
                        sum[2*dataWidth-2:0] <= {2*dataWidth-1{1'b0}};
                    end
                    else begin
                        sum <= comboAdd; 
                    end

                end
            end
        end
    end
    
    
    //Instantiation of Memory for Weights
    weight_mem #(.num_weight(numWeight),.neuron_no(neuronNo),.layer_no(layerNo),.address_width(addressWidth),.data_width(dataWidth),.weight_file(weightFile)) WM(
        .r_add(r_addr),
        .w_out(w_out)
    );
    
    generate
        ReLU #(.data_width(dataWidth)) s1 (
        .in(sum),
        .out(out)
        );
    endgenerate

endmodule
