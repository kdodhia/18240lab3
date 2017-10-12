module testIsMagic;

	logic [3:0] num1, num2, num3;
	logic [3:0] num4, num5, num6;
	logic [3:0] num7, num8, num9;
	
	logic it_is_magic;
	logic [7:0] magic_constant;
	
	isMagic m1(num1, num2, num3, num4, num5, 
		num6, num7, num8, num9, magic_constant, it_is_magic);
	
	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d, num7 = %d, num8 = %d, num9 = %d, magic_constant = %d, it_is_magic = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				magic_constant, it_is_magic);

		num1=0; num2=0; num3=0; num4=0; num5=0; num6=0; num7=0; num8=0; num9=0;
		#10 num1=2; num2=7; num3=6; num4=9; num5=5; num6=1; num7=4; num8=3; num9=8;
		#10 num1=6; num2=1; num3=8; num4=7; num5=5; num6=3; num7=2; num8=9; num9=4;
		#10 num1=1; num2=2; num3=3; num4=4; num5=5; num6=6; num7=7; num8=8; num9=9; 
		#10 num1=5; num2=5; num3=5; num4=5; num5=5; num6=5; num7=5; num8=5; num9=5;

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
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d, num7 = %d, num8 = %d, num9 = %d, valid = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				valid);
		num1=0; num2=0; num3=0; num4=0; num5=0; num6=0; num7=0; num8=0; num9=0;
		#10 num1=10; num2=7; num3=11; num4=9; num5=0; num6=1; num7=4; num8=3; num9=8;
		#10 num1=6; num2=1; num3=8; num4=7; num5=5; num6=3; num7=2; num8=9; num9=4;
		#10 num1=1; num2=2; num3=3; num4=4; num5=5; num6=6; num7=7; num8=8; num9=9; 
		#10 num1=5; num2=5; num3=5; num4=6; num5=5; num6=4; num7=5; num8=5; num9=5;
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
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d, num7 = %d, num8 = %d, num9 = %d, range_valid = %b",
				num1, num2, num3, num4, num5, num6, num7, num8, num9,
				range_valid);
		
		num1=0; num2=0; num3=0; num4=0; num5=0; num6=0; num7=0; num8=0; num9=0;
		#10 num1=10; num2=7; num3=11; num4=9; num5=0; num6=1; num7=4; num8=3; num9=8;
		#10 num1=6; num2=1; num3=8; num4=7; num5=5; num6=3; num7=2; num8=9; num9=4;
		#10 num1=1; num2=2; num3=3; num4=4; num5=5; num6=6; num7=7; num8=8; num9=9; 
		#10 num1=5; num2=5; num3=11; num4=6; num5=5; num6=4; num7=22; num8=5; num9=5;
		#10 $finish;
	end
endmodule: testInRange
