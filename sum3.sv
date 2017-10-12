/*
module sum3
	(input logic [3:0] num1, num2, num3,
	output logic [3:0] sum,
	output logic is_valid);
	
	logic [3:0] sum_1;
	logic valid_1;
	logic valid_2;

	BCDOneDigitAdd b1(num1, num2, sum_1, valid_1);

	BCDOneDigitAdd b2(num3, sum_1, sum, valid_2);

	always_comb begin
		if (valid_1 == 0 || valid_2 == 0)
			is_valid = 0;
		else
			is_valid = 1;
		
	end
endmodule:sum3
*/
module sum3
	(input logic [3:0] num1, num2, num3,
	output logic [7:0] sum);
	
	logic [3:0] sum_1, sum_2; 
	logic cout_1, count_2;

	BCDOneDigitAdd b1(num1, num2, 0, sum_1, cout_1);

	BCDOneDigitAdd b2(num3, sum_1, 0, sum_2, cout_2); 
	
	always_comb begin
		sum[7:4] = cout_1 + cout_2;
		sum[3:0] = sum_2;
	end
endmodule: sum3
