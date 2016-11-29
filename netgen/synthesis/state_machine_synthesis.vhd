--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: state_machine_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov 18 10:27:01 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm state_machine -w -dir netgen/synthesis -ofmt vhdl -sim state_machine.ngc state_machine_synthesis.vhd 
-- Device	: xc7a100t-3-csg324
-- Input file	: state_machine.ngc
-- Output file	: C:\Users\av721115\realTimeFiltering\netgen\synthesis\state_machine_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: state_machine
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity state_machine is
  port (
    CLK : in STD_LOGIC := 'X'; 
    RESET : in STD_LOGIC := 'X'; 
    a : in STD_LOGIC := 'X'; 
    b : in STD_LOGIC := 'X'; 
    S1 : out STD_LOGIC; 
    S2 : out STD_LOGIC 
  );
end state_machine;

architecture Structure of state_machine is
  signal CLK_BUFGP_0 : STD_LOGIC; 
  signal RESET_IBUF_1 : STD_LOGIC; 
  signal a_IBUF_2 : STD_LOGIC; 
  signal b_IBUF_3 : STD_LOGIC; 
  signal S1_OBUF_4 : STD_LOGIC; 
  signal S2_OBUF_5 : STD_LOGIC; 
  signal current_state_FSM_FFd3_In : STD_LOGIC; 
  signal current_state_FSM_FFd2_In : STD_LOGIC; 
  signal current_state_FSM_FFd1_In : STD_LOGIC; 
  signal current_state_FSM_FFd3_9 : STD_LOGIC; 
  signal current_state_FSM_FFd2_10 : STD_LOGIC; 
  signal current_state_FSM_FFd1_11 : STD_LOGIC; 
begin
  current_state_FSM_FFd1 : FDC
    port map (
      C => CLK_BUFGP_0,
      CLR => RESET_IBUF_1,
      D => current_state_FSM_FFd1_In,
      Q => current_state_FSM_FFd1_11
    );
  current_state_FSM_FFd3 : FDC
    port map (
      C => CLK_BUFGP_0,
      CLR => RESET_IBUF_1,
      D => current_state_FSM_FFd3_In,
      Q => current_state_FSM_FFd3_9
    );
  current_state_FSM_FFd2 : FDC
    port map (
      C => CLK_BUFGP_0,
      CLR => RESET_IBUF_1,
      D => current_state_FSM_FFd2_In,
      Q => current_state_FSM_FFd2_10
    );
  current_state_FSM_FFd2_In11 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => current_state_FSM_FFd3_9,
      I1 => current_state_FSM_FFd2_10,
      I2 => current_state_FSM_FFd1_11,
      O => S2_OBUF_5
    );
  current_state_FSM_FFd1_In1 : LUT5
    generic map(
      INIT => X"22010000"
    )
    port map (
      I0 => b_IBUF_3,
      I1 => a_IBUF_2,
      I2 => current_state_FSM_FFd1_11,
      I3 => current_state_FSM_FFd3_9,
      I4 => current_state_FSM_FFd2_10,
      O => current_state_FSM_FFd1_In
    );
  current_state_FSM_FFd3_In1 : LUT4
    generic map(
      INIT => X"3B02"
    )
    port map (
      I0 => a_IBUF_2,
      I1 => b_IBUF_3,
      I2 => current_state_FSM_FFd2_10,
      I3 => current_state_FSM_FFd3_9,
      O => current_state_FSM_FFd3_In
    );
  current_state_S11 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => current_state_FSM_FFd2_10,
      I1 => current_state_FSM_FFd1_11,
      I2 => current_state_FSM_FFd3_9,
      O => S1_OBUF_4
    );
  RESET_IBUF : IBUF
    port map (
      I => RESET,
      O => RESET_IBUF_1
    );
  a_IBUF : IBUF
    port map (
      I => a,
      O => a_IBUF_2
    );
  b_IBUF : IBUF
    port map (
      I => b,
      O => b_IBUF_3
    );
  S1_OBUF : OBUF
    port map (
      I => S1_OBUF_4,
      O => S1
    );
  S2_OBUF : OBUF
    port map (
      I => S2_OBUF_5,
      O => S2
    );
  current_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"5530"
    )
    port map (
      I0 => a_IBUF_2,
      I1 => current_state_FSM_FFd1_11,
      I2 => current_state_FSM_FFd2_10,
      I3 => current_state_FSM_FFd3_9,
      O => current_state_FSM_FFd2_In
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_0
    );

end Structure;

