
module ChipInterface
	  (output logic  [6:0] HEX7, HEX6, // magic_constant
                       HEX5, HEX4, HEX3, HEX2, HEX1, HEX0, 
   output logic  [7:0] LEDG,  
   input  logic [17:0] SW,  
   input  logic  [3:0] KEY,  
   input  logic        CLOCK_50); // needed for enter_9_bcd 
  logic [3:0] num1, num2, num3, 
              num4, num5, num6, 
              num7, num8, num9; 
  logic [7:0] magic_constant; 
  logic       it_is_magic; 
  enter_9_bcd e(.entry(SW[3:0]), 
                .selector(SW[7:4]), 
                .enableL(KEY[0]), 
                .zeroL(KEY[2]), 
                .set_defaultL(KEY[1]), 
                .clock(CLOCK_50), 
                .*); 
  IsMagic im(.*); 
  // Your code here.  
 // Output it_is_magic to all 8 bits of LEDG 
  // Display magic_constant
 //on the 7 segment display 
endmodule : ChipInterface




module isMagic
	(input logic [3:0] num1, num2, num3,
	input logic [3:0] num4, num5, num6,
	input logic [3:0] num7, num8, num9,
	output logic [7:0] magic_constant,
	output logic it_is_magic);
	
	logic valid;
	logic valid_1;
	//logic [3:0] temp_constant;
	isValid v1(valid, num1, num2, num3, num4, num5,
			num6, num7, num8, num9);
	sumt s(valid_1, magic_constant, num1, num2, 
			num3, num4, num5, num6, num7, num8, num9);
	helper h(valid, valid_1, it_is_magic);

endmodule:isMagic

module helper
	(input logic valid, valid_1,
	output logic it_is_magic);

	assign it_is_magic = ((valid && valid_1));

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
