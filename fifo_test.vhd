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
--
--COMPONENT cache_mem
--  PORT ( CLK : in STD_LOGIC;
--			  DATA : in  STD_LOGIC_VECTOR (7 downto 0);
--           START_MEM : in  STD_LOGIC;
--			  PIXEL_READY : out STD_LOGIC;
--			  P8 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P7 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P6 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P5 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P4 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P3 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P2 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P1 : out  STD_LOGIC_VECTOR (7 downto 0);
--           P0 : out  STD_LOGIC_VECTOR (7 downto 0));
--END COMPONENT;
--
--COMPONENT PROCESS_NOFILTER is
--Port ( P0 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P1 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P2 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P3 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P4 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P5 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P6 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P7 : in  STD_LOGIC_VECTOR (7 downto 0);
--           P8 : in  STD_LOGIC_VECTOR (7 downto 0);
--			  Enable : in STD_LOGIC;
--           FILTER_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
--           CLK : in  STD_LOGIC;
--           RESULT_AVAILABLE : out  STD_LOGIC);
--end COMPONENT;
 
component TwoDFilter is
Port( CLK              : in STD_LOGIC;
		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
      START_PROCESS    : in  STD_LOGIC;
		RESET            : in STD_LOGIC;
		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
	   RESULT_AVAILABLE : out  STD_LOGIC);
end component;

--FIFO 1
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
--signal enable_filter: std_logic := '0';
--
--signal start_mem : std_logic;
--
--signal P0: std_logic_vector (7 downto 0);
--signal P1: std_logic_vector (7 downto 0);
--signal P2: std_logic_vector (7 downto 0);
--signal P3: std_logic_vector (7 downto 0);
--signal P4: std_logic_vector (7 downto 0);
--signal P5: std_logic_vector (7 downto 0);
--signal P6: std_logic_vector (7 downto 0);
--signal P7: std_logic_vector (7 downto 0);
--signal P8: std_logic_vector (7 downto 0);
--
--SIGNAL PIXEL_READY : STD_LOGIC;
--signal FILTER_OUT: std_logic_vector (7 downto 0);
signal RESET_counter: std_logic := '0';
signal reset : std_logic := '0';

signal flag:std_logic:= '0';

-- Clock period definitions
constant clk_period : time := 10 ns;

begin
  
filter1: TwoDFilter Port map( 
		CLK              => clk,
		DATA_IN          => pixel,--std_logic_vector(to_unsigned(count_clk, 8)),
      START_PROCESS    => start_process,
		RESET            => reset,
		RESULT           => result,
	   RESULT_AVAILABLE => result_available
		);
--		

--cache : cache_mem PORT MAP (
--	  CLK => clk,
--	  DATA => std_logic_vector(to_unsigned(count_clk, 8)),
--	  START_MEM => start_mem,
--	  PIXEL_READY => PIXEL_READY,
--	  P0 => P0,
--	  P1 => P1,
--	  P2 => P2,
--	  P3 => P3,
--	  P4 => P4,
--	  P5 => P5,
--	  P6 => P6,
--	  P7 => P7,
--	  P8 => P8
--  );
--filter : PROCESS_NOFILTER Port map( 
--	  CLK => clk,
--	  P0 => P0,
--	  P1 => P1,
--	  P2 => P2,
--	  P3 => P3,
--	  P4 => P4,
--	  P5 => P5,
--	  P6 => P6,
--	  P7 => P7,
--	  P8 => P8,
--	  Enable => enable_filter, 
--	  FILTER_OUT => result,
--	  RESULT_AVAILABLE => RESULT_AVAILABLE 
--  );

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
	--start_mem <= '1';
	start_process <= '1';
	wait for clk_period;
	RESET_counter  <= '0';
	
	--wait for 60ns;
	wait;
end process;

READFILE:process(CLK)
  FILE infile : text is in "Lena128x128g_8bits.dat";
  variable line_var: line;
  variable value :std_logic_vector (7 downto 0);    
  begin
	 if (CLK'event and CLK = '1') then
		if enable_file_reading = '1' and endoffile = '0' then
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
		end if;
	end if;
 end process;


WRITEFILE:process(CLK)
FILE outfile : text is out "output.dat";
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
	
--	 if (CLK'event and CLK = '1') then 
--		if enable_file_reading = '1' then
--			 if fileready = '1' then
--				write(line_out, result, right);
--				writeline(outfile, line_out);
--			 else
--				if endoffile = '1' then
--					file_close (outfile);
--				end if;
--			 end if;
--		end if;
--	end if;
 end process;
 
 
--filtering: process(CLK)

--begin
--	 if (CLK'event and CLK = '1') then 
--		if (fileready = '1' and endoffile = '0') then
--			
--			--start_mem <= '1';
--			--RESET_counter  <= '0';
--			
--			--enable_filter <= PIXEL_READY;
--					
--		
--			--pixel_filt <= 
--		end if;
--	 end if;
--end process;

end Behavioral;

-- file IO example
--http://vhdlguru.blogspot.fr/2010/03/reading-and-writing-files-in-vhdl-easy.html
