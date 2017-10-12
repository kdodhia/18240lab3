module toptester;
	
	logic [3:0] bcd;
	logic [7:0] segment;
	logic blank;

	SevenSegmentDigit ssd1(bcd, segment, blank);
	testerDigit td1(bcd, segment, blank);

endmodule: toptester
