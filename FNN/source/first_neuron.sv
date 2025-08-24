`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.08.2025 18:16:11
// Design Name: 
// Module Name: first_neuron
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


module first_neuron #(parameter layerNo=0,neuronNo=0,numWeight=784,dataWidth=16,sigmoidSize=10,weightIntWidth=4,actType="relu",frac_bits=11)(
    input           clk,
    input           freeze,
    input [dataWidth-1:0]    myinput,
    input pause,
    output[dataWidth-1:0]    out_n,
    //for testing:
    
    //output state_out,
    //output reset_out, 
    output [2*dataWidth-1:0] sum_out,
    //output [2*dataWidth-1:0] mul_out,
    //output [2*dataWidth-1:0] combo_out,
    output [dataWidth-1:0] weight_out 
    );
    
    localparam addressWidth = $clog2(numWeight);

    
    reg [addressWidth-1:0]   r_addr;//read address has to reach until numWeight hence width is 1 bit more
    reg [addressWidth-1:0]   r_addr_next;    
    wire [2*dataWidth-1:0]  mul; 
    reg [2*dataWidth-1:0]  sum;
    reg [2*dataWidth-1:0]  tmp_sum;
    reg [2*dataWidth-1:0]  bias;
    reg [dataWidth-1:0]    biasReg [0:0];
    wire [2*dataWidth:0] comboAdd;
    wire [2*dataWidth:0] BiasAdd;   
    wire [2*dataWidth-1:0] sum_next;
    reg addr=0;
    wire [dataWidth-1:0] w_out;
    
    reg state = 0; //0 = frozen, 1 = unfrozen 
    reg pause_state = 0;
    

    assign sum_out = sum;
    assign weight_out = w_out;
    //assign mul_out = mul;
    //assign combo_out = comboAdd;

	assign mul = $signed(myinput) * $signed(w_out);
    assign comboAdd = mul + sum;
    assign BiasAdd = bias + comboAdd;
    //assign r_addr_next = r_addr+1;
    
    //redo this because it doesnt work
   // assign sum_next = (!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & comboAdd[2*dataWidth-1]) ? {1'b0,{(2*dataWidth-1){1'b1}}} :
   //                   (mul[2*dataWidth-1] & sum[2*dataWidth-1] & !comboAdd[2*dataWidth-1]) ? {1'b1,{(2*dataWidth-1){1'b0}}} :
   //                   (r_addr == numWeight - 1) ? BiasAdd :
   //                   comboAdd;
    
    localparam string weightFile = $sformatf("weights_layer_%0d_neuron_%0d.mif", layerNo, neuronNo);
    localparam string biasFile = $sformatf("biases_layer_%0d_neuron_%0d.mif", layerNo, neuronNo);
    

	initial
		begin
			$readmemh(biasFile,biasReg);
            sum <= {2*dataWidth{1'b0}};
            r_addr <= {addressWidth{1'b0}};   
	end
	//sign extension
	always @(posedge clk) begin
            bias <= {{dataWidth{biasReg[0][dataWidth-1]}},biasReg[0][dataWidth-1:0]};
            //bias <= {{dataWidth{1'b0}},biasReg[0][dataWidth-1:0]};
    end
    

    
    always @(posedge clk) //clocked because otherwise would infer latches etc
    begin
        
            if(freeze) begin
                r_addr <= {addressWidth{1'b0}};
            end
            if(state & freeze) begin
                state <= 0;
            end
            else if (~state & ~freeze & ~pause) begin
                sum <= mul;
                state<=1;
                //TAKE THIS OUT IF STOPS WORKIN
                r_addr <= r_addr+1;
            end     
            else if (state) begin          

                if(!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & comboAdd[2*dataWidth-1]) begin
                    sum <={1'b0,{(2*dataWidth-1){1'b1}}};
                end
                else if(mul[2*dataWidth-1] & sum[2*dataWidth-1] & !comboAdd[2*dataWidth-1]) begin
                    sum <= {1'b1,{(2*dataWidth-1){1'b0}}};
                end
                else if(r_addr == numWeight - 1)begin
                    sum <= BiasAdd;
                end
                else begin
                    sum <= comboAdd;
                end
                
                
                
                r_addr <= r_addr+1;
            end
        
        end


    
    
    

    
    
    //Instantiation of Memory for Weights
    weight_mem #(.num_weight(numWeight),.neuron_no(neuronNo),.layer_no(layerNo),.address_width(addressWidth),.data_width(dataWidth),.weight_file(weightFile)) WM(
        .r_add(r_addr),
        .w_out(w_out)
    );
    
    generate
        ReLU #(.data_width(dataWidth), .frac_bits(frac_bits)) s1 (
        .in(sum[2*dataWidth-1:frac_bits]), //shifts down by fractional bits, this is needed to keep the result in fixed point with 11 bits after the point
        .out(out_n)
        );
    endgenerate

endmodule
