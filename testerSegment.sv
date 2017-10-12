module testerSegment
	(input logic [6:0] segment,
	 output logic [3:0] bcd);

	initial begin
		$monitor($time,
			"bcd = %b, segment = %b", bcd, segment);
	 	bcd = 4'b0000;	
		#50 bcd = 4'b1111;
                #50 bcd = 4'b0100;
                #50 bcd = 4'b1100;
                #50 bcd = 4'b0011;
		#50 bcd = 4'b1010;
		#50 $finish;
	end

endmodule: testerSegment

