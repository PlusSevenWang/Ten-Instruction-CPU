module regFile (
  input wire[2:0] read_reg1, read_reg2, write_reg,
  output wire[15:0] reg1, reg2,
  input wire[15:0] write_data,
  input wr_en, clk
);

  reg[15:0] regs[0:7];  //8?16????
  
  initial begin
    regs[0] = 0;
    regs[1] = 16'h0001;
    regs[2] = 16'h0002;
    regs[3] = 16'h0003;
  end
  
  assign reg1 = regs[read_reg1];
  assign reg2 = regs[read_reg2];
  
  always@(negedge clk) begin
    if(wr_en == 1)
      regs[write_reg] = write_data;
  end
  
endmodule