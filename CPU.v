module CPU(
  input clk, rst
);
  
  wire[7:0] pc_addr;
  wire[15:0] ins;
  wire wr_en,m_wr_en; //??????
  wire[2:0] alu_op; //??????
  wire[15:0] outA,outB,result;
  wire[15:0] read_data; //??????
  
  PC pc(.clk(clk), .rst(rst), .pc(pc_addr));
  InsMem insMem(.addr(pc_addr),.ins(ins));
  ctrlUnit ctl(.opCode(ins[15:9]),.wr_en(wr_en),.m_wr_en(m_wr_en), .alu_op(alu_op));  //??????
  regFile regs(.read_reg1(ins[8:6]), .read_reg2(ins[5:3]), .write_reg(ins[2:0]),
        .reg1(outA), .reg2(outB), .write_data(result), .wr_en(wr_en), .clk(clk)
  );
  ALU alu(.in1(outA), .in2(outB),.alu_op(alu_op), .Z(result) );
  RAM ram(.clk(clk), .m_wr_en(m_wr_en), .write_data(result), .addr(ins[5:0]), .read_data(read_data)); //??????

endmodule
