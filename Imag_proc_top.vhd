----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:06:53 11/29/2014 
-- Design Name: 
-- Module Name:    AudioProject - Behavioral 
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
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
library unisim;
use unisim.vcomponents.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Imag_Proc_top is
    Port (  clk_i       : in  std_logic;
      rst_i       : in  std_logic;
      
		-- LED
		LED			: out std_logic_vector(15 downto 0);
		-- VGA STUFF
		vga_hs_o       : out std_logic;
      vga_vs_o       : out std_logic;
      vga_red_o      : out std_logic_vector(3 downto 0);
      vga_blue_o     : out std_logic_vector(3 downto 0);
      vga_green_o    : out std_logic_vector(3 downto 0);
		
		-- Switches
		ISEcho      : in std_logic;
		ISRealFreq  : in std_logic;
		ISPureFreq  : in std_logic;
		ISFIFO	   : in std_logic;
--		audio_write : in std_logic;
--		audio_read  : in std_logic;
		ISFast      : in std_logic;
		ISSlow      : in std_logic;
		ISVolUp		: in std_logic;
		ISVolDown   : in std_logic;
		ISSiren     : in std_logic;
		ISMusic     : in std_logic
		);
end Imag_Proc_top;

architecture Imag_Proc_top_arch of Imag_Proc_top is

COMPONENT imgRom_pixGL8b
  PORT (
    clka : IN STD_LOGIC;
    ena : IN STD_LOGIC;
    addra : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END COMPONENT;

COMPONENT DataFlow_Display
PORT(
	clk_i : IN std_logic;
	rst_i : IN std_logic;
	wr_en_fifo_orig : IN std_logic;
	data_orig : IN std_logic_vector(7 downto 0);
	wr_en_fifo_proc : IN std_logic;
	data_proc : IN std_logic_vector(7 downto 0);
	data_fifo_orig_ready : IN std_logic;
	data_fifo_proc_ready : IN std_logic;
	Switch_start : IN std_logic;          
	fifo_empty_orig : OUT std_logic;
	fifo_empty_proc : OUT std_logic;
	vga_hs_o : OUT std_logic;
	vga_vs_o : OUT std_logic;
	vga_red_o : OUT std_logic_vector(3 downto 0);
	vga_blue_o : OUT std_logic_vector(3 downto 0);
	vga_green_o : OUT std_logic_vector(3 downto 0)
	);
END COMPONENT;

component TwoDFilter is
Port( CLK              : in STD_LOGIC;
		DATA_IN          : in  STD_LOGIC_VECTOR (7 downto 0);
      START_PROCESS    : in  STD_LOGIC;
		RESET            : in STD_LOGIC;
		RESULT           : out  STD_LOGIC_VECTOR (7 downto 0);
	   RESULT_AVAILABLE : out  STD_LOGIC);
end component;
--
-- SINGAL DECLERATION
--
signal data_lena_orig : std_logic_vector(7 downto 0);
signal wr_en_fifo_orig : std_logic;
signal fifo_empty_orig : std_logic;
signal wr_en_fifo_proc : std_logic;
signal fifo_empty_proc : std_logic;
signal Switch_start : std_logic;
signal clk_int    : std_logic;
signal data_fifo_orig_ready: std_logic;
signal data_fifo_proc_ready: std_logic;

signal ena : STD_LOGIC;
signal addra : STD_LOGIC_VECTOR(13 DOWNTO 0);

type LIST_STATE is (S1,S2,S3,S4,S5);
signal STATEG : LIST_STATE;

signal result : std_logic_vector(7 downto 0) := (others => '0');
--signal result_available: std_logic := '0';

begin


IBUFG_inst : IBUFG
   generic map (
      IBUF_LOW_PWR => TRUE,
     IOSTANDARD => "DEFAULT")
   port map (
      O => clk_int,
      I => clk_i);
		
Inst_DataFlow_Display: DataFlow_Display PORT MAP(
	clk_i => clk_int,
	rst_i => rst_i,
	wr_en_fifo_orig => wr_en_fifo_orig,
	fifo_empty_orig => fifo_empty_orig,
	data_orig => data_lena_orig,
	wr_en_fifo_proc => wr_en_fifo_proc,
	fifo_empty_proc => fifo_empty_proc,
	data_proc => result,
	data_fifo_orig_ready => data_fifo_orig_ready,
	data_fifo_proc_ready => data_fifo_proc_ready,
	Switch_start => Switch_start,
	vga_hs_o => vga_hs_o,
	vga_vs_o => vga_vs_o,
	vga_red_o => vga_red_o,
	vga_blue_o => vga_blue_o,
	vga_green_o => vga_green_o
);

LED(0) <= fifo_empty_orig;
LED(1) <= '1';
LED(2) <= fifo_empty_proc;
LED(3) <= rst_i;


LED(6) <= '0';
LED(7) <= '0';
LED(8) <= '0';
LED(9) <= '0';
LED(10) <= '0';
LED(11) <= '0';
LED(12) <= '0';
LED(13) <= '0';
LED(14) <= '0';
LED(15) <= '0';

img_lena_8bits : imgRom_pixGL8b
  PORT MAP (
    clka => clk_int,
    ena => ena,
    addra => addra,
    douta => data_lena_orig
  );

filter1 : TwoDFilter
Port map( CLK          => clk_int,
		DATA_IN          => data_lena_orig,
      START_PROCESS    => '1',-----ena--------------------------------------------------------------------------------------------------
		RESET            => rst_i,
		RESULT           => result,
	   RESULT_AVAILABLE => open--result_available
		);

connection : process (clk_int, rst_i)
begin
 if (rst_i = '1') then STATEG <= S1; addra <= (others => '0'); 
 ena <= '0';LED(4) <= '0';LED(5) <= '0';wr_en_fifo_orig <= '0';wr_en_fifo_proc <= '0';
 data_fifo_orig_ready <= '0'; data_fifo_proc_ready <= '0';
								
 elsif (clk_int'event and clk_int = '1') then
	
	case STATEG is
		when S1 =>
			LED(5) <= '0';
			data_fifo_orig_ready <= '0'; data_fifo_proc_ready <= '0';
			if (ISEcho = '1') then STATEG <= S2; ena <= '1';
			else STATEG <= S1; ena <= '0';
			end if;
		when S2 => 
			data_fifo_orig_ready <= '0'; data_fifo_proc_ready <= '0';
			if addra = "11111111111111" then addra <= (others => '0');ena <= '0'; STATEG <= S3;LED(4) <= '0';
			else addra <= addra + '1'; ena <= '1'; STATEG <= S2; wr_en_fifo_orig <= '1';wr_en_fifo_proc <= '1';LED(4) <= '1';
			end if;
		when S3 => 
			wr_en_fifo_orig <= '0'; wr_en_fifo_proc <= '0';
			data_fifo_orig_ready <= '1'; data_fifo_proc_ready <= '1';
			LED(5) <= '1';
			--STATEG <= S3;
			if fifo_empty_orig ='1' then STATEG <= S1;
			else STATEG <= S3;
			end if;
		when others =>
          STATEG <= S1;
          
      end case;
    end if;
end process connection;
  
end Imag_Proc_top_arch;

