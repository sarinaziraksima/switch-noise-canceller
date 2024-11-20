--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:54:01 05/22/2024
-- Design Name:   
-- Module Name:   C:/Users/Apple/Desktop/ise/mod/tb.vhd
-- Project Name:  mod
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod_m_counter
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
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sw
  generic(
N: integer := 15; -- number of bits
M: integer := 25000 -- mod-M
);
    PORT(
         clk : IN  std_logic;
         sw_i : IN  std_logic;
         reset : IN  std_logic;
         max_tick : OUT  std_logic;
         q : OUT  std_logic_vector(14 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal sw_i : std_logic := '0';

 	--Outputs
   signal max_tick : std_logic;
   signal q : std_logic_vector(14 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ps;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: sw PORT MAP (
          clk => clk,
          sw_i => sw_i,
          reset => reset,
          max_tick => max_tick,
          q => q
        );


   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
   
   clk_process2 :process
   
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	
   	
      -- hold reset state for 100 ns.
      
      wait for 10 ns;	
      reset <= '1';
      sw_i <= '1';
      wait for 10 ns;	
      reset <= '0';
      wait for clk_period*25000;
	  sw_i <= '0';
	  wait for clk_period*25000/2;
	  sw_i <= '1';
	  wait for clk_period*23999;
	  sw_i <= '0';
	  wait for clk_period*10;
	  sw_i <= '1';
	  wait for clk_period*25000;
      -- insert stimulus here 

      wait;
   end process;

END;
