


//generic FIR

module fir(y, x, c, x_load, clk);
	
	parameter w1 = 9, //input data bit width
 			  w2 = 18, //multiplier bit width
 			  w3 = 19, //summer bit width
 			  w4 = 19, //output bit width
 			  M = 4; //filter length
 			  //pipelining

 	output [w3-1:0] y;
 	input clk, x_load;
 	input [w1-1:0] x, c;

 	reg [w1-1:0] x1;
 	wire [w1-0:0] y1;

 	reg [w1-1:0] coeff[3:0]; 
 	wire [w2-1:0] prod[3:0];
 	reg [w3-1:0] a[3:0];

 	wire [w2-1:0] sum;
 	assign sum = 0;

 	wire aclr;
 	assign aclr = 0; //default state of multiplier

 	integer i 0;


 	//loading coefficients and data
 	always @(posedge clk) begin
 		if(x_load == 0) begin
 			coeff[M-1] <= c;
 			for(i=0; i<M-1; i++) coeff[i] <= coeff[i+1];  
 		end
		else begin
 			x1 <= x; //sampling input data at each posedge
 		end
 	end



 	//comput SoP
 	always @(posedge clk) begin
 		a[0] <= {p[0][W2-1], p[0]} + a[1];
 		a[1] <= {p[1][W2-1], p[1]} + a[2];
 		a[2] <= {p[2][W2-1], p[2]} + a[3];
 		a[3] <= {p[3][W2-1], p[3]};
 	end
 	assign y1 = a[0];

 	assign p[0] = x1*c[0],
 		   p[1] = x1*c[1],
 		   p[2] = x1*c[2],
 		   p[3] = x1*c[3];

 	assign y = y1;







