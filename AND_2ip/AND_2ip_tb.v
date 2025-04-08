module AND_2ip_tb;
  reg a,b;
  wire c;
  
  AND_2ip and1(.c(c),.a(a),.b(b));
  initial begin
    $dumpfile("AND_2ip.vcd");
    $dumpvars(0,AND_2ip_tb);
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
