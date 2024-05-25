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
    a = 1100;
    b = 1111;
    c0 = 0;
    //result 15
    
    #1;
    a = 1100;
    b = 1011;
    c0 = 0;
    
    #1;
    
    a = 1110;
    b = 0101;
    c0 = 0;
    
    #1;
    
  end
endmodule
