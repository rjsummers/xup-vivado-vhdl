----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2020 01:26:15 PM
-- Design Name: 
-- Module Name: lab2_2_1_circuitA_dataflow - Dataflow
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

entity lab2_2_1_circuitA_dataflow is
    Port ( v : in STD_LOGIC_VECTOR (3 downto 0);
           v_int : out STD_LOGIC_VECTOR (3 downto 0));
end lab2_2_1_circuitA_dataflow;

architecture Dataflow of lab2_2_1_circuitA_dataflow is
begin
    v_int(3) <= '0';
    v_int(2) <= v(2) and v(1);
    v_int(1) <= not v(1);
    v_int(0) <= v(0);
end Dataflow;
