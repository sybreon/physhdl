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

