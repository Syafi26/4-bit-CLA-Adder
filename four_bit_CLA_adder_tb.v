// Code your testbench here
// or browse Examples
module four_bit_CLA_adder_tb;
  
//INPUT
  reg [3:0] a;
  reg [3:0] b;
  reg c0;
  
//OUTPUT
  wire [3:0] sum;
  wire c4;
  
  four_bit_CLA_adder uut(
    .sum(sum),
    .c4(c4),
    .a(a),
    .b(b),
    .c0(c0)
  );
  
//INITIALIZE INPUT
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
//4-bit limit = 15
    a = 15;
    b = 14;
    c0 = 0;
    
    #1;
    a = 15;
    b = 13;
    c0 = 0;
    
    #1;
    
    a = 15;
    b = 12;
    c0 = 0;
    
    #1;
    
  end
endmodule
    
    
  
