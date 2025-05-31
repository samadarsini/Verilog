module dff_tb();
  reg clk,reset,d;
  wire q;
  
  dff dff1(.clk(clk),.reset(reset),.d(d),.q(q));
  always #5 clk <= ~clk;
  
  initial begin
    $dumpfile("dff.vcd");
    $dumpvars(0,dff_tb);
    reset<=0;
    d<=0;
    clk<=0;
    $monitor("At time: %g, clk=%d, reset=%d, d=%d, q=%d", $time, clk,reset,d,q);
    #10 reset <=1;
    #5 d<=1;
    #5 d<=0;
    #5 d<=1;
    #5 d<=0;
    #10 $finish;
  end
endmodule
