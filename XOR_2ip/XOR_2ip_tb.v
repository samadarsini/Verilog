module XOR_2ip_tb;
  reg a,b;
  wire c;
  
  XOR_2ip xor1(.c(c),.a(a),.b(b));
  initial begin
    $dumpfile("XOR_2ip.vcd");
    $dumpvars(0,XOR_2ip_tb);
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
