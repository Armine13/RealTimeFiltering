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

entity laplacian_filter is
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
end laplacian_filter;

architecture Behavioral of laplacian_filter is

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

 signal M0 : std_logic_vector(11 downto 0) := (others => '0');
 signal M1 : std_logic_vector(11 downto 0) := (others => '0');
 signal M2 : std_logic_vector(11 downto 0) := (others => '0');
 signal M3 : std_logic_vector(11 downto 0) := (others => '0');
 signal M4 : std_logic_vector(11 downto 0) := (others => '0');
 signal M5 : std_logic_vector(11 downto 0) := (others => '0');
 signal M6 : std_logic_vector(11 downto 0) := (others => '0');
 signal M7 : std_logic_vector(11 downto 0) := (others => '0');
 signal M8 : std_logic_vector(11 downto 0) := (others => '0');

 signal Sum1 :std_logic_vector (12 downto 0) := (others => '0');
 signal Sum2 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum3 :std_logic_vector (12 downto 0):= (others => '0');
 signal Sum4 :std_logic_vector (12 downto 0):= (others => '0');
 signal D1 :std_logic_vector (11 downto 0):= (others => '0');
 signal D2 :std_logic_vector (11 downto 0):= (others => '0');
 signal D3 :std_logic_vector (11 downto 0):= (others => '0');
 signal Sum5 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum6 :std_logic_vector (13 downto 0):= (others => '0');
 signal Sum7 :std_logic_vector (14 downto 0):= (others => '0');
 signal Sum8 :std_logic_vector (15 downto 0):= (others => '0');
 signal cntr : integer := 0;
begin


kernel_mult: filter_kernel
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
			  C0 => (others => '0'),
			  C1 => "1111",---1
			  C2 => (others => '0'),
			  C3 => "1111",---1
			  C4 => "0100",--4
			  C5 => "1111",---1
			  C6 => (others => '0'),
			  C7 => "1111",---1
			  C8 => (others => '0'),
			  
			  --results of multiplication
			  M0 => M0,
			  M1 => M1,
			  M2 => M2,
			  M3 => M3,
			  M4 => M4,
			  M5 => M5,
			  M6 => M6,
			  M7 => M7,
			  M8 => M8,
			  
			  Enable => Enable,
           CLK => CLK
);


process(CLK)
begin
	if (Enable = '1') then   -- If Cache memory not ready
		
		if (CLK'event and CLK = '1') then    -- Cache memory ready to send 
			
			D1 <= M0;
			Sum4 <= std_logic_vector(signed(M2(11)&M2) + signed(M1(11)&M1));--'0'&P2 + '0'&P1;
			Sum3 <= std_logic_vector(signed(M4(11)&M4) + signed(M3(11)&M3));--'0'&P4 + '0'&P3;
			Sum2 <= std_logic_vector(signed(M6(11)&M6) + signed(M5(11)&M5));--'0'&P6 + '0'&P5;
			Sum1 <= std_logic_vector(signed(M8(11)&M8) + signed(M7(11)&M7));--'0'&P8 + '0'&P7;
			
			Sum5 <= std_logic_vector(signed(Sum1(12)&Sum1) + signed(Sum2(12)&Sum2));--'0'&Sum1 + '0'&Sum2;
			Sum6 <= std_logic_vector(signed(Sum3(12)&Sum3) + signed(Sum4(12)&Sum4));--'0'&Sum3 + '0'&Sum4;
			D2 <= D1;
			
			Sum7 <= std_logic_vector(signed(Sum5(13)&Sum5) + signed(Sum6(13)&Sum6));--'0'&Sum5 + '0'&Sum6;
			D3 <= D2;
--			
			Sum8 <= std_logic_vector(signed(Sum7(14)&Sum7) + signed(D3(11)&D3(11)&D3(11)&D3(11)&D3));--'0'&Sum7 + "0000"&D3;
			
			if Sum8(15) = '1' then
				Filter_out <= (others => '0');
			elsif signed(Sum8) > 255 then
				Filter_out <= (others => '1');
			else
				Filter_out <= Sum8(7 downto 0);
			end if;
			
			
			if cntr = 5 then
				Result_Available <= '1';
			end if;

		end if;
	end if;
end process;

count : process(CLK, Enable)
begin
		if (Enable = '1') then   -- If Cache memory not ready
		
			if (CLK'event and CLK = '1') then    -- Cache memory ready to send 
			
				cntr <= cntr + 1;
			end if;
		end if;
	
end process count;

end Behavioral;

