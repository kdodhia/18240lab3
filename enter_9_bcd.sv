module enter_9_bcd
  (input  logic [3:0] entry,
   input  logic [3:0] selector,
   input  logic       enableL, zeroL, set_defaultL, clock,
   output logic [3:0] num1, num2, num3, num4, num5, num6, num7, num8, num9);

  always_ff @(posedge clock) begin
    if (~zeroL) begin
      num1 <= 4'b0000;
      num2 <= 4'b0000;
      num3 <= 4'b0000;
      num4 <= 4'b0000;
      num5 <= 4'b0000;
      num6 <= 4'b0000;
      num7 <= 4'b0000;
      num8 <= 4'b0000;
      num9 <= 4'b0000;
    end
    else if (~set_defaultL) begin
      num1 <= 4'b1000;
      num2 <= 4'b0001;
      num3 <= 4'b0110;
      num4 <= 4'b0011;
      num5 <= 4'b0101;
      num6 <= 4'b0111;
      num7 <= 4'b0100;
      num8 <= 4'b1001;
      num9 <= 4'b0010;
    end
    else if (~enableL)
    unique case (selector)
      4'b0001: num1 <= entry;
      4'b0010: num2 <= entry;
      4'b0011: num3 <= entry;
      4'b0100: num4 <= entry;
      4'b0101: num5 <= entry;
      4'b0110: num6 <= entry;
      4'b0111: num7 <= entry;
      4'b1000: num8 <= entry;
      4'b1001: num9 <= entry;
    endcase
  end

endmodule: enter_9_bcd