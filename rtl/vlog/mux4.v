module mux4 (out, sel, s0, s1, s2, s3);
   output      out;   
   input [1:0] sel;
   input       s0, s1, s2, s3;
   always @(sel or s0 or s1 or s2 or s3)
     case (sel)
       2'b00: out <= s0;
       2'b01: out <= s1;
       2'b10: out <= s2;
       default: out <= s3;    
     endcase // case (sel)
endmodule // mux4

// Copyright (C) 2012, Shawn Tan <shawn.tan@sybreon.com>
// 
// This is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free
// Software Foundation, either version 3 of the License, or (at your
// option) any later version.
//
// This is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
// FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
// for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this. If not, see <http://www.gnu.org/licenses/>.