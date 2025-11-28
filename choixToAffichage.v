module bornesDVersAffichage(dMin, dMax, bcd0, bcd1, bcd2, en0, en1);

input[6:0] dMin, dMax;
output[3:0] bcd0, bcd1, bcd2;
output en0, en1;
reg en0, en1;

wire[7:0] typeD;
assign typeD = (dMax + 1) - dMin;

assign bcd0 = typeD / 100; // Centaine
assign bcd1 = typeD / 10;  // Dizaine
assign bcd2 = typeD % 10;  // Unité

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
