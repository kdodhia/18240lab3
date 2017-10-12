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
		
	end
endmodule:sum3
	
	
