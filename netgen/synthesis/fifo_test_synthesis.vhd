--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: fifo_test_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov 11 00:26:28 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm fifo_test -w -dir netgen/synthesis -ofmt vhdl -sim fifo_test.ngc fifo_test_synthesis.vhd 
-- Device	: xa7a100t-2I-csg324
-- Input file	: fifo_test.ngc
-- Output file	: C:\Users\Mins\Documents\Xilinx\RealTimeFiltering\netgen\synthesis\fifo_test_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: fifo_test
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


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity fifo_test is
  port (
    clk : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    wr_en : in STD_LOGIC := 'X'; 
    rd_en : in STD_LOGIC := 'X'; 
    full : out STD_LOGIC; 
    empty : out STD_LOGIC; 
    prog_full : out STD_LOGIC; 
    din : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 ) 
  );
end fifo_test;

architecture Structure of fifo_test is
  component fifo_8x1024
    port (
      clk : in STD_LOGIC := 'X'; 
      rst : in STD_LOGIC := 'X'; 
      wr_en : in STD_LOGIC := 'X'; 
      rd_en : in STD_LOGIC := 'X'; 
      full : out STD_LOGIC; 
      empty : out STD_LOGIC; 
      prog_full : out STD_LOGIC; 
      din : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
      prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
      dout : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
      data_count : out STD_LOGIC_VECTOR ( 9 downto 0 ) 
    );
  end component;
  signal din_7_IBUF_0 : STD_LOGIC; 
  signal din_6_IBUF_1 : STD_LOGIC; 
  signal din_5_IBUF_2 : STD_LOGIC; 
  signal din_4_IBUF_3 : STD_LOGIC; 
  signal din_3_IBUF_4 : STD_LOGIC; 
  signal din_2_IBUF_5 : STD_LOGIC; 
  signal din_1_IBUF_6 : STD_LOGIC; 
  signal din_0_IBUF_7 : STD_LOGIC; 
  signal prog_full_thresh_9_IBUF_8 : STD_LOGIC; 
  signal prog_full_thresh_8_IBUF_9 : STD_LOGIC; 
  signal prog_full_thresh_7_IBUF_10 : STD_LOGIC; 
  signal prog_full_thresh_6_IBUF_11 : STD_LOGIC; 
  signal prog_full_thresh_5_IBUF_12 : STD_LOGIC; 
  signal prog_full_thresh_4_IBUF_13 : STD_LOGIC; 
  signal prog_full_thresh_3_IBUF_14 : STD_LOGIC; 
  signal prog_full_thresh_2_IBUF_15 : STD_LOGIC; 
  signal prog_full_thresh_1_IBUF_16 : STD_LOGIC; 
  signal prog_full_thresh_0_IBUF_17 : STD_LOGIC; 
  signal clk_BUFGP_18 : STD_LOGIC; 
  signal rst_IBUF_19 : STD_LOGIC; 
  signal wr_en_IBUF_20 : STD_LOGIC; 
  signal rd_en_IBUF_21 : STD_LOGIC; 
  signal dout_7_OBUF_22 : STD_LOGIC; 
  signal dout_6_OBUF_23 : STD_LOGIC; 
  signal dout_5_OBUF_24 : STD_LOGIC; 
  signal dout_4_OBUF_25 : STD_LOGIC; 
  signal dout_3_OBUF_26 : STD_LOGIC; 
  signal dout_2_OBUF_27 : STD_LOGIC; 
  signal dout_1_OBUF_28 : STD_LOGIC; 
  signal dout_0_OBUF_29 : STD_LOGIC; 
  signal data_count_9_OBUF_30 : STD_LOGIC; 
  signal data_count_8_OBUF_31 : STD_LOGIC; 
  signal data_count_7_OBUF_32 : STD_LOGIC; 
  signal data_count_6_OBUF_33 : STD_LOGIC; 
  signal data_count_5_OBUF_34 : STD_LOGIC; 
  signal data_count_4_OBUF_35 : STD_LOGIC; 
  signal data_count_3_OBUF_36 : STD_LOGIC; 
  signal data_count_2_OBUF_37 : STD_LOGIC; 
  signal data_count_1_OBUF_38 : STD_LOGIC; 
  signal data_count_0_OBUF_39 : STD_LOGIC; 
  signal full_OBUF_40 : STD_LOGIC; 
  signal empty_OBUF_41 : STD_LOGIC; 
  signal prog_full_OBUF_42 : STD_LOGIC; 
