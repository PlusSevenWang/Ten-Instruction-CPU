module InsMem(
  input wire[7:0] addr,
  output wire[15:0] ins
);

reg[15:0] insMem [0:63];  //64?16?

initial begin
  $readmemh("ins.data",insMem);
end

assign ins = insMem[addr];

endmodule