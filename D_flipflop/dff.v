`timescale 1ns / 1ps
module dff(clk,reset,d,q);
  input clk, reset, d;
  output reg q;
  
  always @(posedge clk)
    if (!reset)
      q<=0;
    else
      q<=d;
endmodule
    
