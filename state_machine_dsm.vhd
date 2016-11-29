----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:08 11/18/2016 
-- Design Name: 
-- Module Name:    state_machine_dsm - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity state_machine_dsm is
Port (     CLK : in  STD_LOGIC;
			  RESET : in STD_LOGIC;
           a : in  STD_LOGIC;
			  b : in  STD_LOGIC;
			  S1 : out STD_LOGIC;
			  S2 : out STD_LOGIC;
			  
			  ST_OUT : out STD_LOGIC_VECTOR(4 downto 0)
           );
end state_machine_dsm;

architecture Behavioral of state_machine_dsm is

constant STATE1 : STD_LOGIC_VECTOR(4 downto 0) := "00001";
constant STATE2 : STD_LOGIC_VECTOR(4 downto 0) := "00010";
constant STATE3 : STD_LOGIC_VECTOR(4 downto 0) := "00100";
constant STATE4 : STD_LOGIC_VECTOR(4 downto 0) := "01000";
constant STATE5 : STD_LOGIC_VECTOR(4 downto 0) := "10000";

--type FSM is (STATE1, STATE2, STATE3, STATE4, STATE5);

signal current_state :  STD_LOGIC_VECTOR(4 downto 0);-- := "00001";

begin
P1:process(CLK)

begin
	if (RESET = '1') then
		current_state <= "00001";
	else
		if (CLK'event and CLK = '1') then 
			C1: case current_state is
				when STATE1 => if (a = '1' and b = '0') then current_state <= STATE2; end if;
				when STATE2 => if (a = '0' and b = '1') then current_state <= STATE4; elsif (a='0' and b='0')  then current_state <= STATE3; end if;
				when STATE3 => if (a = '0' and b = '1') then current_state <= STATE5; elsif (a='1' and b='0')  then current_state <= STATE2; elsif (a='1' and b='1')  then current_state <= STATE1; end if;
				when STATE4 => if (a = '0' and b = '0') then current_state <= STATE5; end if;
				when STATE5 => current_state <= STATE1;
				when others => current_state <= STATE1;
			end case C1;
		end if;
	end if;
end process;

P2: process(CLK, current_state)
begin
	S1 <= current_state(2) or current_state(3); 
	S2 <= current_state(3);

end process;

stateDisplay: process(CLK)
begin
	C1: case current_state is
			when STATE1 => ST_OUT <= "10000";
			when STATE2 => ST_OUT <= "01000";
			when STATE3 => ST_OUT <= "00100";
			when STATE4 => ST_OUT <= "00010";
			when STATE5 => ST_OUT <= "00001";
			when others => ST_OUT <= "00001";
		end case C1;
end process;

end Behavioral;
