module sumt
	(output logic it_is_magic,
	output logic [3:0] magic_constant,
	input logic [3:0] num1, num2, num3,
	input logic [3:0] num4, num5, num6,
	input logic [3:0] num7, num8, num9);
	
	logic flag;
	logic [3:0] sum2, sum3;
	logic [3:0] sum4, sum5, sum6;
	logic [3:0] sum7, sum8;
	logic valid8, valid2, valid3;
	logic valid4, valid5, valid6, valid7; 

	logic is_valid1, is_valid2, is_valid3;
	logic  is_valid4, is_valid5, is_valid6;
	logic  is_valid7, is_valid8; 

	sum3 s1(num1, num2, num3, magic_constant, is_valid1),
	     s2(num4, num5, num6, sum2, is_valid2),
	     s3(num7, num8, num9, sum3, is_valid3),
	     s4(num1, num4, num7, sum4, is_valid4),
	     s5(num2, num5, num8, sum5, is_valid5),
	     s6(num3, num6, num9, sum6, is_valid6),
	     s7(num1, num5, num9, sum7, is_valid7),
	     s8(num3, num5, num7, sum8, is_valid8);

	comparator c2(magic_constant, sum2, valid2);
	comparator c3(magic_constant, sum3, valid3);
	comparator c4(magic_constant, sum4, valid4);
	comparator c5(magic_constant, sum5, valid5);			
	comparator c6(magic_constant, sum6, valid6);	
	comparator c7(magic_constant, sum7, valid7);
	comparator c8(magic_constant, sum8, valid8);

	always_comb begin	
		flag = 0;
		if (is_valid1 && is_valid2 && is_valid3
			 && is_valid4 && is_valid5 && is_valid6
			&& is_valid7 && is_valid8)
			flag = 1;
		if (flag)
			if (valid8 && valid2 && valid3 && valid4 && valid5 && valid6 && valid7)
				it_is_magic = 1;
			else	
				it_is_magic = 0;
	end
endmodule: sumt

module comparator
	(input logic [3:0] b, c,
	output logic a);

	always_comb 
 		a = (b == c);
endmodule: comparator 







