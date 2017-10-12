module isUnique
	(output logic unique_valid, 
	 input logic [3:0] num1, num2, num3,
	       [3:0] num4, num5, num6,
	       [3:0] num7, num8, num9);
	
	logic [8:0]temp;
	
	always_comb begin
		temp = 9'b111111111;
		temp[num1-1] = 0;
		temp[num2-1] = 0;
		temp[num3-1] = 0;
		temp[num4-1] = 0;
		temp[num5-1] = 0;
		temp[num6-1] = 0;
		temp[num7-1] = 0;
		temp[num8-1] = 0;
		temp[num9-1] = 0;

		if (temp)
			unique_valid = 0;
		else
			unique_valid = 1;
	end
endmodule: isUnique
