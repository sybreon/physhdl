always @(sel or s0 or s1 or s2 or s3)
  case (sel)
    2'b00: out <= s0;
    2'b01: out <= s1;
    2'b10: out <= s2;
    default: out <= s3;    
  endcase // case (sel)
   