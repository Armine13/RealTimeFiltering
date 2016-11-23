----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:16:53 11/23/2016 
-- Design Name: 
-- Module Name:    TwoDFilter - Behavioral 
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

entity TwoDFilter is
Port( CLK              : in STD_LOGIC;
		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
      START_PROCESS    : in  STD_LOGIC;
		RESET            : in STD_LOGIC;
		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
	   RESULT_AVAILABLE : out  STD_LOGIC);
end TwoDFilter;

architecture Behavioral of TwoDFilter is

COMPONENT cache_mem
  PORT ( CLK : in STD_LOGIC;
			  DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           START_MEM : in  STD_LOGIC;
			  PIXEL_READY : out STD_LOGIC;
           P8 : out  STD_LOGIC_VECTOR (7 downto 0);
           P7 : out  STD_LOGIC_VECTOR (7 downto 0);
           P6 : out  STD_LOGIC_VECTOR (7 downto 0);
           P5 : out  STD_LOGIC_VECTOR (7 downto 0);
           P4 : out  STD_LOGIC_VECTOR (7 downto 0);
           P3 : out  STD_LOGIC_VECTOR (7 downto 0);
           P2 : out  STD_LOGIC_VECTOR (7 downto 0);
           P1 : out  STD_LOGIC_VECTOR (7 downto 0);
           P0 : out  STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

COMPONENT PROCESS_MEAN
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
end component;

signal pixel_ready : STD_LOGIC;
signal P8 :  STD_LOGIC_VECTOR (7 downto 0);
signal P7 : STD_LOGIC_VECTOR (7 downto 0);
signal P6 : STD_LOGIC_VECTOR (7 downto 0);
signal P5 : STD_LOGIC_VECTOR (7 downto 0);
signal P4 : STD_LOGIC_VECTOR (7 downto 0);
signal P3 : STD_LOGIC_VECTOR (7 downto 0);
signal P2 : STD_LOGIC_VECTOR (7 downto 0);
signal P1 : STD_LOGIC_VECTOR (7 downto 0);
signal P0 : STD_LOGIC_VECTOR (7 downto 0);
signal enable_filter : STD_LOGIC;


type LIST_STATE is (S1,S2,S3,S4,S5);
signal STATE : LIST_STATE;

begin

cache : cache_mem PORT MAP (
	  CLK => clk,
	  DATA => DATA_IN,
	  START_MEM => START_PROCESS,
	  PIXEL_READY => pixel_ready,
	  P0 => P0,
	  P1 => P1,
	  P2 => P2,
	  P3 => P3,
	  P4 => P4,
	  P5 => P5,
	  P6 => P6,
	  P7 => P7,
	  P8 => P8
  );
filter : PROCESS_MEAN Port map ( 
	  P0 => P0,
	  P1 => P1,
	  P2 => P2,
	  P3 => P3,
	  P4 => P4,
	  P5 => P5,
	  P6 => P6,
	  P7 => P7,
	  P8 => P8,
	  Filter_out => RESULT,
	  Enable => enable_filter,
	  CLK => CLK,
	  Result_Available => result_available
	  );

main : process (CLK)
begin
 if (RESET = '1') then STATE <= S1;
								
 elsif (CLK'event and CLK = '1') then
	
--	if (fileready = '1' and endoffile = '0') then
--			
--			start_mem <= '1';
--			RESET_counter  <= '0';
--			
--			enable_filter <= PIXEL_READY;
--					
--		
--			--pixel_filt <= 
--		end if;
--	
--	CLK              : in STD_LOGIC;
--		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
--      START_PROCESS    : in  STD_LOGIC;
--		RESET            : in STD_LOGIC;
--		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
--	   RESULT_AVAILABLE : out  STD_LOGIC);
--START_MEM

	case STATE is
		when S1 =>
			START_MEM <= '1';
			enable_filter <= '0';
			
			if pixel_ready = '1' then STATE <= S2; end if;
			
		when S2 => 
			enable_filter <= '1';
			
		when S3 => 
			
		when others => STATE <= S1;
         
          
      end case;
    end if;
end process main;

end Behavioral;

