----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:28:16 11/16/2016 
-- Design Name: 
-- Module Name:    cache_mem - Behavioral 
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

entity cache_mem is
    Port ( CLK : in STD_LOGIC;
			  DATA : in  STD_LOGIC_VECTOR (7 downto 0);
           START_MEM : in  STD_LOGIC;
			  PIXEL_READY : out STD_LOGIC;
			  EMPTY : out STD_LOGIC;
           P8 : out  STD_LOGIC_VECTOR (7 downto 0);
           P7 : out  STD_LOGIC_VECTOR (7 downto 0);
           P6 : out  STD_LOGIC_VECTOR (7 downto 0);
           P5 : out  STD_LOGIC_VECTOR (7 downto 0);
           P4 : out  STD_LOGIC_VECTOR (7 downto 0);
           P3 : out  STD_LOGIC_VECTOR (7 downto 0);
           P2 : out  STD_LOGIC_VECTOR (7 downto 0);
           P1 : out  STD_LOGIC_VECTOR (7 downto 0);
           P0 : out  STD_LOGIC_VECTOR (7 downto 0));
end cache_mem;

architecture Behavioral of cache_mem is

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
signal din1 : std_logic_vector(7 downto 0) := (others => '0');
signal wr_en1 : std_logic := '1';
signal prog_full_thresh: STD_LOGIC_VECTOR(9 DOWNTO 0) := "0001111010";-- 123
  --Outputs
signal dout1 : std_logic_vector(7 downto 0);
signal full1 : std_logic;
signal data_count1 : STD_LOGIC_VECTOR(9 DOWNTO 0);
signal prog_full1 : STD_LOGIC;

--FIFO 2
signal din2 : std_logic_vector(7 downto 0) := (others => '0');
signal wr_en2 : std_logic := '1';
  --Outputs
signal dout2 : std_logic_vector(7 downto 0);
signal full2 : std_logic;
signal data_count2 : STD_LOGIC_VECTOR(9 DOWNTO 0);
signal prog_full2 : STD_LOGIC;
signal rst: std_logic;

signal empty2: STD_LOGIC;

signal p0_temp: std_logic_vector (7 downto 0) := (others => '0');
signal p1_temp: std_logic_vector (7 downto 0);
signal p2_temp: std_logic_vector (7 downto 0);
signal p3_temp: std_logic_vector (7 downto 0);
signal p4_temp: std_logic_vector (7 downto 0);
signal p5_temp: std_logic_vector (7 downto 0);
signal p6_temp: std_logic_vector (7 downto 0);
signal p7_temp: std_logic_vector (7 downto 0);
signal p8_temp: std_logic_vector (7 downto 0);

signal counter: integer := 0;
signal counter2: integer := 0;

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
    empty => open,
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
  
main: process(CLK, START_MEM)
begin
	if (CLK'event and CLK = '1') then
		
		if (START_MEM = '1') then
		
			if (full1 = '0' and full2 = '0') then
				
				if (counter > 257) then
					PIXEL_READY <= '1';
				else
					counter <= counter + 1;
					PIXEL_READY <= '0';
				end if;
				
				P0_temp <= P1_temp;
				P1_temp <= P2_temp;
				P2_temp <= dout2;
				
				din2 <= P3_temp;
				P3_temp <= P4_temp;
				P4_temp <= P5_temp;
				P5_temp <= dout1;
				
				din1 <= P6_temp;
				P6_temp <= P7_temp;
				P7_temp <= P8_temp;
				P8_temp <= DATA;
			end if;
		end if;
	end if;
end process;

P0 <= P0_temp;
P1 <= P1_temp;
P2 <= P2_temp;
P3 <= P3_temp;
P4 <= P4_temp;
P5 <= P5_temp;
P6 <= P6_temp;
P7 <= P7_temp;
P8 <= P8_temp;

empty_flag: process(CLK)
begin

if empty2 then
	if (counter2 > 2) then
		EMPTY <= '1';
	else
		EMPTY <= '0';
		counter2 <= counter2 + 1;
	end if;
end if;

end process empty_flag;

end Behavioral;

