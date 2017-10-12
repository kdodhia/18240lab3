module testerDigit
	(output logic [3:0] bcd,
	 input logic [6:0] segment,
	 output logic 	blank);

	initial begin
		$monitor($time,
			"bcd = %b, segment = %b, blank=%b", 
			bcd, segment, blank);
		bcd = 4'b0000;
		blank = 0;
		#50 bcd = 4'b1111;
		#50 bcd = 4'b0000;
		    blank = 1;
		#50 bcd = 4'b1100;
		#50 bcd = 4'b0011;
		    blank = 0;
		#50 bcd = 4'b1010;
		#50 $finish;
	end
endmodule: testerDigit
