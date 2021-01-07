module RAM(
  input clk, m_wr_en,
  input wire [15:0] write_data,
  input wire [5:0] addr,
  output wire [15:0] read_data
);
  
  reg [15:0] unit[0:63];  //64?16?????
  
  assign read_data = unit[addr];
  
  always@(posedge clk) begin
    if(m_wr_en == 1)
      unit[addr] <= write_data;
  end
  
endmodule