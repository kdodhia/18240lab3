module BCDOneDigitAdd
	(input logic [3:0] num1, num2,
	output logic [3:0] sum,
	output logic valid);
	
	always_comb
		{valid, sum} = num1 + num2;
endmodule:BCDOneDigitAdd
