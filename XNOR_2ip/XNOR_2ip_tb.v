module XNOR_2ip_tb;
  reg a,b;
  wire c;
  
  XNOR_2ip xnor1(.c(c),.a(a),.b(b));
  initial begin
    $dumpfile("XNOR_2ip.vcd");
    $dumpvars(0,XNOR_2ip_tb);
    a=0; b=0;
    
    $monitor("At time %g: a=%b, b=%b, c=%b", $time, a, b, c);
    
    #5 a=1'b1;
    #5 b=1'b1;
    #5 a=1'b0;
    #5 b=1'b0;
    #5 b=1'b1;
    #5 a=1'b1;

    #10 $finish;
  end
endmodule 