begin
  din_7_IBUF : IBUF
    port map (
      I => din(7),
      O => din_7_IBUF_0
    );
  din_6_IBUF : IBUF
    port map (
      I => din(6),
      O => din_6_IBUF_1
    );
  din_5_IBUF : IBUF
    port map (
      I => din(5),
      O => din_5_IBUF_2
    );
  din_4_IBUF : IBUF
    port map (
      I => din(4),
      O => din_4_IBUF_3
    );
  din_3_IBUF : IBUF
    port map (
      I => din(3),
      O => din_3_IBUF_4
    );
  din_2_IBUF : IBUF
    port map (
      I => din(2),
      O => din_2_IBUF_5
    );
  din_1_IBUF : IBUF
    port map (
      I => din(1),
      O => din_1_IBUF_6
    );
  din_0_IBUF : IBUF
    port map (
      I => din(0),
      O => din_0_IBUF_7
    );
  prog_full_thresh_9_IBUF : IBUF
    port map (
      I => prog_full_thresh(9),
      O => prog_full_thresh_9_IBUF_8
    );
  prog_full_thresh_8_IBUF : IBUF
    port map (
      I => prog_full_thresh(8),
      O => prog_full_thresh_8_IBUF_9
    );
  prog_full_thresh_7_IBUF : IBUF
    port map (
      I => prog_full_thresh(7),
      O => prog_full_thresh_7_IBUF_10
    );
  prog_full_thresh_6_IBUF : IBUF
    port map (
      I => prog_full_thresh(6),
      O => prog_full_thresh_6_IBUF_11
    );
  prog_full_thresh_5_IBUF : IBUF
    port map (
      I => prog_full_thresh(5),
      O => prog_full_thresh_5_IBUF_12
    );
  prog_full_thresh_4_IBUF : IBUF
    port map (
      I => prog_full_thresh(4),
      O => prog_full_thresh_4_IBUF_13
    );
  prog_full_thresh_3_IBUF : IBUF
    port map (
      I => prog_full_thresh(3),
      O => prog_full_thresh_3_IBUF_14
    );
  prog_full_thresh_2_IBUF : IBUF
    port map (
      I => prog_full_thresh(2),
      O => prog_full_thresh_2_IBUF_15
    );
  prog_full_thresh_1_IBUF : IBUF
    port map (
      I => prog_full_thresh(1),
      O => prog_full_thresh_1_IBUF_16
    );
  prog_full_thresh_0_IBUF : IBUF
    port map (
      I => prog_full_thresh(0),
      O => prog_full_thresh_0_IBUF_17
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_19
    );
  wr_en_IBUF : IBUF
    port map (
      I => wr_en,
      O => wr_en_IBUF_20
    );
  rd_en_IBUF : IBUF
    port map (
      I => rd_en,
      O => rd_en_IBUF_21
    );
  dout_7_OBUF : OBUF
    port map (
      I => dout_7_OBUF_22,
      O => dout(7)
    );
  dout_6_OBUF : OBUF
    port map (
      I => dout_6_OBUF_23,
      O => dout(6)
    );
  dout_5_OBUF : OBUF
    port map (
      I => dout_5_OBUF_24,
      O => dout(5)
    );
  dout_4_OBUF : OBUF
    port map (
      I => dout_4_OBUF_25,
      O => dout(4)
    );
  dout_3_OBUF : OBUF
    port map (
      I => dout_3_OBUF_26,
      O => dout(3)
    );
  dout_2_OBUF : OBUF
    port map (
      I => dout_2_OBUF_27,
      O => dout(2)
    );
  dout_1_OBUF : OBUF
    port map (
      I => dout_1_OBUF_28,
      O => dout(1)
    );
  dout_0_OBUF : OBUF
    port map (
      I => dout_0_OBUF_29,
      O => dout(0)
    );
  data_count_9_OBUF : OBUF
    port map (
      I => data_count_9_OBUF_30,
      O => data_count(9)
    );
  data_count_8_OBUF : OBUF
    port map (
      I => data_count_8_OBUF_31,
      O => data_count(8)
    );
  data_count_7_OBUF : OBUF
    port map (
      I => data_count_7_OBUF_32,
      O => data_count(7)
    );
  data_count_6_OBUF : OBUF
    port map (
      I => data_count_6_OBUF_33,
      O => data_count(6)
    );
  data_count_5_OBUF : OBUF
    port map (
      I => data_count_5_OBUF_34,
      O => data_count(5)
    );
  data_count_4_OBUF : OBUF
    port map (
      I => data_count_4_OBUF_35,
      O => data_count(4)
    );
  data_count_3_OBUF : OBUF
    port map (
      I => data_count_3_OBUF_36,
      O => data_count(3)
    );
  data_count_2_OBUF : OBUF
    port map (
      I => data_count_2_OBUF_37,
      O => data_count(2)
    );
  data_count_1_OBUF : OBUF
    port map (
      I => data_count_1_OBUF_38,
      O => data_count(1)
    );
  data_count_0_OBUF : OBUF
    port map (
      I => data_count_0_OBUF_39,
      O => data_count(0)
    );
  full_OBUF : OBUF
    port map (
      I => full_OBUF_40,
      O => full
    );
  empty_OBUF : OBUF
    port map (
      I => empty_OBUF_41,
      O => empty
    );
  prog_full_OBUF : OBUF
    port map (
      I => prog_full_OBUF_42,
      O => prog_full
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_18
    );
  your_instance_name : fifo_8x1024
    port map (
      clk => clk_BUFGP_18,
      rst => rst_IBUF_19,
      wr_en => wr_en_IBUF_20,
      rd_en => rd_en_IBUF_21,
      full => full_OBUF_40,
      empty => empty_OBUF_41,
      prog_full => prog_full_OBUF_42,
      din(7) => din_7_IBUF_0,
      din(6) => din_6_IBUF_1,
      din(5) => din_5_IBUF_2,
      din(4) => din_4_IBUF_3,
      din(3) => din_3_IBUF_4,
      din(2) => din_2_IBUF_5,
      din(1) => din_1_IBUF_6,
      din(0) => din_0_IBUF_7,
      prog_full_thresh(9) => prog_full_thresh_9_IBUF_8,
      prog_full_thresh(8) => prog_full_thresh_8_IBUF_9,
      prog_full_thresh(7) => prog_full_thresh_7_IBUF_10,
      prog_full_thresh(6) => prog_full_thresh_6_IBUF_11,
      prog_full_thresh(5) => prog_full_thresh_5_IBUF_12,
      prog_full_thresh(4) => prog_full_thresh_4_IBUF_13,
      prog_full_thresh(3) => prog_full_thresh_3_IBUF_14,
      prog_full_thresh(2) => prog_full_thresh_2_IBUF_15,
      prog_full_thresh(1) => prog_full_thresh_1_IBUF_16,
      prog_full_thresh(0) => prog_full_thresh_0_IBUF_17,
      dout(7) => dout_7_OBUF_22,
      dout(6) => dout_6_OBUF_23,
      dout(5) => dout_5_OBUF_24,
      dout(4) => dout_4_OBUF_25,
      dout(3) => dout_3_OBUF_26,
      dout(2) => dout_2_OBUF_27,
      dout(1) => dout_1_OBUF_28,
      dout(0) => dout_0_OBUF_29,
      data_count(9) => data_count_9_OBUF_30,
      data_count(8) => data_count_8_OBUF_31,
      data_count(7) => data_count_7_OBUF_32,
      data_count(6) => data_count_6_OBUF_33,
      data_count(5) => data_count_5_OBUF_34,
      data_count(4) => data_count_4_OBUF_35,
      data_count(3) => data_count_3_OBUF_36,
      data_count(2) => data_count_2_OBUF_37,
      data_count(1) => data_count_1_OBUF_38,
      data_count(0) => data_count_0_OBUF_39
    );

end Structure;

-- synthesis translate_on
