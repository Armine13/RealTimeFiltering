--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:25:29 11/18/2016
-- Design Name:   
-- Module Name:   C:/Users/av721115/realTimeFiltering/state_machine_tb.vhd
-- Project Name:  realTimeFiltering
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: state_machine
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY state_machine_tb IS
END state_machine_tb;
 
ARCHITECTURE behavior OF state_machine_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
--    COMPONENT state_machine
--    PORT(
--         CLK : IN  std_logic;
--         RESET : IN  std_logic;
--         a : IN  std_logic;
--         b : IN  std_logic;
--         S1 : OUT  std_logic;
--         S2 : OUT  std_logic
--        );
--    END COMPONENT;
	 COMPONENT state_machine_dsm
    PORT(
         CLK : IN  std_logic;
         RESET : IN  std_logic;
         a : IN  std_logic;
         b : IN  std_logic;
         S1 : OUT  std_logic;
         S2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal RESET : std_logic := '0';
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal S1 : std_logic;
   signal S2 : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
--   uut: state_machine PORT MAP (
--          CLK => CLK,
--          RESET => RESET,
--          a => a,
--          b => b,
--          S1 => S1,
--          S2 => S2
--        );
   uut2: state_machine_dsm PORT MAP (
          CLK => CLK,
          RESET => RESET,
          a => a,
          b => b,
          S1 => S1,
          S2 => S2
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		RESET <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		RESET <='0';
      wait for CLK_period*10;
		a <= '1';
		b <= '0';
		wait for CLK_period*10;
		a <= '0';
		b <= '0';
		wait for CLK_period*10;
		a <= '1';
		b <= '0';
		wait for CLK_period*10;
		a <= '0';
		b <= '1';
		wait for CLK_period*10;
		a <= '0';
		b <= '0';
		wait for CLK_period*10;
		a <= '0';
		b <= '1';
		wait for CLK_period*10;
      -- insert stimulus here 

      wait;
   end process;

END;
