----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 06/19/2020 01:47:13 PM
-- Design Name: 
-- Module Name: cla_dataflow - Dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cla_dataflow is
    Port ( p : in STD_LOGIC_VECTOR (3 downto 0);
           g : in STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC_VECTOR (3 downto 0));
end cla_dataflow;

architecture Dataflow of cla_dataflow is
signal c1, c2, c3, c4 : STD_LOGIC;
begin
c1 <= g(0) or (p(0) and cin);
c2 <= g(1) or (p(1) and c1);
c3 <= g(2) or (p(2) and c2);
c4 <= g(3) or (p(3) and c3);

cout(0) <= c1;
cout(1) <= c2;
cout(2) <= c3;
cout(3) <= c4;


end Dataflow;
