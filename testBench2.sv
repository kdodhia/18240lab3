module isUnique_test;
	logic unique_valid;
        logic [3:0] num1, num2, num3;
        logic [3:0] num4, num5, num6;
        logic [3:0] num7, num8, num9;

	isUnique u1(unique_valid, num1, num2, num3, num4, num5, num6, num7, num8, num9);

	initial begin
                $monitor($time,,
                        "num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d,",
                        "num6 = %d, num7 = %d, num8 = %d, num9 = %d,",
                        "unique_valid = %b",
                        num1, num2, num3, num4, num5, num6, num7, num8, num9,
                        unique_valid);

                {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {0, 0, 0, 0, 0, 0, 0, 0, 0};
                #10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {1, 1, 2, 5, 2, 7, 8, 2, 9};
                #10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {9, 2, 4, 6, 1, 7, 3, 7, 9};
                #10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {2, 7, 6, 9, 5, 1, 4, 3, 8};
                #10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {6, 1, 8, 7, 5, 3, 2, 9, 4};
                #10 $finish;
        end
endmodule: isUnique_test



module BCDOneDigitAdd_test;

	logic [3:0] num1, num2;
        logic [3:0] sum;
        logic valid;

	BCDOneDigitAdd s1(num1, num2, sum, valid);
	
	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, sum = %d, valid = %b",
			num1, num2, sum, valid);

		num1 = 0; num2 = 0; 
		#10 num1 = 5; num2 = 7;
		#10 num1 = 8; num2 = 9;
		#10 num1 = 1; num2 = 3;
		#10 $finish;
	end
endmodule: BCDOneDigitAdd_test



module sum3_test;
	logic [3:0] num1, num2, num3;
        logic [3:0] sum;
        logic is_valid;

	sum3 s2(num1, num2, num3, sum, is_valid);

	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, sum = %d, is_valid = %b",
			num1, num2, num3, sum, is_valid);
	
		num1 = 0; num2 = 0; num3 = 0;
		#10 num1 = 1; num2 = 2; num3 = 3;
		#10 num1 = 9; num2 = 8; num3 = 7;
		#10 num1 = 2; num2 = 3; num3 = 9;
		#10 $finish;
	end
endmodule: sum3_test



module sumt_test;
	logic it_is_magic;
        logic [3:0] magic_constant;
        logic [3:0] num1, num2, num3;
        logic [3:0] num4, num5, num6;
        logic [3:0] num7, num8, num9;

	sumt s3(it_is_magic, magic_constant, num1, num2, num3,
		num4, num5, num6, num7, num8, num9);

	initial begin
		$monitor($time,,
			"num1 = %d, num2 = %d, num3 = %d, num4 = %d, num5 = %d,",
			"num6 = %d, num7 = %d, num8 = %d, num9 = %d,", 
			"it_is_magic = %b, magic_constant = %d",
			num1, num2, num3, num4, num5, num6, num7, num8, num9,
			it_is_magic, magic_constant);

		{num1, num2, num3, num4, num5, num6, num7, num8, num9} = {0, 0, 0, 0, 0, 0, 0, 0, 0};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {1, 1, 2, 5, 2, 7, 8, 2, 9};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {9, 2, 4, 6, 1, 7, 3, 7, 9};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {2, 7, 6, 9, 5, 1, 4, 3, 8};
		#10 {num1, num2, num3, num4, num5, num6, num7, num8, num9} = {6, 1, 8, 7, 5, 3, 2, 9, 4};
		#10 $finish;
	end
endmodule: sumt_test
