// Code your testbench here
module AND_Gate_tb;
  reg A;
  reg B;
  wire Y;
  integer i;
  
  AND_Gate inst(.A(A), .B(B), .Y(Y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #100 $finish;
  end
  
  initial 
    begin
      A=1'b0;
      B=1'b0;
      #7;
      A=1'b1;
      B=1'b0;
      #7;
      A=1'b0;
      B=1'b1;
      #7;
      A=1'b1;
      B=1'b1;
      #7;
    end
   
endmodule