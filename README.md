*LINK TO EDA PLAYGROUND*
https://www.edaplayground.com/x/rjXZ

# **Description of the 4-bit Carry Lookahead Adder (CLA) Verilog Design**
Module Name: four_bit_CLA_adder

<p align="center">
  <img width="460" height="300" src="https://github.com/user-attachments/assets/98f5054a-287d-4a99-a64f-0a29db62f381">
</p>


Developer: Syafi Masri
Revision: Rev2

Overview
The provided Verilog code implements a 4-bit Carry Lookahead Adder (CLA). The CLA is a type of adder used in digital logic circuits to add two 4-bit binary numbers efficiently. The primary advantage of the CLA over other adders, such as the ripple carry adder, is that it significantly reduces the time required to compute the carry bits.

Ports
  Inputs:
  
    a (4 bits): First operand.
    b (4 bits): Second operand.
    c0 (1 bit): Initial carry-in.
    
  Outputs:
  
    sum (4 bits): Sum of the input operands.
    c4 (1 bit): Final carry-out.
    Internal Signals
    
  Generate and Propagate Signals:
  
    p0, p1, p2, p3: Propagate signals for each bit.
    g0, g1, g2, g3: Generate signals for each bit.
    
  Carry Signals:

    c1, c2, c3, c4: Intermediate carry signals.
    
Functionality
  Generate and Propagate Calculation:
  
    Propagate signals are calculated using bitwise OR: p[i] = a[i] | b[i].
    Generate signals are calculated using bitwise AND: g[i] = a[i] & b[i].
    
  Carry Calculation:
  
    The carry for each bit is calculated using the propagate and generate signals:
    
      c1 = g0 | (p0 & c0)
      c2 = g1 | (p1 & g0) | (p1 & p0 & c0)
      c3 = g2 | (p2 & g1) | (p2 & p1 & g0) | (p2 & p1 & p0 & c0)
      c4 = g3 | (p3 & g2) | (p3 & p2 & g1) | (p3 & p2 & p1 & g0) | (p3 & p2 & p1 & p0 & c0)
      
  Sum Calculation:
  
    The sum for each bit is calculated using bitwise XOR: sum[i] = a[i] ^ b[i] ^ c[i].


# **Description of the 4-bit Carry Lookahead Adder (CLA) Testbench Verilog Design**
Module Name: four_bit_CLA_adder_tb

Developer: Syafi Masri
Revision: Rev2

Overview
The provided Verilog code is a testbench for testing the functionality of the 4-bit Carry Lookahead Adder (CLA) module. A testbench is a piece of code used to simulate and verify the design of a digital circuit by applying various input stimuli and observing the outputs.

Testbench Ports and Signals
  Inputs:
  
    a (4 bits): First operand.
    b (4 bits): Second operand.
    c0 (1 bit): Initial carry-in.
    
  Outputs:

    sum (4 bits): Sum of the input operands.
    c4 (1 bit): Final carry-out.
    
Module Instantiation

  The four_bit_CLA_adder module is instantiated within the testbench with the instance name uut (unit under test).
  The inputs a, b, and c0 are connected to the corresponding ports of the CLA module.
  The outputs sum and c4 are connected to the corresponding ports of the CLA module.

Simulation Initialization

  The $dumpfile and $dumpvars system tasks are used to create a dump file (dump.vcd) for waveform viewing.
  The $monitor system task is used to continuously print the input and output signals to the console.

Test Cases
  Several test cases are defined within an initial block to apply different input values and observe the results:
  
      Test Case 1: a = 4'b0000, b = 4'b0010, c0 = 1'b0
      Test Case 2: a = 4'b0110, b = 4'b0101, c0 = 1'b0
      Test Case 3: a = 4'b1111, b = 4'b1000, c0 = 1'b0
