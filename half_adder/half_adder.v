module half_adder(s,c,a,b);
  input wire a,b;
  output wire s,c;
  
  assign s=a^b;
  assign c=a&b;
  
endmodule
