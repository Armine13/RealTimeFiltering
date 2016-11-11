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




COMPONENT fifo_8x1024
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    prog_full_thresh : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
    dout : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC;
    data_count : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
    prog_full : OUT STD_LOGIC
  );
END COMPONENT;

--FIFO 1
--Inputs
signal clk : std_logic := '0';
signal rst : std_logic := '0';
signal din1 : std_logic_vector(7 downto 0) := (others => '0');
signal wr_en1 : std_logic := '1';
--signal rd_en1 : std_logic;
signal prog_full_thresh: STD_LOGIC_VECTOR(9 DOWNTO 0) := "0001111100";-- 124
  --Outputs
signal dout1 : std_logic_vector(7 downto 0);
signal full1 : std_logic;
signal empty1 : std_logic;
signal data_count1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
signal prog_full1 : STD_LOGIC;

--FIFO 2
signal din2 : std_logic_vector(7 downto 0) := (others => '0');
signal wr_en2 : std_logic := '1';
--signal rd_en2 : std_logic;
  --Outputs
signal dout2 : std_logic_vector(7 downto 0);
signal full2 : std_logic;
signal empty2 : std_logic;
signal data_count2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
signal prog_full2 : STD_LOGIC;
	
signal count_clk: integer range 0 to 255 := 0;	

signal pixel: std_logic_vector (7 downto 0);
signal endoffile: std_logic := '0';
signal fileready: std_logic := '0';

signal P0: std_logic_vector (7 downto 0);
signal P1: std_logic_vector (7 downto 0);
signal P2: std_logic_vector (7 downto 0);
signal P3: std_logic_vector (7 downto 0);
signal P4: std_logic_vector (7 downto 0);
signal P5: std_logic_vector (7 downto 0);
signal P6: std_logic_vector (7 downto 0);
signal P7: std_logic_vector (7 downto 0);
signal P8: std_logic_vector (7 downto 0);

-- Clock period definitions
constant clk_period : time := 10 ns;


function to_slv(str : string) return std_logic_vector is
  alias str_norm : string(str'length downto 1) is str;
  variable res_v : std_logic_vector(8 * str'length - 1 downto 0);
begin
  for idx in str_norm'range loop
    res_v(8 * idx - 1 downto 8 * idx - 8) := 
      std_logic_vector(to_unsigned(character'pos(str_norm(idx)), 8));
  end loop;
  return res_v;
end function;


begin
    -- Instantiate unit
fifo1 : fifo_8x1024  PORT MAP (
    clk => clk,
    rst => rst,
    din => din1,
    wr_en => wr_en1,
    rd_en => prog_full1,
    prog_full_thresh => prog_full_thresh,
    dout => dout1,
    full => full1,
    empty => empty1,
    data_count => data_count1,
    prog_full => prog_full1
  );
 
fifo2 : fifo_8x1024  PORT MAP (
    clk => clk,
    rst => rst,
    din => din2,
    wr_en => wr_en2,
    rd_en => prog_full2,
    prog_full_thresh => prog_full_thresh,
    dout => dout2,
    full => full2,
    empty => empty2,
    data_count => data_count2,
    prog_full => prog_full2
  ); 
  -- Clock process definitions
clk_process :process
begin
		
		  clk <= '0';
		  wait for clk_period/2;
		  clk <= '1';
		  wait for clk_period/2;
		
end process;

clk_counter_process :process(CLK)
begin
	
		  
	if (CLK'event and CLK = '1') then
		if count_clk = 127 then
			count_clk <= 0;
		else
			count_clk <= count_clk + 1;
		end if;
		
	end if;
end process;
--
--stim_proc: process
--
--   begin        
----    wr_en<='1';
----    rst<='1';
----    --rd_en<='0';
----    wait for clk_period * 10;
----    rst <='0';
----	 --wait for clk_period * 15;
----	 --wr_en <= '0';
----	 
--	if count_clk = 3 then
--		count_clk <= 0;
--	end if;
--    wait;
--end process;

--writeFifo: process(CLK, prog_full)
--begin
--	if (prog_full = '0' and rst = '0' and CLK'event and CLK = '1') then
--		din<= std_logic_vector(to_unsigned(count_clk, 8));
--	end if;
--end process;

READFILE:process(CLK)
  FILE infile : text is in "Lena128x128g_8bits.dat";
  variable line_var: line;
  variable value :std_logic_vector (7 downto 0);    
  begin
	 if (full1 = '0' and full2 = '0' and rst = '0' and CLK'event and CLK = '1') then
		-- while not endfile(infile) loop
		if (not endfile(infile)) then
				
				P0 <= P1;
				P1 <= P2;
				P2 <= dout2;
				
				din2 <= P3;
				P3 <= P4;
				P4 <= P5;
				P5 <= dout1;
				
				din1 <= P6;
				P6 <= P7;
				P7 <= P8;
				
				--readline (infile,line_var);
				--read (line_var,value);
				P8 <= std_logic_vector(to_unsigned(count_clk, 8));--value;
				
   	fileready <= '1';
	 else
		endoffile <= '1';
		file_close (infile);
		pixel <= (others => '0');
    end if;
	else 
		null;
	end if;
 end process;
 
WRITEFILE:process(pixel, endoffile, fileready)
FILE outfile : text is out "output.dat";
variable line_var, line_out : line;
begin
	 if endoffile = '0' and fileready = '1' then
		--file_open (outfile,"output.dat", write_mode);
		write(line_out, pixel, right);
		writeline(outfile, line_out);
	   --file_close (outfile);
	 else
		if endoffile = '1' then
			file_close (outfile);
		end if;
    end if;
 end process;
end Behavioral;

-- file IO example
--http://vhdlguru.blogspot.fr/2010/03/reading-and-writing-files-in-vhdl-easy.html