`default_nettype none

module BCDtoSevenSegment
	(input logic [3:0] bcd,
	 output logic [6:0] segment);

	logic a, b, c, d;

	assign a = bcd[3];
	assign b = bcd[2];
	assign c = bcd[1];
	assign d = bcd[0];

	assign segment[0] = (~a & ~b & ~c & d) | (b & ~c & ~d);
	assign segment[1] = (b & ~c & d) | (b & c & ~d);
	assign segment[2] = (~a & ~b & c & ~d);
	assign segment[3] = (~a & ~b & ~c & d) | (b & ~c & ~d) | (b & c & d);
	assign segment[4] = (d) | (b & ~c);
	assign segment[5] = (~b & c) | (c & d) | (~a & ~b & d);
	assign segment[6] = (~a & ~b & ~c) | (b & c & d);

endmodule: BCDtoSevenSegment



module SevenSegmentDigit
	(input logic [3:0] bcd,
	 output logic [6:0] segment,
	 input logic 	blank);

	logic [6:0] decoded;
	
	BCDtoSevenSegment b2ss(.bcd(bcd[3:0]), .segment(decoded[6:0]));

	assign segment = ((blank==1) ? (8'b11111111) : (decoded[6:0]));

endmodule: SevenSegmentDigit



module SevenSegmentControl
	(output logic [6:0] HEX7, HEX6, HEX5, HEX4,
	 output logic [6:0] HEX3, HEX2, HEX1, HEX0,
	 input logic [3:0] BCD7, BCD6, BCD5, BCD4,
	 input logic [3:0] BCD3, BCD2, BCD1, BCD0,
	 input logic [7:0] turn_on);	

	SevenSegmentDigit ssd0(BCD0, HEX0, ~(turn_on[0]));
	SevenSegmentDigit ssd1(BCD1, HEX1, ~(turn_on[1]));
	SevenSegmentDigit ssd2(BCD2, HEX2, ~(turn_on[2]));
	SevenSegmentDigit ssd3(BCD3, HEX3, ~(turn_on[3]));
	SevenSegmentDigit ssd4(BCD4, HEX4, ~(turn_on[4]));
	SevenSegmentDigit ssd5(BCD5, HEX5, ~(turn_on[5]));
	SevenSegmentDigit ssd6(BCD6, HEX6, ~(turn_on[6]));
	SevenSegmentDigit ssd7(BCD7, HEX7, ~(turn_on[7]));
	
endmodule: SevenSegmentControl


