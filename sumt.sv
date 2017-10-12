module sumt
	(output logic it_is_magic,
	output logic [7:0] magic_constant,
	input logic [3:0] num1, num2, num3,
	input logic [3:0] num4, num5, num6,
	input logic [3:0] num7, num8, num9);
	
	logic [7:0] sum2, sum3;
	logic [7:0] sum4, sum5, sum6;
	logic [7:0] sum7, sum8;
	logic valid8, valid2, valid3;
	logic valid4, valid5, valid6, valid7; 

	sum3 s1(num1, num2, num3, magic_constant),
	     s2(num4, num5, num6, sum2),
	     s3(num7, num8, num9, sum3),
	     s4(num1, num4, num7, sum4),
	     s5(num2, num5, num8, sum5),
	     s6(num3, num6, num9, sum6),
	     s7(num1, num5, num9, sum7),
	     s8(num3, num5, num7, sum8);

	comparator c2(magic_constant, sum2, valid2),
		   c3(magic_constant, sum3, valid3),
		   c4(magic_constant, sum4, valid4),
		   c5(magic_constant, sum5, valid5),			
		   c6(magic_constant, sum6, valid6),	
		   c7(magic_constant, sum7, valid7),
		   c8(magic_constant, sum8, valid8);

	assign it_is_magic = (valid8 && valid2 && valid3 && valid4 && valid5 && valid6 && valid7);
endmodule: sumt

module comparator
	(input logic [7:0] b, c,
	output logic a);

	always_comb 
 		a = (b == c);
endmodule: comparator 







