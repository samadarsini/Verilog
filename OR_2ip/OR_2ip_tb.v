module OR_2ip_tb;
  reg a,b;
  wire c;
  
  OR_2ip or1(.c(c),.a(a),.b(b));
  
  initial begin
    a=0;b=0;
    
    $dumpfile("OR_2ip_tb.vcd");
    $dumpvars(0,OR_2ip_tb);
    
    $monitor("At time %g: a=%b, b=%b, c=%b", $time,a,b,c);
    
    #5 a=1'b1;
    #5 b=1'b1;
    #5 a=1'b0;
    #5 b=1'b0;
    #5 b=1'b1;
    #5 a=1'b1;

    #10 $finish;
  end
endmodule
