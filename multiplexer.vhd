
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity multiplexer is
port(A,B,C,D:IN STD_LOGIC;SEL:IN STD_LOGIC_VECTOR(1 DOWNTO 0);Y:OUT STD_LOGIC);
end multiplexer;

architecture Behavioral of multiplexer is
constant muxdelay:time:=10 ns;--to mimic the real behaviour
begin
process(A,B,C,D,SEL)
variable temp:std_logic;
begin
case SEL is
when "00" =>temp:=A;-- these are branches of case statement
when "01" =>temp:=B;
when "10" => temp:=C;
when others => temp:='X';--X means unknown and U means uninitilized and z means high impedence
end case;
Y<=temp after muxdelay;
end process;

end Behavioral;

--For mimic real behaviour that is propagation delays we use the delays
