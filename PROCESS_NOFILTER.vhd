----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:29 11/16/2016 
-- Design Name: 
-- Module Name:    PROCESS_MEAN - Behavioral 
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
use ieee.std_logic_textio.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;


entity PROCESS_NOFILTER is
Port ( P0 : in  STD_LOGIC_VECTOR (7 downto 0);
           P1 : in  STD_LOGIC_VECTOR (7 downto 0);
           P2 : in  STD_LOGIC_VECTOR (7 downto 0);
           P3 : in  STD_LOGIC_VECTOR (7 downto 0);
           P4 : in  STD_LOGIC_VECTOR (7 downto 0);
           P5 : in  STD_LOGIC_VECTOR (7 downto 0);
           P6 : in  STD_LOGIC_VECTOR (7 downto 0);
           P7 : in  STD_LOGIC_VECTOR (7 downto 0);
           P8 : in  STD_LOGIC_VECTOR (7 downto 0);
           Filter_out : out  STD_LOGIC_VECTOR (7 downto 0);
			  Enable : in STD_LOGIC;
           CLK : in  STD_LOGIC;
           Result_Available : out  STD_LOGIC);
end PROCESS_NOFILTER;


architecture Behavioral of PROCESS_NOFILTER is

begin

pn :process(CLK)
  
begin
	if Enable = '1' then
	 if ( CLK'event and CLK = '1') then
		
			Filter_out <= P4;
			Result_Available <= '1';
		end if;
	end if;
end process;


end Behavioral;
