module toptester;

        logic [3:0] bcd; 
	logic [7:0] segment;

        BCDtoSevenSegment b2ss1(bcd, segment);
        testerSegment ts1(segment, bcd);

endmodule: toptester

