module ConvertBornesAffichage(min_de, faces_de, bcd100, bcd10, bcd1, en100, en10);

input[6:0] min_de, faces_de;
output[3:0] bcd100, bcd10, bcd1;
output en100, en10;
reg en100, en10;

assign bcd100 = faces_de / 100;      // Centaines
assign bcd10 = (faces_de / 10) % 10; // Dizaines
assign bcd1 = faces_de % 10;         // Unités

always @(faces_de) begin
  if (faces_de >= 100) begin
    en100 <= 1;
    en10 <= 1;
  end else if (faces_de >= 10) begin
    en100 <= 0;
    en10 <= 1;
  end else begin
    en100 <= 0;
    en10 <= 0;
  end
end

endmodule
