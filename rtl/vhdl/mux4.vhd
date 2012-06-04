entity mux4 is  
  port (
    out : out std_logic;
    sel : in  std_logic_vector(1 downto 0);
    s0, s1, s2, s3  : in  std_logic;   
    ); 
end mux4;
architecture rtl of mux4 is
begin  -- rtl
  process (sel, s0, s1, s2, s3)
  begin
    case sel is
      when "00" => out <= s0;
      when "01" => out <= s1;
      when "10" => out <= s2;
      when others => out <= s3;
    end case;
  end process;
end rtl;

-- Copyright (C) 2012, Shawn Tan <shawn.tan@sybreon.com>
--
-- This is free software: you can redistribute it and/or modify it under
-- the terms of the GNU General Public License as published by the Free
-- Software Foundation, either version 3 of the License, or (at your
-- option) any later version.
--
-- This is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this. If not, see <http://www.gnu.org/licenses/>.  */
