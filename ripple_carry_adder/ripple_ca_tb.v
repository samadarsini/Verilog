module ripple_ca_tb();
  reg [3:0]a,b;
  reg cin;
  wire s0,c0,s1,c1,s2,c2,s3,c3;
  
  ripple_ca rca1(.s0(s0),.c0(c0),.s1(s1),.c1(c1),.s2(s2),.c2(c2),.s3(s3),.c3(c3),.a(a),.b(b),.cin(cin));
  initial begin
    $dumpfile("ripple_ca.vcd");
    $dumpvars(0,ripple_ca_tb);
    
    a=4'b0000;b=4'b0000;cin=0;
    $monitor("At time: %g, a=%b, b=%b, cin=%d,  s0=%d, c0=%d, s1=%d, c1=%d, s2=%d, c2=%d, s3=%d, c3=%d ", $time, a,b,cin,s0,c0,s1,c1,s2,c2,s3,c3);
      
    #5 a=4'b0011;b=4'b1110;cin=1;
    #5 a=4'b0000;b=4'b0101;
    #5 a=4'b1011;b=4'b1001;
    #5 a=4'b0010;b=4'b1100;
    #5 a=4'b0001;b=4'b1101;
    #10 $finish;
  end
endmodule
