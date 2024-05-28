//Developer: SYAFI MASRI
//ID: 2000482
//Revision: Rev2
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
    $monitor("INPUT A = %b,INPUT B = %0b, CARRY IN = %0b , CARRY OUT = %0b, SUM = %0b", a,b,c0,c4,sum);
    
//4-bit limit = 15
    a = 4'b0000;// change to binary
    b = 4'b0010;
    c0 = 1'b0;
    
    #1;
    a = 4'b0110;
    b = 4'b0101;
    c0 = 1'b0;
    
    #1;
    
    a = 4'b1111;
    b = 4'b1000;
    c0 = 1'b0;
    
    #1;
    
  end
endmodule
    
    
  
