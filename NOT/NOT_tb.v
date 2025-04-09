module NOT_tb;
  reg a;
  wire b;
  
  NOT not1(.a(a),.b(b));
  initial begin
    $dumpfile("NOT.vcd");
    $dumpvars(0,NOT_tb);
    a=0;
    
    $monitor("At time %g: a=%b, b=%b", $time, a, b);
    
    #5 a=1'b1;
    #5 a=1'b0;
    #5 a=1'b1;
    #5 a=1'b0;
    #5 a=1'b1; 
    
    #15 $finish;
  end
endmodule
