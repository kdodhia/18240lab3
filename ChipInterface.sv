module ChipInterface
	(output logic [6:0] HEX7, HEX6, HEX5, HEX4,
	 output logic [6:0] HEX3, HEX2, HEX1, HEX0,
	 input logic [17:0] SW, 
	 input logic [3:0] KEY);

	logic [3:0] BCD0, BCD1, BCD2, BCD3, BCD4, BCD5, BCD6, BCD7;
	logic [3:0] n_key;

	assign n_key = ~KEY[3:0];
	
	SevenSegmentControl ssc0(.HEX7(HEX7),
				 .HEX6(HEX6),
				 .HEX5(HEX5),
				 .HEX4(HEX4),
				 .HEX3(HEX3),
				 .HEX2(HEX2),
				 .HEX1(HEX1),
				 .HEX0(HEX0),
				 .BCD7(BCD7),
				 .BCD6(BCD6),
				 .BCD5(BCD5),
      		 		 .BCD4(BCD4),
				 .BCD3(BCD3),
				 .BCD2(BCD2),
				 .BCD1(BCD1),
				 .BCD0(BCD0),
				 .turn_on(SW[17:10]));

	assign BCD0 = ((n_key == 0) ? (SW[3:0]) : (SW[7:4]));
	assign BCD1 = ((n_key == 1) ? (SW[3:0]) : (SW[7:4]));
	assign BCD2 = ((n_key == 2) ? (SW[3:0]) : (SW[7:4]));
   assign BCD3 = ((n_key == 3) ? (SW[3:0]) : (SW[7:4]));
   assign BCD4 = ((n_key == 4) ? (SW[3:0]) : (SW[7:4]));
   assign BCD5 = ((n_key == 5) ? (SW[3:0]) : (SW[7:4]));
   assign BCD6 = ((n_key == 6) ? (SW[3:0]) : (SW[7:4]));
   assign BCD7 = ((n_key == 7) ? (SW[3:0]) : (SW[7:4]));

endmodule: ChipInterface
