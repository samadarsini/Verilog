module full_adder_tb();
  reg a,b,cin;
  wire s,c;
  
  full_adder fa1(.s(s),.c(c),.a(a),.b(b),.cin(cin));
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,full_adder_tb);
    
    a=0;b=0;cin=0;
    //s=0;c=0;
    $monitor("At time: %g, a=%d, b=%d, cin=%d, s=%d, c=%d", $time, a,b,cin,s,c);
      
    #5 a=1;b=0;cin=0;
    #5 a=0;b=1;cin=1;
    #5 a=1;b=1;cin=0;
    #5 a=0;b=0;cin=1;
    #5 a=1;b=1;cin=1;
    #10 $finish;
  end
endmodule
