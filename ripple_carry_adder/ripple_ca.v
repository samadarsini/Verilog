module ripple_ca(s0,c0,s1,c1,s2,c2,s3,c3,a,b,cin);
  input wire [3:0]a,b;
  input wire cin;
  output wire s0,c0,s1,c1,s2,c2,s3,c3;
  
  full_adder fa0(.s(s0),.c(c0),.a(a[0]),.b(b[0]),.cin(cin));
  full_adder fa1(.s(s1),.c(c1),.a(a[1]),.b(b[1]),.cin(c0));
  full_adder fa2(.s(s2),.c(c2),.a(a[2]),.b(b[2]),.cin(c1));
  full_adder fa3(.s(s3),.c(c3),.a(a[3]),.b(b[3]),.cin(c2));
  
endmodule

module full_adder(s,c,a,b,cin);
  input wire a,b,cin;
  output wire s,c;
  
  assign s=a^b^cin;
  assign c=(a&b|b&cin|cin&a);
  
endmodule
