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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sobel_filter is
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
end sobel_filter;

architecture Behavioral of sobel_filter is

function  sqrt  ( d : UNSIGNED ) return UNSIGNED is
--http://vhdlguru.blogspot.fr/2010/03/vhdl-function-for-finding-square-root.html
variable a : unsigned(31 downto 0):=d;  --original input.
variable q : unsigned(15 downto 0):=(others => '0');  --result.
variable left,right,r : unsigned(17 downto 0):=(others => '0');  --input to adder/sub.r-remainder.
variable i : integer:=0;

begin
	for i in 0 to 15 loop
	right(0):='1';
	right(1):=r(17);
	right(17 downto 2):=q;
	left(1 downto 0):=a(31 downto 30);
	left(17 downto 2):=r(15 downto 0);
	a(31 downto 2):=a(29 downto 0);  --shifting by 2 bit.
	if ( r(17) = '1') then
	r := left + right;
	else
	r := left - right;
	end if;
	q(15 downto 1) := q(14 downto 0);
	q(0) := not r(17);
	end loop; 
return q;

end sqrt;

component square_multiplier
  PORT (
    clk : IN STD_LOGIC;
    a : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    b : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    ce : IN STD_LOGIC;
    p : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END component;

component filter_kernel
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

 END COMPONENT;

 signal M0_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M1_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M2_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M3_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M4_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M5_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M6_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M7_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M8_1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M0_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M1_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M2_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M3_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M4_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M5_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M6_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M7_2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M8_2 : std_logic_vector(11 downto 0) := (others => '0');
 
 signal Sum1_1 :std_logic_vector (12 downto 0) := (others => '0');
 signal Sum2_1 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum3_1 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum4_1 :std_logic_vector (12 downto 0):= (others => '0');
 signal D1_1 :std_logic_vector (11 downto 0):= (others => '0');
 signal D2_1 :std_logic_vector (11 downto 0):= (others => '0');
 signal D3_1 :std_logic_vector (11 downto 0):= (others => '0');
 signal Sum5_1 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum6_1 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum7_1 :std_logic_vector (14 downto 0):= (others => '0');
 signal Sum8_1 :std_logic_vector (15 downto 0):= (others => '0');
 signal Sum1_2 :std_logic_vector (12 downto 0) := (others => '0');
 signal Sum2_2 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum3_2 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum4_2 :std_logic_vector (12 downto 0):= (others => '0');
 signal D1_2 :std_logic_vector (11 downto 0):= (others => '0');
 signal D2_2 :std_logic_vector (11 downto 0):= (others => '0');
 signal D3_2 :std_logic_vector (11 downto 0):= (others => '0');
 signal Sum5_2 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum6_2 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum7_2 :std_logic_vector (14 downto 0):= (others => '0');
 signal Sum8_2 :std_logic_vector (15 downto 0):= (others => '0');
 signal G_1 :std_logic_vector ( 31 downto 0) := (others => '0');
 signal G_2 :std_logic_vector ( 31 downto 0) := (others => '0');
 
 signal result_long :std_logic_vector(15 downto 0) := (others => '0');
 signal cntr : integer := 0;

begin

squarer1 : square_multiplier
  PORT MAP (
    clk => CLK,
    a => Sum8_1,
    b => Sum8_1,
    ce => Enable,
    p => G_1
  );
squarer2 : square_multiplier
  PORT MAP (
    clk => CLK,
    a => Sum8_2,
    b => Sum8_2,
    ce => Enable,
    p => G_2
  );
  
kernel_mult1: filter_kernel
Port map ( P0 => P0,
           P1 => P1,
           P2 => P2,
           P3 => P3,
           P4 => P4,
           P5 => P5,
           P6 => P6,
           P7 => P7,
           P8 => P8,
			  --coefficients
			  C0 => "1111",-- -1
			  C1 => (others => '0'),
			  C2 => "0001",-- 1
			  C3 => "1110",-- -2
			  C4 => (others => '0'),
			  C5 => "0010",-- 2
			  C6 => "1111",-- -1
			  C7 => (others => '0'),
			  C8 => "0001",-- 1
			  
			  --results of multiplication
			  M0 => M0_1,
			  M1 => M1_1,
			  M2 => M2_1,
			  M3 => M3_1,
			  M4 => M4_1,
			  M5 => M5_1,
			  M6 => M6_1,
			  M7 => M7_1,
			  M8 => M8_1,
			  
			  Enable => Enable,
           CLK => CLK
);
kernel_mult2: filter_kernel
Port map ( P0 => P0,
           P1 => P1,
           P2 => P2,
           P3 => P3,
           P4 => P4,
           P5 => P5,
           P6 => P6,
           P7 => P7,
           P8 => P8,
			  --coefficients
			  C0 => "0001",-- 1
			  C1 => "0010",-- 2
			  C2 => "0001",-- 1
			  C3 => (others => '0'),
			  C4 => (others => '0'),
			  C5 => (others => '0'),
			  C6 => "1111",-- -1
			  C7 => "1110",-- -2
			  C8 => "1111",-- -1
			  
			  --results of multiplication
			  M0 => M0_2,
			  M1 => M1_2,
			  M2 => M2_2,
			  M3 => M3_2,
			  M4 => M4_2,
			  M5 => M5_2,
			  M6 => M6_2,
			  M7 => M7_2,
			  M8 => M8_2,
			  
			  Enable => Enable,
           CLK => CLK
);

process(CLK)
begin
	if (Enable = '1') then  
		
		if (CLK'event and CLK = '1') then 
			
			--Gx
			D1_1 <= M0_1;
			Sum4_1 <= std_logic_vector(signed(M2_1(11)&M2_1) + signed(M1_1(11)&M1_1));--'0'&P2 + '0'&P1;
			Sum3_1 <= std_logic_vector(signed(M4_1(11)&M4_1) + signed(M3_1(11)&M3_1));--'0'&P4 + '0'&P3;
			Sum2_1 <= std_logic_vector(signed(M6_1(11)&M6_1) + signed(M5_1(11)&M5_1));--'0'&P6 + '0'&P5;
			Sum1_1 <= std_logic_vector(signed(M8_1(11)&M8_1) + signed(M7_1(11)&M7_1));--'0'&P8 + '0'&P7;
			
			Sum5_1 <= std_logic_vector(signed(Sum1_1(12)&Sum1_1) + signed(Sum2_1(12)&Sum2_1));--'0'&Sum1 + '0'&Sum2;
			Sum6_1 <= std_logic_vector(signed(Sum3_1(12)&Sum3_1) + signed(Sum4_1(12)&Sum4_1));--'0'&Sum3 + '0'&Sum4;
			D2_1 <= D1_1;
			
			Sum7_1 <= std_logic_vector(signed(Sum5_1(13)&Sum5_1) + signed(Sum6_1(13)&Sum6_1));--'0'&Sum5 + '0'&Sum6;
			D3_1 <= D2_1;
--			
			Sum8_1 <= std_logic_vector(signed(Sum7_1(14)&Sum7_1) + signed(D3_1(11)&D3_1(11)&D3_1(11)&D3_1(11)&D3_1));--'0'&Sum7 + "0000"&D3;
			
		
			------------------------------------
			--Gy
			D1_2 <= M0_2;
			Sum4_2 <= std_logic_vector(signed(M2_2(11)&M2_2) + signed(M1_2(11)&M1_2));--'0'&P2 + '0'&P1;
			Sum3_2 <= std_logic_vector(signed(M4_2(11)&M4_2) + signed(M3_2(11)&M3_2));--'0'&P4 + '0'&P3;
			Sum2_2 <= std_logic_vector(signed(M6_2(11)&M6_2) + signed(M5_2(11)&M5_2));--'0'&P6 + '0'&P5;
			Sum1_2 <= std_logic_vector(signed(M8_2(11)&M8_2) + signed(M7_2(11)&M7_2));--'0'&P8 + '0'&P7;
			
			Sum5_2 <= std_logic_vector(signed(Sum1_2(12)&Sum1_2) + signed(Sum2_2(12)&Sum2_2));--'0'&Sum1 + '0'&Sum2;
			Sum6_2 <= std_logic_vector(signed(Sum3_2(12)&Sum3_2) + signed(Sum4_2(12)&Sum4_2));--'0'&Sum3 + '0'&Sum4;
			D2_2 <= D1_2;
			
			Sum7_2 <= std_logic_vector(signed(Sum5_2(13)&Sum5_2) + signed(Sum6_2(13)&Sum6_2));--'0'&Sum5 + '0'&Sum6;
			D3_2 <= D2_2;
--			
			Sum8_2 <= std_logic_vector(signed(Sum7_2(14)&Sum7_2) + signed(D3_2(11)&D3_2(11)&D3_2(11)&D3_2(11)&D3_2));--'0'&Sum7 + "0000"&D3;
			
			------------------
			
			result_long <= std_logic_vector(sqrt(unsigned(G_1)+unsigned(G_2)));
         
			if unsigned(result_long) > 255 then
				Filter_out <= (others => '1');
			else
				Filter_out <= result_long(7 downto 0);
			end if;
			
			
			------------------
			if cntr = 10 then
				Result_Available <= '1';
			end if;

		end if;
	end if;
end process;

count : process(CLK, Enable)
begin
		if (Enable = '1') then  
		
			if (CLK'event and CLK = '1') then
			
				cntr <= cntr + 1;
			end if;
		end if;
	
end process count;

end Behavioral;

