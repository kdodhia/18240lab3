/* 
 *
 * Lab 2: Testing
 *
 * The file broken.sv (and associated benchXX.svp file) contain a 
 * set of "buggy" black-box modules that you will test for bugs. Your 
 * task is to systematically test the modules and tell us which modules 
 * contain the bugs and what they are.
 *
 * This file contains the framework modules to help you test.
 *
 * Compile with:
 * > vcs {any flags like -sverilog} lab2.sv broken.sv benchXX.svp
 *
 * Then simulate with:
 * > ./simv
 *
 * Note: you may NOT modify any of the modules named "Adder",
 * "Subtractor", or "Comparator". ALL OF YOUR TEST CODE MUST GO INTO THE
 * "test_design" MODULE!!
 * 
 * The correct functionality of the top-level circuit is:
 * 
 *    out = (a + b) < (c - d)
 *
 */


module system();
   logic [3:0] a, b, c, d;
   logic       out;

   top            dut(.*);
   test_design  bench(.*);
   
endmodule : system




module test_design
  (input  logic       out, 
   output logic [3:0] a, b, c, d);

  initial begin
	$monitor($time,	
		"a=%d, b=%d, c=%d, d=%d, out=%b",
		a, b, c, d, out);
	a = 4'b0001;
	b = 4'b0001;
	c = 4'b0001;
	d = 4'b0001;
	#10 a = 4'b1111;
        b = 4'b0001;
        c = 4'b0001;
        d = 4'b0001;
	#10 a = 4'b0001;
        b = 4'b1111;
        c = 4'b0001;
        d = 4'b0001;
	#10 a = 4'b0001;
        b = 4'b0001;
        c = 4'b1111;
        d = 4'b0001;
	#10 a = 4'b0001;
        b = 4'b0001;
        c = 4'b0001;
        d = 4'b1111;
        #10 a = 4'b0000;
        b = 4'b0001;
        c = 4'b0001;
        d = 4'b0001;
        #10 a = 4'b0001;
        b = 4'b0000;
        c = 4'b0001;
        d = 4'b0001;
	#10 a = 4'b0001;
        b = 4'b0001;
        c = 4'b0000;
        d = 4'b0001;
        #10 a = 4'b0001;
        b = 4'b0001;
        c = 4'b0001;
        d = 4'b0000;
	#10 a = 4'b0001;
	b = 4'b0001;
	c = 4'b0000;
	d = 4'b0000;
	#10 a = 4'b0001;
        b = 4'b0010;
        c = 4'b0001;
        d = 4'b0001;
        #10 a = 4'b1000;
        b = 4'b1000;
        c = 4'b1000;
        d = 4'b1000;
        #10 a = 4'b0000;
        b = 4'b0001;
        c = 4'b0100;
        d = 4'b0010;


	#10 b=4'b1111;
	a = 4'b1111;
	c=4'b1111;
	d=4'b1111;
	
	#10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1111;
        d = 4'b0000;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1011;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1001;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1000;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b0001;
        d = 4'b0001;

	#10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b0001;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1011;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b1001;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0001;
        c = 4'b0000;
        d = 4'b0001;
        #10 b = 4'b0010;
        a = 4'b0100;
        c = 4'b0000;
        d = 4'b0001;



	#10 b = 4'b0010;
        a = 4'b1010;
        c = 4'b0000;
        d = 4'b1011;
        #10 b = 4'b0001;
        a = 4'b1101;
        c = 4'b1000;
        d = 4'b0001;
        #10 b = 4'b0001;
        a = 4'b1101;
        c = 4'b1000;
        d = 4'b0011;
        #10 b = 4'b0001;
        a = 4'b1101;
        c = 4'b1000;
        d = 4'b0111;
	#10 b = 4'b0001;
	a = 4'b1101;
	c = 4'b1000;
	d = 4'b0101;




	#10 b = 4'b0000;
        a = 4'b0011;
        c = 4'b0010;
        d = 4'b0001;
        #10 b = 4'b1111;
        a = 4'b0011;
        c = 4'b0010;
        d = 4'b0001;
        #10 b = 4'b1110;
        a = 4'b1111;
        c = 4'b0010;
        d = 4'b0101;
        #10 b = 4'b0101;
        a = 4'b0000;
        c = 4'b0110;
        d = 4'b1110;
        #10 b = 4'b0001;
        a = 4'b1101;
        c = 4'b1000;
        d = 4'b0111;
        #10 b = 4'b0001;
        a = 4'b1101;
        c = 4'b1000;
        d = 4'b1101;
	
// PUT A MONITOR AND TEST ASSIGNMENT STATEMENTS HERE

    // DO NOT USE ANY LOOPS

    // YOU SHOULD HAVE LESS THAN 50, CERTAINLY LESS THAN 100 TESTS


  end
    
endmodule : test_design



