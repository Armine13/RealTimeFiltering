--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: cache_mem_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov 18 20:19:36 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm cache_mem -w -dir netgen/synthesis -ofmt vhdl -sim cache_mem.ngc cache_mem_synthesis.vhd 
-- Device	: xa7a100t-2I-csg324
-- Input file	: cache_mem.ngc
-- Output file	: C:\Users\Mins\Documents\Xilinx\RealTimeFiltering\netgen\synthesis\cache_mem_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: cache_mem
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

entity cache_mem is
  port (
    CLK : in STD_LOGIC := 'X'; 
    START_MEM : in STD_LOGIC := 'X'; 
    PIXEL_READY : out STD_LOGIC; 
    DATA : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P8 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P7 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P6 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P5 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P4 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P3 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P2 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P1 : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    P0 : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end cache_mem;

architecture Structure of cache_mem is
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
  signal DATA_7_IBUF_0 : STD_LOGIC; 
  signal DATA_6_IBUF_1 : STD_LOGIC; 
  signal DATA_5_IBUF_2 : STD_LOGIC; 
  signal DATA_4_IBUF_3 : STD_LOGIC; 
  signal DATA_3_IBUF_4 : STD_LOGIC; 
  signal DATA_2_IBUF_5 : STD_LOGIC; 
  signal DATA_1_IBUF_6 : STD_LOGIC; 
  signal DATA_0_IBUF_7 : STD_LOGIC; 
  signal CLK_BUFGP_8 : STD_LOGIC; 
  signal START_MEM_IBUF_9 : STD_LOGIC; 
  signal full1 : STD_LOGIC; 
  signal prog_full1 : STD_LOGIC; 
  signal full2 : STD_LOGIC; 
  signal prog_full2 : STD_LOGIC; 
  signal PIXEL_READY_OBUF_38 : STD_LOGIC; 
  signal counter_31_GND_3_o_LessThan_2_o : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal rst : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_0_Q_186 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_0_Q_187 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lutdi_188 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_1_Q_189 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_1_Q_190 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_2_Q_191 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_2_Q_192 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_3_Q_193 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_3_Q_194 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_4_Q_195 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_4_Q_196 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_5_Q_197 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_5_Q_198 : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_6_Q : STD_LOGIC; 
  signal Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_6_Q_200 : STD_LOGIC; 
  signal Q_n0109_inv2 : STD_LOGIC; 
  signal Mcount_counter_cy_1_rt_317 : STD_LOGIC; 
  signal Mcount_counter_cy_2_rt_318 : STD_LOGIC; 
  signal Mcount_counter_cy_3_rt_319 : STD_LOGIC; 
  signal Mcount_counter_cy_4_rt_320 : STD_LOGIC; 
  signal Mcount_counter_cy_5_rt_321 : STD_LOGIC; 
  signal Mcount_counter_cy_6_rt_322 : STD_LOGIC; 
  signal Mcount_counter_cy_7_rt_323 : STD_LOGIC; 
  signal Mcount_counter_cy_8_rt_324 : STD_LOGIC; 
  signal Mcount_counter_cy_9_rt_325 : STD_LOGIC; 
  signal Mcount_counter_cy_10_rt_326 : STD_LOGIC; 
  signal Mcount_counter_cy_11_rt_327 : STD_LOGIC; 
  signal Mcount_counter_cy_12_rt_328 : STD_LOGIC; 
  signal Mcount_counter_cy_13_rt_329 : STD_LOGIC; 
  signal Mcount_counter_cy_14_rt_330 : STD_LOGIC; 
  signal Mcount_counter_cy_15_rt_331 : STD_LOGIC; 
  signal Mcount_counter_cy_16_rt_332 : STD_LOGIC; 
  signal Mcount_counter_cy_17_rt_333 : STD_LOGIC; 
  signal Mcount_counter_cy_18_rt_334 : STD_LOGIC; 
  signal Mcount_counter_cy_19_rt_335 : STD_LOGIC; 
  signal Mcount_counter_cy_20_rt_336 : STD_LOGIC; 
  signal Mcount_counter_cy_21_rt_337 : STD_LOGIC; 
  signal Mcount_counter_cy_22_rt_338 : STD_LOGIC; 
  signal Mcount_counter_cy_23_rt_339 : STD_LOGIC; 
  signal Mcount_counter_cy_24_rt_340 : STD_LOGIC; 
  signal Mcount_counter_cy_25_rt_341 : STD_LOGIC; 
  signal Mcount_counter_cy_26_rt_342 : STD_LOGIC; 
  signal Mcount_counter_cy_27_rt_343 : STD_LOGIC; 
  signal Mcount_counter_cy_28_rt_344 : STD_LOGIC; 
  signal Mcount_counter_cy_29_rt_345 : STD_LOGIC; 
  signal Mcount_counter_cy_30_rt_346 : STD_LOGIC; 
  signal Mcount_counter_xor_31_rt_347 : STD_LOGIC; 
  signal NLW_fifo2_data_count_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_data_count_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo2_empty_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_data_count_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_fifo1_empty_UNCONNECTED : STD_LOGIC; 
  signal p8_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dout1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal dout2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p0_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p1_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p2_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal din2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p3_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p4_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p5_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal din1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p6_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal p7_temp : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Mcount_counter_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcount_counter_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => rst
    );
  p8_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_0_IBUF_7,
      Q => p8_temp(0)
    );
  p8_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_1_IBUF_6,
      Q => p8_temp(1)
    );
  p8_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_2_IBUF_5,
      Q => p8_temp(2)
    );
  p8_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_3_IBUF_4,
      Q => p8_temp(3)
    );
  p8_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_4_IBUF_3,
      Q => p8_temp(4)
    );
  p8_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_5_IBUF_2,
      Q => p8_temp(5)
    );
  p8_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_6_IBUF_1,
      Q => p8_temp(6)
    );
  p8_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => DATA_7_IBUF_0,
      Q => p8_temp(7)
    );
  p7_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(0),
      Q => p7_temp(0)
    );
  p7_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(1),
      Q => p7_temp(1)
    );
  p7_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(2),
      Q => p7_temp(2)
    );
  p7_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(3),
      Q => p7_temp(3)
    );
  p7_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(4),
      Q => p7_temp(4)
    );
  p7_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(5),
      Q => p7_temp(5)
    );
  p7_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(6),
      Q => p7_temp(6)
    );
  p7_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p8_temp(7),
      Q => p7_temp(7)
    );
  PIXEL_READY_19 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => counter_31_GND_3_o_LessThan_2_o,
      Q => PIXEL_READY_OBUF_38
    );
  p6_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(0),
      Q => p6_temp(0)
    );
  p6_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(1),
      Q => p6_temp(1)
    );
  p6_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(2),
      Q => p6_temp(2)
    );
  p6_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(3),
      Q => p6_temp(3)
    );
  p6_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(4),
      Q => p6_temp(4)
    );
  p6_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(5),
      Q => p6_temp(5)
    );
  p6_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(6),
      Q => p6_temp(6)
    );
  p6_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p7_temp(7),
      Q => p6_temp(7)
    );
  din1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(0),
      Q => din1(0)
    );
  din1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(1),
      Q => din1(1)
    );
  din1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(2),
      Q => din1(2)
    );
  din1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(3),
      Q => din1(3)
    );
  din1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(4),
      Q => din1(4)
    );
  din1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(5),
      Q => din1(5)
    );
  din1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(6),
      Q => din1(6)
    );
  din1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p6_temp(7),
      Q => din1(7)
    );
  p5_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(0),
      Q => p5_temp(0)
    );
  p5_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(1),
      Q => p5_temp(1)
    );
  p5_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(2),
      Q => p5_temp(2)
    );
  p5_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(3),
      Q => p5_temp(3)
    );
  p5_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(4),
      Q => p5_temp(4)
    );
  p5_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(5),
      Q => p5_temp(5)
    );
  p5_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(6),
      Q => p5_temp(6)
    );
  p5_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout1(7),
      Q => p5_temp(7)
    );
  p4_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(0),
      Q => p4_temp(0)
    );
  p4_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(1),
      Q => p4_temp(1)
    );
  p4_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(2),
      Q => p4_temp(2)
    );
  p4_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(3),
      Q => p4_temp(3)
    );
  p4_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(4),
      Q => p4_temp(4)
    );
  p4_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(5),
      Q => p4_temp(5)
    );
  p4_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(6),
      Q => p4_temp(6)
    );
  p4_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p5_temp(7),
      Q => p4_temp(7)
    );
  p3_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(0),
      Q => p3_temp(0)
    );
  p3_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(1),
      Q => p3_temp(1)
    );
  p3_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(2),
      Q => p3_temp(2)
    );
  p3_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(3),
      Q => p3_temp(3)
    );
  p3_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(4),
      Q => p3_temp(4)
    );
  p3_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(5),
      Q => p3_temp(5)
    );
  p3_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(6),
      Q => p3_temp(6)
    );
  p3_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p4_temp(7),
      Q => p3_temp(7)
    );
  din2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(0),
      Q => din2(0)
    );
  din2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(1),
      Q => din2(1)
    );
  din2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(2),
      Q => din2(2)
    );
  din2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(3),
      Q => din2(3)
    );
  din2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(4),
      Q => din2(4)
    );
  din2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(5),
      Q => din2(5)
    );
  din2_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(6),
      Q => din2(6)
    );
  din2_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p3_temp(7),
      Q => din2(7)
    );
  p2_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(0),
      Q => p2_temp(0)
    );
  p2_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(1),
      Q => p2_temp(1)
    );
  p2_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(2),
      Q => p2_temp(2)
    );
  p2_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(3),
      Q => p2_temp(3)
    );
  p2_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(4),
      Q => p2_temp(4)
    );
  p2_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(5),
      Q => p2_temp(5)
    );
  p2_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(6),
      Q => p2_temp(6)
    );
  p2_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => dout2(7),
      Q => p2_temp(7)
    );
  p1_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(0),
      Q => p1_temp(0)
    );
  p1_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(1),
      Q => p1_temp(1)
    );
  p1_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(2),
      Q => p1_temp(2)
    );
  p1_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(3),
      Q => p1_temp(3)
    );
  p1_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(4),
      Q => p1_temp(4)
    );
  p1_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(5),
      Q => p1_temp(5)
    );
  p1_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(6),
      Q => p1_temp(6)
    );
  p1_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p2_temp(7),
      Q => p1_temp(7)
    );
  p0_temp_0 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(0),
      Q => p0_temp(0)
    );
  p0_temp_1 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(1),
      Q => p0_temp(1)
    );
  p0_temp_2 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(2),
      Q => p0_temp(2)
    );
  p0_temp_3 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(3),
      Q => p0_temp(3)
    );
  p0_temp_4 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(4),
      Q => p0_temp(4)
    );
  p0_temp_5 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(5),
      Q => p0_temp(5)
    );
  p0_temp_6 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(6),
      Q => p0_temp(6)
    );
  p0_temp_7 : FDE
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => p1_temp(7),
      Q => p0_temp(7)
    );
  counter_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(0),
      Q => counter(0)
    );
  counter_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(1),
      Q => counter(1)
    );
  counter_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(2),
      Q => counter(2)
    );
  counter_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(3),
      Q => counter(3)
    );
  counter_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(4),
      Q => counter(4)
    );
  counter_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(5),
      Q => counter(5)
    );
  counter_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(6),
      Q => counter(6)
    );
  counter_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(7),
      Q => counter(7)
    );
  counter_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(8),
      Q => counter(8)
    );
  counter_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(9),
      Q => counter(9)
    );
  counter_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(10),
      Q => counter(10)
    );
  counter_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(11),
      Q => counter(11)
    );
  counter_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(12),
      Q => counter(12)
    );
  counter_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(13),
      Q => counter(13)
    );
  counter_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(14),
      Q => counter(14)
    );
  counter_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(15),
      Q => counter(15)
    );
  counter_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(16),
      Q => counter(16)
    );
  counter_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(17),
      Q => counter(17)
    );
  counter_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(18),
      Q => counter(18)
    );
  counter_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(19),
      Q => counter(19)
    );
  counter_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(20),
      Q => counter(20)
    );
  counter_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(21),
      Q => counter(21)
    );
  counter_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(22),
      Q => counter(22)
    );
  counter_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(23),
      Q => counter(23)
    );
  counter_24 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(24),
      Q => counter(24)
    );
  counter_25 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(25),
      Q => counter(25)
    );
  counter_26 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(26),
      Q => counter(26)
    );
  counter_27 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(27),
      Q => counter(27)
    );
  counter_28 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(28),
      Q => counter(28)
    );
  counter_29 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(29),
      Q => counter(29)
    );
  counter_30 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(30),
      Q => counter(30)
    );
  counter_31 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_8,
      CE => Q_n0109_inv2,
      D => Result(31),
      Q => counter(31)
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_0_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => counter(1),
      I1 => counter(2),
      I2 => counter(3),
      I3 => counter(4),
      I4 => counter(5),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_0_Q_186
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => rst,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_0_Q_186,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_0_Q_187
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lutdi : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => counter(8),
      I1 => counter(9),
      I2 => counter(10),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lutdi_188
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_1_Q : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => counter(6),
      I1 => counter(7),
      I2 => counter(8),
      I3 => counter(9),
      I4 => counter(10),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_1_Q_189
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_0_Q_187,
      DI => Mcompar_counter_31_GND_3_o_LessThan_2_o_lutdi_188,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_1_Q_189,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_1_Q_190
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_2_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => counter(11),
      I1 => counter(12),
      I2 => counter(13),
      I3 => counter(14),
      I4 => counter(15),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_2_Q_191
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_1_Q_190,
      DI => rst,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_2_Q_191,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_2_Q_192
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_3_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => counter(16),
      I1 => counter(17),
      I2 => counter(18),
      I3 => counter(19),
      I4 => counter(20),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_3_Q_193
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_2_Q_192,
      DI => rst,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_3_Q_193,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_3_Q_194
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_4_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => counter(21),
      I1 => counter(22),
      I2 => counter(23),
      I3 => counter(24),
      I4 => counter(25),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_4_Q_195
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_3_Q_194,
      DI => rst,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_4_Q_195,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_4_Q_196
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_5_Q : LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => counter(26),
      I1 => counter(27),
      I2 => counter(28),
      I3 => counter(29),
      I4 => counter(30),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_5_Q_197
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_4_Q_196,
      DI => rst,
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_5_Q_197,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_5_Q_198
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_5_Q_198,
      DI => counter(31),
      S => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_6_Q,
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_6_Q_200
    );
  Mcount_counter_cy_0_Q : MUXCY
    port map (
      CI => rst,
      DI => N0,
      S => Mcount_counter_lut(0),
      O => Mcount_counter_cy(0)
    );
  Mcount_counter_xor_0_Q : XORCY
    port map (
      CI => rst,
      LI => Mcount_counter_lut(0),
      O => Result(0)
    );
  Mcount_counter_cy_1_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(0),
      DI => rst,
      S => Mcount_counter_cy_1_rt_317,
      O => Mcount_counter_cy(1)
    );
  Mcount_counter_xor_1_Q : XORCY
    port map (
      CI => Mcount_counter_cy(0),
      LI => Mcount_counter_cy_1_rt_317,
      O => Result(1)
    );
  Mcount_counter_cy_2_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(1),
      DI => rst,
      S => Mcount_counter_cy_2_rt_318,
      O => Mcount_counter_cy(2)
    );
  Mcount_counter_xor_2_Q : XORCY
    port map (
      CI => Mcount_counter_cy(1),
      LI => Mcount_counter_cy_2_rt_318,
      O => Result(2)
    );
  Mcount_counter_cy_3_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(2),
      DI => rst,
      S => Mcount_counter_cy_3_rt_319,
      O => Mcount_counter_cy(3)
    );
  Mcount_counter_xor_3_Q : XORCY
    port map (
      CI => Mcount_counter_cy(2),
      LI => Mcount_counter_cy_3_rt_319,
      O => Result(3)
    );
  Mcount_counter_cy_4_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(3),
      DI => rst,
      S => Mcount_counter_cy_4_rt_320,
      O => Mcount_counter_cy(4)
    );
  Mcount_counter_xor_4_Q : XORCY
    port map (
      CI => Mcount_counter_cy(3),
      LI => Mcount_counter_cy_4_rt_320,
      O => Result(4)
    );
  Mcount_counter_cy_5_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(4),
      DI => rst,
      S => Mcount_counter_cy_5_rt_321,
      O => Mcount_counter_cy(5)
    );
  Mcount_counter_xor_5_Q : XORCY
    port map (
      CI => Mcount_counter_cy(4),
      LI => Mcount_counter_cy_5_rt_321,
      O => Result(5)
    );
  Mcount_counter_cy_6_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(5),
      DI => rst,
      S => Mcount_counter_cy_6_rt_322,
      O => Mcount_counter_cy(6)
    );
  Mcount_counter_xor_6_Q : XORCY
    port map (
      CI => Mcount_counter_cy(5),
      LI => Mcount_counter_cy_6_rt_322,
      O => Result(6)
    );
  Mcount_counter_cy_7_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(6),
      DI => rst,
      S => Mcount_counter_cy_7_rt_323,
      O => Mcount_counter_cy(7)
    );
  Mcount_counter_xor_7_Q : XORCY
    port map (
      CI => Mcount_counter_cy(6),
      LI => Mcount_counter_cy_7_rt_323,
      O => Result(7)
    );
  Mcount_counter_cy_8_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(7),
      DI => rst,
      S => Mcount_counter_cy_8_rt_324,
      O => Mcount_counter_cy(8)
    );
  Mcount_counter_xor_8_Q : XORCY
    port map (
      CI => Mcount_counter_cy(7),
      LI => Mcount_counter_cy_8_rt_324,
      O => Result(8)
    );
  Mcount_counter_cy_9_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(8),
      DI => rst,
      S => Mcount_counter_cy_9_rt_325,
      O => Mcount_counter_cy(9)
    );
  Mcount_counter_xor_9_Q : XORCY
    port map (
      CI => Mcount_counter_cy(8),
      LI => Mcount_counter_cy_9_rt_325,
      O => Result(9)
    );
  Mcount_counter_cy_10_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(9),
      DI => rst,
      S => Mcount_counter_cy_10_rt_326,
      O => Mcount_counter_cy(10)
    );
  Mcount_counter_xor_10_Q : XORCY
    port map (
      CI => Mcount_counter_cy(9),
      LI => Mcount_counter_cy_10_rt_326,
      O => Result(10)
    );
  Mcount_counter_cy_11_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(10),
      DI => rst,
      S => Mcount_counter_cy_11_rt_327,
      O => Mcount_counter_cy(11)
    );
  Mcount_counter_xor_11_Q : XORCY
    port map (
      CI => Mcount_counter_cy(10),
      LI => Mcount_counter_cy_11_rt_327,
      O => Result(11)
    );
  Mcount_counter_cy_12_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(11),
      DI => rst,
      S => Mcount_counter_cy_12_rt_328,
      O => Mcount_counter_cy(12)
    );
  Mcount_counter_xor_12_Q : XORCY
    port map (
      CI => Mcount_counter_cy(11),
      LI => Mcount_counter_cy_12_rt_328,
      O => Result(12)
    );
  Mcount_counter_cy_13_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(12),
      DI => rst,
      S => Mcount_counter_cy_13_rt_329,
      O => Mcount_counter_cy(13)
    );
  Mcount_counter_xor_13_Q : XORCY
    port map (
      CI => Mcount_counter_cy(12),
      LI => Mcount_counter_cy_13_rt_329,
      O => Result(13)
    );
  Mcount_counter_cy_14_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(13),
      DI => rst,
      S => Mcount_counter_cy_14_rt_330,
      O => Mcount_counter_cy(14)
    );
  Mcount_counter_xor_14_Q : XORCY
    port map (
      CI => Mcount_counter_cy(13),
      LI => Mcount_counter_cy_14_rt_330,
      O => Result(14)
    );
  Mcount_counter_cy_15_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(14),
      DI => rst,
      S => Mcount_counter_cy_15_rt_331,
      O => Mcount_counter_cy(15)
    );
  Mcount_counter_xor_15_Q : XORCY
    port map (
      CI => Mcount_counter_cy(14),
      LI => Mcount_counter_cy_15_rt_331,
      O => Result(15)
    );
  Mcount_counter_cy_16_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(15),
      DI => rst,
      S => Mcount_counter_cy_16_rt_332,
      O => Mcount_counter_cy(16)
    );
  Mcount_counter_xor_16_Q : XORCY
    port map (
      CI => Mcount_counter_cy(15),
      LI => Mcount_counter_cy_16_rt_332,
      O => Result(16)
    );
  Mcount_counter_cy_17_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(16),
      DI => rst,
      S => Mcount_counter_cy_17_rt_333,
      O => Mcount_counter_cy(17)
    );
  Mcount_counter_xor_17_Q : XORCY
    port map (
      CI => Mcount_counter_cy(16),
      LI => Mcount_counter_cy_17_rt_333,
      O => Result(17)
    );
  Mcount_counter_cy_18_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(17),
      DI => rst,
      S => Mcount_counter_cy_18_rt_334,
      O => Mcount_counter_cy(18)
    );
  Mcount_counter_xor_18_Q : XORCY
    port map (
      CI => Mcount_counter_cy(17),
      LI => Mcount_counter_cy_18_rt_334,
      O => Result(18)
    );
  Mcount_counter_cy_19_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(18),
      DI => rst,
      S => Mcount_counter_cy_19_rt_335,
      O => Mcount_counter_cy(19)
    );
  Mcount_counter_xor_19_Q : XORCY
    port map (
      CI => Mcount_counter_cy(18),
      LI => Mcount_counter_cy_19_rt_335,
      O => Result(19)
    );
  Mcount_counter_cy_20_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(19),
      DI => rst,
      S => Mcount_counter_cy_20_rt_336,
      O => Mcount_counter_cy(20)
    );
  Mcount_counter_xor_20_Q : XORCY
    port map (
      CI => Mcount_counter_cy(19),
      LI => Mcount_counter_cy_20_rt_336,
      O => Result(20)
    );
  Mcount_counter_cy_21_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(20),
      DI => rst,
      S => Mcount_counter_cy_21_rt_337,
      O => Mcount_counter_cy(21)
    );
  Mcount_counter_xor_21_Q : XORCY
    port map (
      CI => Mcount_counter_cy(20),
      LI => Mcount_counter_cy_21_rt_337,
      O => Result(21)
    );
  Mcount_counter_cy_22_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(21),
      DI => rst,
      S => Mcount_counter_cy_22_rt_338,
      O => Mcount_counter_cy(22)
    );
  Mcount_counter_xor_22_Q : XORCY
    port map (
      CI => Mcount_counter_cy(21),
      LI => Mcount_counter_cy_22_rt_338,
      O => Result(22)
    );
  Mcount_counter_cy_23_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(22),
      DI => rst,
      S => Mcount_counter_cy_23_rt_339,
      O => Mcount_counter_cy(23)
    );
  Mcount_counter_xor_23_Q : XORCY
    port map (
      CI => Mcount_counter_cy(22),
      LI => Mcount_counter_cy_23_rt_339,
      O => Result(23)
    );
  Mcount_counter_cy_24_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(23),
      DI => rst,
      S => Mcount_counter_cy_24_rt_340,
      O => Mcount_counter_cy(24)
    );
  Mcount_counter_xor_24_Q : XORCY
    port map (
      CI => Mcount_counter_cy(23),
      LI => Mcount_counter_cy_24_rt_340,
      O => Result(24)
    );
  Mcount_counter_cy_25_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(24),
      DI => rst,
      S => Mcount_counter_cy_25_rt_341,
      O => Mcount_counter_cy(25)
    );
  Mcount_counter_xor_25_Q : XORCY
    port map (
      CI => Mcount_counter_cy(24),
      LI => Mcount_counter_cy_25_rt_341,
      O => Result(25)
    );
  Mcount_counter_cy_26_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(25),
      DI => rst,
      S => Mcount_counter_cy_26_rt_342,
      O => Mcount_counter_cy(26)
    );
  Mcount_counter_xor_26_Q : XORCY
    port map (
      CI => Mcount_counter_cy(25),
      LI => Mcount_counter_cy_26_rt_342,
      O => Result(26)
    );
  Mcount_counter_cy_27_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(26),
      DI => rst,
      S => Mcount_counter_cy_27_rt_343,
      O => Mcount_counter_cy(27)
    );
  Mcount_counter_xor_27_Q : XORCY
    port map (
      CI => Mcount_counter_cy(26),
      LI => Mcount_counter_cy_27_rt_343,
      O => Result(27)
    );
  Mcount_counter_cy_28_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(27),
      DI => rst,
      S => Mcount_counter_cy_28_rt_344,
      O => Mcount_counter_cy(28)
    );
  Mcount_counter_xor_28_Q : XORCY
    port map (
      CI => Mcount_counter_cy(27),
      LI => Mcount_counter_cy_28_rt_344,
      O => Result(28)
    );
  Mcount_counter_cy_29_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(28),
      DI => rst,
      S => Mcount_counter_cy_29_rt_345,
      O => Mcount_counter_cy(29)
    );
  Mcount_counter_xor_29_Q : XORCY
    port map (
      CI => Mcount_counter_cy(28),
      LI => Mcount_counter_cy_29_rt_345,
      O => Result(29)
    );
  Mcount_counter_cy_30_Q : MUXCY
    port map (
      CI => Mcount_counter_cy(29),
      DI => rst,
      S => Mcount_counter_cy_30_rt_346,
      O => Mcount_counter_cy(30)
    );
  Mcount_counter_xor_30_Q : XORCY
    port map (
      CI => Mcount_counter_cy(29),
      LI => Mcount_counter_cy_30_rt_346,
      O => Result(30)
    );
  Mcount_counter_xor_31_Q : XORCY
    port map (
      CI => Mcount_counter_cy(30),
      LI => Mcount_counter_xor_31_rt_347,
      O => Result(31)
    );
  Q_n0109_inv21 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => START_MEM_IBUF_9,
      I1 => full1,
      I2 => full2,
      O => Q_n0109_inv2
    );
  DATA_7_IBUF : IBUF
    port map (
      I => DATA(7),
      O => DATA_7_IBUF_0
    );
  DATA_6_IBUF : IBUF
    port map (
      I => DATA(6),
      O => DATA_6_IBUF_1
    );
  DATA_5_IBUF : IBUF
    port map (
      I => DATA(5),
      O => DATA_5_IBUF_2
    );
  DATA_4_IBUF : IBUF
    port map (
      I => DATA(4),
      O => DATA_4_IBUF_3
    );
  DATA_3_IBUF : IBUF
    port map (
      I => DATA(3),
      O => DATA_3_IBUF_4
    );
  DATA_2_IBUF : IBUF
    port map (
      I => DATA(2),
      O => DATA_2_IBUF_5
    );
  DATA_1_IBUF : IBUF
    port map (
      I => DATA(1),
      O => DATA_1_IBUF_6
    );
  DATA_0_IBUF : IBUF
    port map (
      I => DATA(0),
      O => DATA_0_IBUF_7
    );
  START_MEM_IBUF : IBUF
    port map (
      I => START_MEM,
      O => START_MEM_IBUF_9
    );
  P8_7_OBUF : OBUF
    port map (
      I => p8_temp(7),
      O => P8(7)
    );
  P8_6_OBUF : OBUF
    port map (
      I => p8_temp(6),
      O => P8(6)
    );
  P8_5_OBUF : OBUF
    port map (
      I => p8_temp(5),
      O => P8(5)
    );
  P8_4_OBUF : OBUF
    port map (
      I => p8_temp(4),
      O => P8(4)
    );
  P8_3_OBUF : OBUF
    port map (
      I => p8_temp(3),
      O => P8(3)
    );
  P8_2_OBUF : OBUF
    port map (
      I => p8_temp(2),
      O => P8(2)
    );
  P8_1_OBUF : OBUF
    port map (
      I => p8_temp(1),
      O => P8(1)
    );
  P8_0_OBUF : OBUF
    port map (
      I => p8_temp(0),
      O => P8(0)
    );
  P7_7_OBUF : OBUF
    port map (
      I => p7_temp(7),
      O => P7(7)
    );
  P7_6_OBUF : OBUF
    port map (
      I => p7_temp(6),
      O => P7(6)
    );
  P7_5_OBUF : OBUF
    port map (
      I => p7_temp(5),
      O => P7(5)
    );
  P7_4_OBUF : OBUF
    port map (
      I => p7_temp(4),
      O => P7(4)
    );
  P7_3_OBUF : OBUF
    port map (
      I => p7_temp(3),
      O => P7(3)
    );
  P7_2_OBUF : OBUF
    port map (
      I => p7_temp(2),
      O => P7(2)
    );
  P7_1_OBUF : OBUF
    port map (
      I => p7_temp(1),
      O => P7(1)
    );
  P7_0_OBUF : OBUF
    port map (
      I => p7_temp(0),
      O => P7(0)
    );
  P6_7_OBUF : OBUF
    port map (
      I => p6_temp(7),
      O => P6(7)
    );
  P6_6_OBUF : OBUF
    port map (
      I => p6_temp(6),
      O => P6(6)
    );
  P6_5_OBUF : OBUF
    port map (
      I => p6_temp(5),
      O => P6(5)
    );
  P6_4_OBUF : OBUF
    port map (
      I => p6_temp(4),
      O => P6(4)
    );
  P6_3_OBUF : OBUF
    port map (
      I => p6_temp(3),
      O => P6(3)
    );
  P6_2_OBUF : OBUF
    port map (
      I => p6_temp(2),
      O => P6(2)
    );
  P6_1_OBUF : OBUF
    port map (
      I => p6_temp(1),
      O => P6(1)
    );
  P6_0_OBUF : OBUF
    port map (
      I => p6_temp(0),
      O => P6(0)
    );
  P5_7_OBUF : OBUF
    port map (
      I => p5_temp(7),
      O => P5(7)
    );
  P5_6_OBUF : OBUF
    port map (
      I => p5_temp(6),
      O => P5(6)
    );
  P5_5_OBUF : OBUF
    port map (
      I => p5_temp(5),
      O => P5(5)
    );
  P5_4_OBUF : OBUF
    port map (
      I => p5_temp(4),
      O => P5(4)
    );
  P5_3_OBUF : OBUF
    port map (
      I => p5_temp(3),
      O => P5(3)
    );
  P5_2_OBUF : OBUF
    port map (
      I => p5_temp(2),
      O => P5(2)
    );
  P5_1_OBUF : OBUF
    port map (
      I => p5_temp(1),
      O => P5(1)
    );
  P5_0_OBUF : OBUF
    port map (
      I => p5_temp(0),
      O => P5(0)
    );
  P4_7_OBUF : OBUF
    port map (
      I => p4_temp(7),
      O => P4(7)
    );
  P4_6_OBUF : OBUF
    port map (
      I => p4_temp(6),
      O => P4(6)
    );
  P4_5_OBUF : OBUF
    port map (
      I => p4_temp(5),
      O => P4(5)
    );
  P4_4_OBUF : OBUF
    port map (
      I => p4_temp(4),
      O => P4(4)
    );
  P4_3_OBUF : OBUF
    port map (
      I => p4_temp(3),
      O => P4(3)
    );
  P4_2_OBUF : OBUF
    port map (
      I => p4_temp(2),
      O => P4(2)
    );
  P4_1_OBUF : OBUF
    port map (
      I => p4_temp(1),
      O => P4(1)
    );
  P4_0_OBUF : OBUF
    port map (
      I => p4_temp(0),
      O => P4(0)
    );
  P3_7_OBUF : OBUF
    port map (
      I => p3_temp(7),
      O => P3(7)
    );
  P3_6_OBUF : OBUF
    port map (
      I => p3_temp(6),
      O => P3(6)
    );
  P3_5_OBUF : OBUF
    port map (
      I => p3_temp(5),
      O => P3(5)
    );
  P3_4_OBUF : OBUF
    port map (
      I => p3_temp(4),
      O => P3(4)
    );
  P3_3_OBUF : OBUF
    port map (
      I => p3_temp(3),
      O => P3(3)
    );
  P3_2_OBUF : OBUF
    port map (
      I => p3_temp(2),
      O => P3(2)
    );
  P3_1_OBUF : OBUF
    port map (
      I => p3_temp(1),
      O => P3(1)
    );
  P3_0_OBUF : OBUF
    port map (
      I => p3_temp(0),
      O => P3(0)
    );
  P2_7_OBUF : OBUF
    port map (
      I => p2_temp(7),
      O => P2(7)
    );
  P2_6_OBUF : OBUF
    port map (
      I => p2_temp(6),
      O => P2(6)
    );
  P2_5_OBUF : OBUF
    port map (
      I => p2_temp(5),
      O => P2(5)
    );
  P2_4_OBUF : OBUF
    port map (
      I => p2_temp(4),
      O => P2(4)
    );
  P2_3_OBUF : OBUF
    port map (
      I => p2_temp(3),
      O => P2(3)
    );
  P2_2_OBUF : OBUF
    port map (
      I => p2_temp(2),
      O => P2(2)
    );
  P2_1_OBUF : OBUF
    port map (
      I => p2_temp(1),
      O => P2(1)
    );
  P2_0_OBUF : OBUF
    port map (
      I => p2_temp(0),
      O => P2(0)
    );
  P1_7_OBUF : OBUF
    port map (
      I => p1_temp(7),
      O => P1(7)
    );
  P1_6_OBUF : OBUF
    port map (
      I => p1_temp(6),
      O => P1(6)
    );
  P1_5_OBUF : OBUF
    port map (
      I => p1_temp(5),
      O => P1(5)
    );
  P1_4_OBUF : OBUF
    port map (
      I => p1_temp(4),
      O => P1(4)
    );
  P1_3_OBUF : OBUF
    port map (
      I => p1_temp(3),
      O => P1(3)
    );
  P1_2_OBUF : OBUF
    port map (
      I => p1_temp(2),
      O => P1(2)
    );
  P1_1_OBUF : OBUF
    port map (
      I => p1_temp(1),
      O => P1(1)
    );
  P1_0_OBUF : OBUF
    port map (
      I => p1_temp(0),
      O => P1(0)
    );
  P0_7_OBUF : OBUF
    port map (
      I => p0_temp(7),
      O => P0(7)
    );
  P0_6_OBUF : OBUF
    port map (
      I => p0_temp(6),
      O => P0(6)
    );
  P0_5_OBUF : OBUF
    port map (
      I => p0_temp(5),
      O => P0(5)
    );
  P0_4_OBUF : OBUF
    port map (
      I => p0_temp(4),
      O => P0(4)
    );
  P0_3_OBUF : OBUF
    port map (
      I => p0_temp(3),
      O => P0(3)
    );
  P0_2_OBUF : OBUF
    port map (
      I => p0_temp(2),
      O => P0(2)
    );
  P0_1_OBUF : OBUF
    port map (
      I => p0_temp(1),
      O => P0(1)
    );
  P0_0_OBUF : OBUF
    port map (
      I => p0_temp(0),
      O => P0(0)
    );
  PIXEL_READY_OBUF : OBUF
    port map (
      I => PIXEL_READY_OBUF_38,
      O => PIXEL_READY
    );
  Mcount_counter_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(1),
      O => Mcount_counter_cy_1_rt_317
    );
  Mcount_counter_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(2),
      O => Mcount_counter_cy_2_rt_318
    );
  Mcount_counter_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(3),
      O => Mcount_counter_cy_3_rt_319
    );
  Mcount_counter_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(4),
      O => Mcount_counter_cy_4_rt_320
    );
  Mcount_counter_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(5),
      O => Mcount_counter_cy_5_rt_321
    );
  Mcount_counter_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(6),
      O => Mcount_counter_cy_6_rt_322
    );
  Mcount_counter_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(7),
      O => Mcount_counter_cy_7_rt_323
    );
  Mcount_counter_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(8),
      O => Mcount_counter_cy_8_rt_324
    );
  Mcount_counter_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(9),
      O => Mcount_counter_cy_9_rt_325
    );
  Mcount_counter_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(10),
      O => Mcount_counter_cy_10_rt_326
    );
  Mcount_counter_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(11),
      O => Mcount_counter_cy_11_rt_327
    );
  Mcount_counter_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(12),
      O => Mcount_counter_cy_12_rt_328
    );
  Mcount_counter_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(13),
      O => Mcount_counter_cy_13_rt_329
    );
  Mcount_counter_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(14),
      O => Mcount_counter_cy_14_rt_330
    );
  Mcount_counter_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(15),
      O => Mcount_counter_cy_15_rt_331
    );
  Mcount_counter_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(16),
      O => Mcount_counter_cy_16_rt_332
    );
  Mcount_counter_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(17),
      O => Mcount_counter_cy_17_rt_333
    );
  Mcount_counter_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(18),
      O => Mcount_counter_cy_18_rt_334
    );
  Mcount_counter_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(19),
      O => Mcount_counter_cy_19_rt_335
    );
  Mcount_counter_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(20),
      O => Mcount_counter_cy_20_rt_336
    );
  Mcount_counter_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(21),
      O => Mcount_counter_cy_21_rt_337
    );
  Mcount_counter_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(22),
      O => Mcount_counter_cy_22_rt_338
    );
  Mcount_counter_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(23),
      O => Mcount_counter_cy_23_rt_339
    );
  Mcount_counter_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(24),
      O => Mcount_counter_cy_24_rt_340
    );
  Mcount_counter_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(25),
      O => Mcount_counter_cy_25_rt_341
    );
  Mcount_counter_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(26),
      O => Mcount_counter_cy_26_rt_342
    );
  Mcount_counter_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(27),
      O => Mcount_counter_cy_27_rt_343
    );
  Mcount_counter_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(28),
      O => Mcount_counter_cy_28_rt_344
    );
  Mcount_counter_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(29),
      O => Mcount_counter_cy_29_rt_345
    );
  Mcount_counter_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(30),
      O => Mcount_counter_cy_30_rt_346
    );
  Mcount_counter_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => counter(31),
      O => Mcount_counter_xor_31_rt_347
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_8
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_6_INV_0 : INV
    port map (
      I => counter(31),
      O => Mcompar_counter_31_GND_3_o_LessThan_2_o_lut_6_Q
    );
  Mcount_counter_lut_0_INV_0 : INV
    port map (
      I => counter(0),
      O => Mcount_counter_lut(0)
    );
  Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_6_inv1_INV_0 : INV
    port map (
      I => Mcompar_counter_31_GND_3_o_LessThan_2_o_cy_6_Q_200,
      O => counter_31_GND_3_o_LessThan_2_o
    );
  fifo2 : fifo_8x1024
    port map (
      clk => CLK_BUFGP_8,
      rst => rst,
      wr_en => N0,
      rd_en => prog_full2,
      full => full2,
      empty => NLW_fifo2_empty_UNCONNECTED,
      prog_full => prog_full2,
      din(7) => din2(7),
      din(6) => din2(6),
      din(5) => din2(5),
      din(4) => din2(4),
      din(3) => din2(3),
      din(2) => din2(2),
      din(1) => din2(1),
      din(0) => din2(0),
      prog_full_thresh(9) => rst,
      prog_full_thresh(8) => rst,
      prog_full_thresh(7) => rst,
      prog_full_thresh(6) => N0,
      prog_full_thresh(5) => N0,
      prog_full_thresh(4) => N0,
      prog_full_thresh(3) => N0,
      prog_full_thresh(2) => rst,
      prog_full_thresh(1) => N0,
      prog_full_thresh(0) => rst,
      dout(7) => dout2(7),
      dout(6) => dout2(6),
      dout(5) => dout2(5),
      dout(4) => dout2(4),
      dout(3) => dout2(3),
      dout(2) => dout2(2),
      dout(1) => dout2(1),
      dout(0) => dout2(0),
      data_count(9) => NLW_fifo2_data_count_9_UNCONNECTED,
      data_count(8) => NLW_fifo2_data_count_8_UNCONNECTED,
      data_count(7) => NLW_fifo2_data_count_7_UNCONNECTED,
      data_count(6) => NLW_fifo2_data_count_6_UNCONNECTED,
      data_count(5) => NLW_fifo2_data_count_5_UNCONNECTED,
      data_count(4) => NLW_fifo2_data_count_4_UNCONNECTED,
      data_count(3) => NLW_fifo2_data_count_3_UNCONNECTED,
      data_count(2) => NLW_fifo2_data_count_2_UNCONNECTED,
      data_count(1) => NLW_fifo2_data_count_1_UNCONNECTED,
      data_count(0) => NLW_fifo2_data_count_0_UNCONNECTED
    );
  fifo1 : fifo_8x1024
    port map (
      clk => CLK_BUFGP_8,
      rst => rst,
      wr_en => N0,
      rd_en => prog_full1,
      full => full1,
      empty => NLW_fifo1_empty_UNCONNECTED,
      prog_full => prog_full1,
      din(7) => din1(7),
      din(6) => din1(6),
      din(5) => din1(5),
      din(4) => din1(4),
      din(3) => din1(3),
      din(2) => din1(2),
      din(1) => din1(1),
      din(0) => din1(0),
      prog_full_thresh(9) => rst,
      prog_full_thresh(8) => rst,
      prog_full_thresh(7) => rst,
      prog_full_thresh(6) => N0,
      prog_full_thresh(5) => N0,
      prog_full_thresh(4) => N0,
      prog_full_thresh(3) => N0,
      prog_full_thresh(2) => rst,
      prog_full_thresh(1) => N0,
      prog_full_thresh(0) => rst,
      dout(7) => dout1(7),
      dout(6) => dout1(6),
      dout(5) => dout1(5),
      dout(4) => dout1(4),
      dout(3) => dout1(3),
      dout(2) => dout1(2),
      dout(1) => dout1(1),
      dout(0) => dout1(0),
      data_count(9) => NLW_fifo1_data_count_9_UNCONNECTED,
      data_count(8) => NLW_fifo1_data_count_8_UNCONNECTED,
      data_count(7) => NLW_fifo1_data_count_7_UNCONNECTED,
      data_count(6) => NLW_fifo1_data_count_6_UNCONNECTED,
      data_count(5) => NLW_fifo1_data_count_5_UNCONNECTED,
      data_count(4) => NLW_fifo1_data_count_4_UNCONNECTED,
      data_count(3) => NLW_fifo1_data_count_3_UNCONNECTED,
      data_count(2) => NLW_fifo1_data_count_2_UNCONNECTED,
      data_count(1) => NLW_fifo1_data_count_1_UNCONNECTED,
      data_count(0) => NLW_fifo1_data_count_0_UNCONNECTED
    );

end Structure;

-- synthesis translate_on
