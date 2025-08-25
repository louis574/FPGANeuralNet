`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2025 23:09:05
// Design Name: 
// Module Name: neuron_no_ReLU
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


module neuron_no_ReLU #(parameter layerNo=0,neuronNo=0,numWeight=784,dataWidth=16,sigmoidSize=10,weightIntWidth=4,actType="relu")(
    input           clk,
    input           freeze,
    input [dataWidth-1:0]    myinput,
    output[2*dataWidth-1:0]    out_n
    //for testing:
    
    //output state_out,
    //output reset_out, 
    //output [2*dataWidth-1:0] sum_out,
    //output [2*dataWidth-1:0] mul_out,
    //output [2*dataWidth-1:0] combo_out,
    //output [dataWidth-1:0] weight_out 
    );
    
    localparam addressWidth = $clog2(numWeight);

    
    reg [addressWidth-1:0]   r_addr;//read address has to reach until numWeight hence width is 1 bit more
    wire [2*dataWidth-1:0]  mul; 
    reg [2*dataWidth-1:0]  sum;
    reg [2*dataWidth-1:0]  tmp_sum;
    reg [2*dataWidth-1:0]  bias;
    reg [dataWidth-1:0]    biasReg [0:0];
    wire [2*dataWidth:0] comboAdd;
    wire [2*dataWidth:0] BiasAdd;
    reg addr=0;
    reg [2*dataWidth-1:0] sum_next;
    wire [dataWidth-1:0] w_out;
    reg [addressWidth-1:0]   r_addr_next;
    
    reg state = 0; //0 = frozen, 1 = unfrozen  
    

    assign state_out = state;
    assign out_n = sum;
    assign combo_out = comboAdd;

	assign mul = $signed(myinput) * $signed(w_out);
    assign comboAdd = mul + sum;
    assign BiasAdd = bias + comboAdd;
    //assign sum_next = (r_addr == numWeight-1) ? BiasAdd :
    //                  (!mul[2*dataWidth-1] & !sum[2*dataWidth-1] & comboAdd[2*dataWidth-1]) ? {1'b0,{(2*dataWidth-1){1'b1}}} :
    //                  (mul[2*dataWidth-1] & sum[2*dataWidth-1] & !comboAdd[2*dataWidth-1]) ? {1'b1,{(2*dataWidth-1){1'b0}}} :
    //                  (r_addr == numWeight - 1) ? BiasAdd :
    //                  comboAdd;
    //assign r_addr_next = r_addr+1;
    
    localparam string weightFile = $sformatf("weights_layer_%0d_neuron_%0d.mif", layerNo, neuronNo);
    localparam string biasFile = $sformatf("biases_layer_%0d_neuron_%0d.mif", layerNo, neuronNo);
    

	initial
		begin
			$readmemh(biasFile,biasReg);

	end
	//sign extension
	always @(posedge clk) begin
            bias <= {{dataWidth{biasReg[0][dataWidth-1]}},biasReg[0][dataWidth-1:0]};
            //bias <= {{dataWidth{1'b0}},biasReg[0][dataWidth-1:0]};
    end
    
    initial begin
        sum = 0;
        r_addr = {addressWidth{1'b0}};
    end

    
    always @(posedge clk) //clocked because otherwise would infer latches etc
    begin
    
        if(freeze) begin
            r_addr <= {addressWidth{1'b0}};
        end
        if(state & freeze) begin
            state <= 0;
        end
        else if (~state & ~freeze) begin
            sum <= mul;
            state<=1;
            //TAKE THIS OUT IF STOPS WORKIN
            r_addr <= r_addr + 1;
        end
        //if(reset) begin
            //state <= 1;
            //reset <= 0;
           // r_addr <= r_addr + 1;
        //end
        
        else if (state) begin
            //if there is an overflow on the addition of sum and mul on the 2xdatawidth size 
            //then it is assumed that the additional bias doesnt need to be added on 
            //as either the bias will simply saturate it further
            //or it will go against the saturated value
            //however if it 'goes' against its value is already so insignificant
            //its not efficient to factor it in
            //for example in 16 bit the positive saturation value of sum is 7FFFFFFF = 2147483647 ~ 2 billion
            //the most negative value that can be added on is 8000 = -32768
            //this is 0.0015% of the saturated value - not worth it
            //so ignore it
            
            //anyway the case it saturates is extremely rare anyway
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

            r_addr <= r_addr + 1;
        end
        
            
    end

    
    
    

    
    
    //Instantiation of Memory for Weights
    weight_mem #(.num_weight(numWeight),.neuron_no(neuronNo),.layer_no(layerNo),.address_width(addressWidth),.data_width(dataWidth),.weight_file(weightFile)) WM(
        .r_add(r_addr),
        .w_out(w_out)
    );

endmodule
