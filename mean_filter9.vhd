----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:41:29 11/16/2016 
-- Design Name: 
-- Module Name:    mean_filter9 - Behavioral 
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
use ieee.std_logic_textio.all;
--use ieee.std_logic_arith.all;
--use ieee.std_logic_unsigned.all;

use IEEE.NUMERIC_STD.ALL;
--use UNISIM.VComponents.all;


entity mean_filter9 is
Port ( P0 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P1 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P2 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P3 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P4 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P5 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P6 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P7 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           P8 : in  STD_LOGIC_VECTOR (7 downto 0):=(others => '0');
           Filter_out : out  STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
			  Enable : in STD_LOGIC := '0';
           CLK : in  STD_LOGIC :='0';
           Result_Available : out  STD_LOGIC:='0');
end mean_filter9;


architecture Behavioral of mean_filter9 is

--component divider is Port 
--(   aclk : in STD_LOGIC := 'X'; 
--    s_axis_divisor_tvalid : in STD_LOGIC := 'X'; 
--    s_axis_dividend_tvalid : in STD_LOGIC := 'X'; 
--    m_axis_dout_tvalid : out STD_LOGIC; 
--    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
--    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
--    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
--  );
--end component;

function div_by_9(dividend:std_logic_vector) return std_logic_vector is
variable q, d: unsigned(11 downto 0);
variable r, quot: unsigned(31 downto 0);
variable quotient: std_logic_vector(dividend'high downto dividend'low);
begin
	d := unsigned(dividend);
		-- q is quotient, d is dividend
	q := shift_right(d,  2) + shift_right(d, 4); -- q = d*0.0101 (approx)
	q := q + shift_right(q, 4); -- q = d*0.01010101
	q := q + shift_right(q, 8);
	q := q + shift_right(q, 16);
	r := resize(d - q * 3, 32); -- 0 <= r <= 15.
	quot := resize(q + shift_right(5 * (r + 1), 4), 32);
	
	d := resize(quot, 12);
	q := shift_right(d,  2) + shift_right(d, 4); -- q = d*0.0101 (approx)
	q := q + shift_right(q, 4); -- q = d*0.01010101
	q := q + shift_right(q, 8);
	q := q + shift_right(q, 16);
	r := resize(d - q * 3, 32); -- 0 <= r <= 15.
	quot := resize(q + shift_right(5 * (r + 1), 4), 32);
--	
--	d := q;
--	
--	q := (d srl 2) + (d srl 4); -- q = d*0.0101 (approx)
--	q := q + (q srl 4); -- q = d*0.01010101
--	q := q + (q srl 8);
--	q := q + (q srl 16);
--	r := resize(d - q * 3, 32); -- 0 <= r <= 15.
--	q := resize(q + (5 * (r + 1) srl 4), 32);
	
	quotient := std_logic_vector(resize(quot, 12));
	return quotient;
end div_by_9;
--
--FUNCTION bin2gray(B1:std_logic_vector) return std_logic_vector is 
-- VARIABLE G1 : std_logic_vector(B1'high downto B1'low) ; 
-- BEGIN 
-- G1(G1'high):=B1(B1'high); 
-- for i in B1'high-1 downto B1'low loop 
--	G1(i) := B1(i+1) XOR B1(i); 
-- end loop; 
-- return G1; 
-- end bin2gray; -- end function
--	 
 signal Sum1 :std_logic_vector (8 downto 0) := (others => '0');
 signal Sum2 :std_logic_vector (8 downto 0):= (others => '0');
 signal Sum3 :std_logic_vector (8 downto 0):= (others => '0');
 signal Sum4 :std_logic_vector (8 downto 0):= (others => '0');
 signal D1 :std_logic_vector (7 downto 0):= (others => '0');
 signal D2 :std_logic_vector (7 downto 0):= (others => '0');
 signal D3 :std_logic_vector (7 downto 0):= (others => '0');
 signal Sum5 :std_logic_vector (9 downto 0):= (others => '0');
 signal Sum6 :std_logic_vector (9 downto 0):= (others => '0');
 signal Sum7 :std_logic_vector (10 downto 0):= (others => '0');
 signal Sum8 :std_logic_vector (11 downto 0):= (others => '0');

 signal div_res : std_logic_vector (11 downto 0):= (others => '0');
 signal cntr : integer := 0;

begin

--div1 : divider
--  PORT MAP (
--    aclk                   => CLK,
--    s_axis_divisor_tvalid  => s_axis_divisor_tvalid,
--    s_axis_divisor_tdata   => divisor,
--    s_axis_dividend_tvalid => s_axis_dividend_tvalid,
--    s_axis_dividend_tdata  => Sum8,
--    m_axis_dout_tvalid     => m_axis_dout_tvalid,
--    m_axis_dout_tdata      => m_axis_dout_tdata
--  );
--div2 : divider
--	PORT MAP (
--	 aclk                   => CLK,
--	 s_axis_divisor_tvalid  => s_axis_divisor_tvalid,
--	 s_axis_divisor_tdata   => divisor,
--	 s_axis_dividend_tvalid => s_axis_dividend_tvalid,
--	 s_axis_dividend_tdata  => dividend,
--	 m_axis_dout_tvalid     => m_axis_dout_tvalid,
--	 m_axis_dout_tdata      => m_axis_dout_tdata
--	);

pn :process(CLK)


begin
	if (Enable = '1') then   -- If Cache memory not ready
		
		if (CLK'event and CLK = '1') then    -- Cache memory ready to send 
			
			D1 <= P0;
			Sum4 <= std_logic_vector(unsigned('0'&P2) + unsigned('0'&P1));--'0'&P2 + '0'&P1;
			Sum3 <= std_logic_vector(unsigned('0'&P4) + unsigned('0'&P3));--'0'&P4 + '0'&P3;
			Sum2 <= std_logic_vector(unsigned('0'&P6) + unsigned('0'&P5));--'0'&P6 + '0'&P5;
			Sum1 <= std_logic_vector(unsigned('0'&P8) + unsigned('0'&P7));--'0'&P8 + '0'&P7;
			
			Sum5 <= std_logic_vector(unsigned('0'&Sum1) + unsigned('0'&Sum2));--'0'&Sum1 + '0'&Sum2;
			Sum6 <= std_logic_vector(unsigned('0'&Sum3) + unsigned('0'&Sum4));--'0'&Sum3 + '0'&Sum4;
			D2 <= D1;
			
			Sum7 <= std_logic_vector(unsigned('0'&Sum5) + unsigned('0'&Sum6));--'0'&Sum5 + '0'&Sum6;
			D3 <= D2;
			
			Sum8 <= std_logic_vector(unsigned('0'&Sum7) + unsigned("0000"&D3));--'0'&Sum7 + "0000"&D3;
			
			div_res <= div_by_9(Sum8);
			
			Filter_out <= div_res(7 downto 0);	
			
			
			
			if cntr = 4 then
				Result_Available <= '1';
			else
				cntr <= cntr + 1;
			end if;
--			
		end if;
	end if;
end process;


end Behavioral;