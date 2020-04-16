
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity norgate is
port(A,B: IN STD_LOGIC;Y:OUT STD_LOGIC);
end norgate;

architecture Behavioral_norgate of norgate is
begin
process(A,B)
constant rise_time:TIME:= 10 ns;
constant fall_time:TIME :=8 ns;
begin
if A='0' AND B='0' then
Y<='1' AFTER rise_time;
else
Y<='0' AFTER fall_time;
end if;
end process;
end Behavioral_norgate;

