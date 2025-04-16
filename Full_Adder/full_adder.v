module full_adder(s,c,a,b,cin);
  input wire a,b,cin;
  output wire s,c;
  
  assign s=a^b^cin;
  assign c=(a&b|b&cin|cin&a);
  
endmodule
