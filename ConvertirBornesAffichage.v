module ConvertBornesAffichage(min_de, max_de, bcd100, bcd10, bcd1, en0, en1);

input[6:0] min_de, max_de;
output[3:0] bcd100, bcd10, bcd1;
output en0, en1;
reg en0, en1;

wire[7:0] typeD;
assign typeD = (max_de + 1) - min_de;

assign bcd100 = typeD / 100;      // Centaines
assign bcd10 = (typeD / 10) % 10; // Dizaines
assign bcd1 = typeD % 10;         // Unités

always @(typeD) begin
  if (typeD >= 100) begin
    en0 <= 1;
    en1 <= 1;
  end
  else if (typeD >= 10) begin
    en0 <= 1;
    en1 <= 0;
  end
  else begin
    en0 <= 0;
    en1 <= 0;
  end
end

endmodule
