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


entity PROCESS_MEAN is
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
end PROCESS_MEAN;


architecture Behavioral of PROCESS_MEAN is

 signal Sum0 :std_logic_vector (8 downto 0);
 signal Sum1 :std_logic_vector (8 downto 0);
 signal Sum2 :std_logic_vector (8 downto 0);
 signal Sum3 :std_logic_vector (8 downto 0);
 signal Sum4 :std_logic_vector (9 downto 0);
 signal Sum5 :std_logic_vector (9 downto 0);
 signal Sum6 :std_logic_vector (10 downto 0);


begin

pn :process(CLK)

variable compt : integer := 0 ;
begin
--	if Enable = '1' then
--	 if ( CLK'event and CLK = '1') then
--		
--			Filter_out <= P4;
--			Result_Available <= '1';
--		end if;
--	end if;

	if (Enable = '1') then   -- If Cache memory not ready
		
		if (CLK'event and CLK = '1') then    -- Cache memory ready to send 
		
			Sum0 <= P0 + P1 ;			-- FIRST STAGE ADDER
			Sum1 <= P2 + P3 ;			-- FIRST STAGE ADDER
			Sum2 <= P5 + P6 ;			-- FIRST STAGE ADDER
			Sum3 <= P7 + P8 ;			-- FIRST STAGE ADDER


			Sum4 <= Sum0 + Sum1 ;	-- SECOND STAGE ADDER 
			Sum5 <= Sum2 + Sum3 ;	-- SECOND STAGE ADDER 


			Sum6 <= Sum4  + Sum5 ; -- THIRD STAGE ADDER
		  
		  
			--Filter_out <= Sum6 srl 3 ;--  division by 8 Right shift 3 digits

			Filter_out <= Sum6(7 downto 0) ;

			Compt := Compt +1 ;

			if (Compt = 3) then 

				Result_available <= '1';
				
			end if ;
			
		end if;
	end if;
end process;


end Behavioral;
