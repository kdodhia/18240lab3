module isUnique_test;
	logic unique_valid;
        logic [3:0] num1, num2, num3;
        logic [3:0] num4, num5, num6;
        logic [3:0] num7, num8, num9;

	isUnique u1(unique_valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);

	initial begin
                $monitor($time,,
                        "num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d, num7 = %d, num8 = %d, num9 = %d,unique_valid = %b",
                        num1, num2, num3, num4, num5, num6, num7, num8, num9,
                        unique_valid);

		num1=0; num2=0; num3=0; num4=0; num5=0; num6=0; num7=0; num8=0; num9=0;
		#10 num1=1; num2=1; num3=2; num4=5; num5=2; num6=7; num7=8; num8=2; num9=9;
		#10 num1=9; num2=2; num3=4; num4=6; num5=1; num6=7; num7=3; num8=7; num9=9;
		#10 num1=2; num2=7; num3=6; num4=9; num5=5; num6=1; num7=4; num8=3; num9=8; 
		#10 num1=6; num2=1; num3=8; num4=7; num5=5; num6=3; num7=2; num8=9; num9=4;
		#10 $finish;
        end
endmodule: isUnique_test



module BCDOneDigitAdd_test;

	logic [3:0] num1, num2;
        logic [3:0] sum;
        logic cout;

	BCDOneDigitAdd s1(num1, num2, 0, sum, cout);
	
	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, sum = %d, cout = %b",
			num1, num2, sum, cout);

		num1 = 0; num2 = 0; 
		#10 num1 = 5; num2 = 7;
		#10 num1 = 8; num2 = 9;
		#10 num1 = 1; num2 = 3;
		#10 $finish;
	end
endmodule: BCDOneDigitAdd_test



module sum3_test;
	logic [3:0] num1, num2, num3;
        logic [7:0] sum;

	sum3 s2(num1, num2, num3, sum);

	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, sum = %d",
			num1, num2, num3, sum);
	
		num1 = 0; num2 = 0; num3 = 0;
		#10 num1 = 1; num2 = 2; num3 = 3;
		#10 num1 = 9; num2 = 8; num3 = 7;
		#10 num1 = 2; num2 = 3; num3 = 9;
		#10 $finish;
	end
endmodule: sum3_test



module sumt_test;
	logic it_is_magic;
        logic [7:0] magic_constant;
        logic [3:0] num1, num2, num3;
        logic [3:0] num4, num5, num6;
        logic [3:0] num7, num8, num9;

	sumt s3(it_is_magic, magic_constant, num1, num2, num3,
		num4, num5, num6, num7, num8, num9);

	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d, num6 = %d, num7 = %d, num8 = %d, num9 = %d, it_is_magic = %b, magic_constant = %d",
			num1, num2, num3, num4, num5, num6, num7, num8, num9,
			it_is_magic, magic_constant);

		num1=0; num2=0; num3=0; num4=0; num5=0; num6=0; num7=0; num8=0; num9=0;
		#10 num1=1; num2=1; num3=2; num4=5; num5=2; num6=7; num7=8; num8=2; num9=9;
		#10 num1=9; num2=2; num3=4; num4=6; num5=1; num6=7; num7=3; num8=7; num9=9;
		#10 num1=2; num2=7; num3=6; num4=9; num5=5; num6=1; num7=4; num8=3; num9=8; 
		#10 num1=6; num2=1; num3=8; num4=7; num5=5; num6=3; num7=2; num8=9; num9=4;
		#10 $finish;
	end
endmodule: sumt_test
