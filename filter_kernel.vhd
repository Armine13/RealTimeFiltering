----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:45:33 11/25/2016 
-- Design Name: 
-- Module Name:    laplacian_filter - Behavioral 
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

entity filter_kernel is
Port ( P0 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P1 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P2 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P3 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P4 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P5 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P6 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P7 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P8 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
			  --coefficients
			  C0 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C1 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C2 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C3 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C4 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C5 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C6 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C7 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  C8 : in  STD_LOGIC_VECTOR (3 downto 0):=(others => '0');
			  
			  --results of multiplication
			  M0 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M1 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M2 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M3 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M4 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M5 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M6 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M7 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  M8 : out  STD_LOGIC_VECTOR (11 downto 0):=(others => '0');
			  
			  Enable : in STD_LOGIC := '0';
           CLK : in  STD_LOGIC :='0');
end filter_kernel;

architecture Behavioral of filter_kernel is

COMPONENT multiplier
 PORT(
		clk : IN  std_logic;
		a : IN  std_logic_vector(7 downto 0);
		b : IN  std_logic_vector(3 downto 0);
		ce : IN  std_logic;
		p : OUT  std_logic_vector(11 downto 0)
	  );
 END COMPONENT;
 
 signal ce : std_logic := '0';
--
-- signal Sum1 :std_logic_vector (8 downto 0) := (others => '0');
-- signal Sum2 :std_logic_vector (8 downto 0):= (others => '0');
-- signal Sum3 :std_logic_vector (8 downto 0):= (others => '0');
-- signal Sum4 :std_logic_vector (8 downto 0):= (others => '0');
-- signal D1 :std_logic_vector (7 downto 0):= (others => '0');
-- signal D2 :std_logic_vector (7 downto 0):= (others => '0');
-- signal D3 :std_logic_vector (7 downto 0):= (others => '0');
-- signal Sum5 :std_logic_vector (9 downto 0):= (others => '0');
-- signal Sum6 :std_logic_vector (9 downto 0):= (others => '0');
-- signal Sum7 :std_logic_vector (10 downto 0):= (others => '0');
-- signal Sum8 :std_logic_vector (11 downto 0):= (others => '0');

 --signal cntr : integer := 0;
begin

mult0: multiplier PORT MAP (
          clk => clk,
          a => P0,
          b => C0,
          ce => Enable,
          p => M0
        );
mult1: multiplier PORT MAP (
          clk => clk,
          a => P1,
          b => C1,
          ce => Enable,
          p => M1
        );
mult2: multiplier PORT MAP (
          clk => clk,
          a => P2,
          b => C2,
          ce => Enable,
          p => M2
        );
mult3: multiplier PORT MAP (
          clk => clk,
          a => P3,
          b => C3,
          ce => Enable,
          p => M3
        );
mult4: multiplier PORT MAP (
          clk => clk,
          a => P4,
          b => C4,
          ce => Enable,
          p => M4
        );
mult5: multiplier PORT MAP (
          clk => clk,
          a => P5,
          b => C5,
          ce => Enable,
          p => M5
        );
mult6: multiplier PORT MAP (
          clk => clk,
          a => P6,
          b => C6,
          ce => Enable,
          p => M6
        );
mult7: multiplier PORT MAP (
          clk => clk,
          a => P7,
          b => C7,
          ce => Enable,
          p => M7
        );
mult8: multiplier PORT MAP (
          clk => clk,
          a => P8,
          b => C8,
          ce => Enable,
          p => M8
        );


end Behavioral;

