module testIsMagic;

	logic [3:0] num1, num2, num3;
	logic [3:0] num4, num5, num6;
	logic [3:0] num7, num8, num9;
	
	logic it_is_magic;
	logic magic_constant;
	
	isMagic m1(num1, num2, num3, num4, num5, 
		num6, num7, num8, num9, magic_constant, it_is_magic);
	
	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d,", 
			"num7 = %d, num8 = %d, num9 = %d, magic_constant = %d, it_is_magic = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				magic_constant, it_is_magic);

		{num1, num2, num3, num4, num5, num6, num7, num8, num9} = {0,0,0,0,0,0,0,0,0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {2,7,6,9,5,1,4,3,8};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {6,1,8,7,5,3,2,9,4};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {1,2,3,4,5,6,7,8,9};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {5,5,5,5,5,5,5,5,5};

		#10 $finish;
	end
endmodule: testIsMagic


module testIsValid;
	logic valid;
	logic [3:0] num1, num2, num3;
	logic [3:0] num4, num5, num6;
	logic [3:0] num7, num8, num9;
	
	isValid iv(valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);
	
	initial begin
		$monitor ($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d,", 
			"num7 = %d, num8 = %d, num9 = %d, valid = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				valid);
		{num1, num2, num3, num4, num5, num6, num7, num8, num9} = {0,0,0,0,0,0,0,0,0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {10,4,11,9,0,0,0,0,0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {6,1,8,7,5,3,2,9,4};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {1,2,3,4,5,6,7,8,9};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {5,5,5,5,32,5,5,11,5};
		#10 $finish;
	end

endmodule: testIsValid

module testInRange;
	
	logic range_valid;
	logic [3:0] num1, num2, num3;
	logic [3:0] num4, num5, num6;
	logic [3:0] num7, num8, num9;
	
	inRange ir(range_valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);
	
	initial begin
		$monitor ($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d,", 
			"num7 = %d, num8 = %d, num9 = %d, range_valid = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				range_valid);
		{num1, num2, num3, num4, num5, num6, num7, num8, num9} = {0,0,0,0,0,0,0,0,0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {10,4,11,9,0,0,0,0,0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {6,1,8,7,5,3,2,9,4};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {1,2,3,4,5,6,7,8,9};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {5,5,5,5,32,5,5,11,5};
		#10 $finish;
	end
endmodule: testInRange
