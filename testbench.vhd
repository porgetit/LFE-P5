-- Main_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main_tb is
end entity Main_tb;

architecture Test of Main_tb is
    ------------------------------------------------------------------
    -- Testbench signals
    ------------------------------------------------------------------
    signal S1, S2, S3, S4, S5 : std_logic;
    signal D0, D1, D2, D3     : std_logic;

    ------------------------------------------------------------------
    -- Device Under Test (DUT) instance
    ------------------------------------------------------------------
    component Main
        port (
            S1,S2,S3,S4,S5 : in  std_logic;
            D0,D1,D2,D3    : out std_logic
        );
    end component;

begin
    DUT : Main
        port map (
            S1 => S1, S2 => S2, S3 => S3, S4 => S4, S5 => S5,
            D0 => D0, D1 => D1, D2 => D2, D3 => D3
        );

    ------------------------------------------------------------------
    -- Stimulation process
    ------------------------------------------------------------------
    process begin
        -- Stimulus 0: 00000
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 1: 00001
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 2: 00010
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 3: 00011
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 4: 00100
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 5: 00101
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 6: 00110
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 7: 00111
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 8: 01000
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 9: 01001
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 10: 01010
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 11: 01011
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 12: 01100
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 13: 01101
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 14: 01110
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 15: 01111
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 16: 10000
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 17: 10001
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 18: 10010
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 19: 10011
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 20: 10100
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 21: 10101
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 22: 10110
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 23: 10111
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 24: 11000
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 25: 11001
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 26: 11010
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 27: 11011
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 28: 11100
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 29: 11101
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Stimulus 30: 11110
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Stimulus 31: 11111
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        wait;
    end process;
end architecture Test;
