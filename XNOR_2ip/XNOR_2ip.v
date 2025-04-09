module XNOR_2ip(c,a,b);
  input wire a,b;
  output c;
  
  assign c= (a&b)|((~a)&(~b));
endmodule
