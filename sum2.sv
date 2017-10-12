module BCDOneDigitAdd
	(input logic [3:0] num1, num2,
	input logic cin,
        output logic [3:0] sum,
	output logic cout);

	logic [4:0] val;
	always_comb begin
		val = num1+num2;
		if (val < 10) begin
			cout = 0;
			sum = val; end
		else begin
			cout = 1;
			sum = val-10;
		end
	end
endmodule:BCDOneDigitAdd	
       	
/*

module BCDOneDigitAdd
	(input logic [3:0] num1, num2,
	output logic [3:0] sum,
	output logic valid);
	
	logic not_valid;
	always_comb begin
		{not_valid, sum} = num1 + num2;
		valid = ~not_valid;
 	end

endmodule:BCDOneDigitAdid

*/
