----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:36 11/10/2016 
-- Design Name: 
-- Module Name:    fifo_test - Behavioral 
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
use std.textio.all;
use ieee.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fifo_test is
end fifo_test;

architecture Behavioral of fifo_test is

component TwoDFilter is
Port( CLK              : in STD_LOGIC;
		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
      START_PROCESS    : in  STD_LOGIC;
		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
	   RESULT_AVAILABLE : out  STD_LOGIC);
end component;

--FIFO 1
--Inputs
signal clk : std_logic := '0';
	
signal count_clk: integer range 0 to 255 := 0;	

signal endoffile: std_logic := '0';
signal fileready: std_logic := '0';
signal pixel: std_logic_vector (7 downto 0);

signal start_process: std_logic;
signal result: std_logic_vector (7 downto 0);
signal result_available: std_logic := '0';
signal enable_filter: std_logic := '0';


signal RESET_counter: std_logic;
-- Clock period definitions
constant clk_period : time := 10 ns;

begin
  
filter1: TwoDFilter Port map( 
		CLK              => clk,
		DATA_IN          =>std_logic_vector(to_unsigned(count_clk, 8)),
      START_PROCESS    => start_process,
		RESULT           => result,
	   RESULT_AVAILABLE => result_available
		);
		
		
  -- Clock process definitions
clk_process :process
begin
		
		  clk <= '0';
		  wait for clk_period/2;
		  clk <= '1';
		  wait for clk_period/2;
		
end process;

clk_counter_process :process(CLK, RESET_counter)
begin
	
	if (RESET_counter = '1') then
		count_clk <= 0;
	else
		if (CLK'event and CLK = '1') then
			if count_clk = 255 then
				count_clk <= 0;
			else
				count_clk <= count_clk + 1;
			end if;
			
		end if;
	end if;
end process;

READFILE:process(CLK)
  FILE infile : text is in "C:\Users\av721115\realTimeFiltering\Lena128x128g_8bits.dat";
  variable line_var: line;
  variable value :std_logic_vector (7 downto 0);    
  begin
	 if (CLK'event and CLK = '1') then
	 
			-- while not endfile(infile) loop( 
			if (not endfile(infile)) then
					
					readline (infile,line_var);
					read (line_var,value);
					pixel <= value;					
				   fileready <= '1';
					endoffile <= '0';
			else
				fileready <= '0';
				endoffile <= '1';
				file_close (infile);
			end if;
		
	else null;
	end if;
 end process;
 
WRITEFILE:process(CLK, pixel_filt, fileready)
FILE outfile : text is out "output.dat";
variable line_var, line_out : line;
begin
	 if (CLK'event and CLK = '1') then 
		 if fileready = '1' then
			write(line_out, pixel_filt, right);
			writeline(outfile, line_out);
		 else
			if endoffile = '1' then
				file_close (outfile);
			end if;
		 end if;
	end if;
 end process;
 
 
filtering: process(CLK, fileready)

begin
	 if (CLK'event and CLK = '1') then 
		if (fileready = '1' and endoffile = '0') then
			
			start_mem <= '1';
			RESET_counter  <= '0';
			
			enable_filter <= PIXEL_READY;
					
		
			--pixel_filt <= 
		end if;
	 end if;
end process;

end Behavioral;

-- file IO example
--http://vhdlguru.blogspot.fr/2010/03/reading-and-writing-files-in-vhdl-easy.html
