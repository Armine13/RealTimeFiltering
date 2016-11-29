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

entity tb_TwoDFilter_emboss is
end tb_TwoDFilter_emboss;

architecture Behavioral of tb_TwoDFilter_emboss is

 
component TwoDFilter_emboss is
Port( CLK              : in STD_LOGIC;
		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
      START_PROCESS    : in  STD_LOGIC;
		RESET            : in STD_LOGIC;
		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
	   RESULT_AVAILABLE : out  STD_LOGIC);
end component;

--Inputs
signal clk : std_logic := '0';
	
signal count_clk: integer range 0 to 255 := 0;	
signal count_clk_long: integer;

signal endoffile: std_logic := '0';
signal fileready: std_logic := '0';
signal pixel: std_logic_vector (7 downto 0) := (others => '0');

signal start_process: std_logic := '0';
signal result: std_logic_vector (7 downto 0)  := (others => '0');
signal result_available: std_logic := '0';

signal enable_file_reading: std_logic := '0';


signal RESET_counter: std_logic := '0';
signal reset : std_logic := '0';

signal flag:std_logic:= '0';

-- Clock period definitions
constant clk_period : time := 10 ns;

begin
  
filter1: TwoDFilter_emboss Port map( 
		CLK              => clk,
		DATA_IN          => pixel,
		START_PROCESS    => start_process,
		RESET            => reset,
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
		count_clk_long <= 0;
	else
		if (CLK'event and CLK = '1') then
			count_clk_long <= count_clk_long + 1;
			
			if count_clk = 255 then
				count_clk <= 0;
			else
				count_clk <= count_clk + 1;
			end if;
			
		end if;
	end if;
end process;

stim: process

begin
	RESET_counter  <= '1';
	RESET <= '1';
	wait for 65ns;
	RESET <= '0';
	enable_file_reading <= '1';
	start_process <= '1';
	wait for clk_period;
	RESET_counter  <= '0';
	
	--wait for 60ns;
	wait;
end process;

READFILE:process(CLK)
  FILE infile : text is in "Lena128x128g_8bits.dat";--"C:\Users\av721115\realTimeFiltering\Lena128x128g_8bits.dat";
  variable line_var: line;
  variable value :std_logic_vector (7 downto 0);    
  begin
	 if (CLK'event and CLK = '1') then
		if enable_file_reading = '1' and endoffile = '0' then
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
		end if;
	end if;
 end process;


WRITEFILE:process(CLK)
FILE outfile : text is out "output.dat";--"C:\Users\av721115\realTimeFiltering\output.dat";
variable line_var, line_out : line;
variable temp: std_logic_vector(7 downto 0):= (others => '0');
begin
	if flag = '0' then
		write(line_out, temp, right);
		writeline(outfile, line_out);
		flag <= '1';
	end if;
	 if (CLK'event and CLK = '1') then 
		if result_available = '1' then
			 	write(line_out, result, right);
				writeline(outfile, line_out);
		elsif endoffile = '1' and result_available = '0' then
					file_close (outfile);
		end if;
		
	end if;
	
 end process;

end Behavioral;

-- file IO example
--http://vhdlguru.blogspot.fr/2010/03/reading-and-writing-files-in-vhdl-easy.html
