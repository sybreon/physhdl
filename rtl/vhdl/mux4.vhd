process (sel, s0, s1, s2, s3)
begin
  case sel is
    when "00" => out <= s0;
    when "01" => out <= s1;
    when "10" => out <= s2;
    when others => out <= s3;
  end case;
end process;
