
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity encoder is
    Port ( A : in  BIT_VECTOR (3 downto 0);
           Y :  inout  BIT_VECTOR(1 DOWNTO 0));
end encoder;

architecture Behavioral of encoder is

begin
process(A,Y)
begin
case A is
when "0001" => Y<="00";
when "0010" => Y<="01";
when "0100" => Y<="10";
when others => Y<="11";

end case;
end process;

end Behavioral;

