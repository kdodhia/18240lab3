module inRange
	(output logic range_valid, 
	 input logic [3:0] num1, num2, num3,
	 input logic [3:0] num4, num5, num6,
	 input logic [3:0] num7, num8, num9);
	logic bool;
	always_comb begin
		bool = 1;
		if (bool==1 && (0 >= num1 || num1 > 9))
			bool = 0;
		if (bool==1 && (0 >= num2 || num2 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num3 || num3 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num4 || num4 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num5 || num5 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num6 || num6 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num7 || num7 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num8 || num8 > 9))
                	bool = 0;
		if (bool==1 && (0 >= num9 || num9 > 9))
                	bool = 0;
		range_valid = bool;
	end

endmodule: inRange
