module half_adder_tb();
  reg a,b;
  wire s,c;
  
  half_adder ha1(.s(s),.c(c),.a(a),.b(b));
  initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,half_adder_tb);
    
    a=0;b=0;
    //s=0;c=0;
    $monitor("At time: %g, a=%d, b=%d, s=%d, c=%d", $time, a,b,s,c);
      
    #5 a=1;b=0;
    #5 a=0;b=1;
    #5 a=1;b=1;
    #5 a=0;b=0;
    
    #10 $finish;
  end
endmodule
