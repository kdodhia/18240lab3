module isMagic
	(input logic [3:0] num1, num2, num3,
	input logic [3:0] num4, num5, num6,
	input logic [3:0] num7, num8, num9,
	output logic [3:0] magic_constant,
	output logic it_is_magic);
	
	logic valid;
	logic valid_1;
	logic [3:0] temp_constant;
	isValid v1(valid, num1, num2, num3, num4, num5,
			num6, num7, num8, num9);
	sumt s(valid_1, temp_constant, num1, num2, 
			num3, num4, num5, num6, num7, num8, num9);
	helper h(valid, valid_1, temp_constant, it_is_magic, magic_constant);

endmodule:isMagic

module helper
	(input logic valid, valid_1,
	input logic [3:0] temp_constant,
	output logic it_is_magic,
	output logic [3:0] magic, constant);

	assign it_is_magic = ( (valid && valid_1));
	assign magic_constant = ( (valid && valid_1) ? temp_constant : 0);

endmodule: helper

module isValid
	(output logic valid,
	input logic [3:0] num1, num2, num3,
	input logic [3:0] num4, num5, num6,
	input logic [3:0] num7, num8, num9);
	
	logic range_valid, unique_valid;
	inRange ir(range_valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);
	isUnique iu(unique_valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);

	always_comb
		if (range_valid && unique_valid) 
			valid = 1;
		else
			valid = 0;

endmodule:isValid
