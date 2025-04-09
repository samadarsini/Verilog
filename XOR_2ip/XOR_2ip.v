module XOR_2ip(c,a,b);
  input wire a,b;
  output c;
  //wire w1,w2;
  
  assign c= (a&(~b))|((~a)&b);
  
  //assign w1= a&(~b);
  //assign w2= (~a)&b;
  //assign c= w1|w2;
endmodule
