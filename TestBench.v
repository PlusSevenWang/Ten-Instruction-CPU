module testBench;
  reg clk, rst;
  
  always#5 clk = ~clk;
  
  initial begin
    clk = 0;
    rst = 1;
    
    #10
    
    rst = 0;
    
    #30
    
    $Stop;
    
  end
  
  CPU cpu(.clk(clk), .rst(rst));
  
endmodule
