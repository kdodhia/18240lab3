module BCDOneDigitAdd
	(input logic [3:0] num1, num2,
	output logic [3:0] sum,
	output logic valid);
	
	logic not_valid;
	always_comb begin
		{not_valid, sum} = num1 + num2;
		valid = ~not_valid;
 	end

endmodule:BCDOneDigitAdd
