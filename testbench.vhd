-- Main_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Main_tb is
end entity Main_tb;

architecture Test of Main_tb is
    ------------------------------------------------------------------
    -- Señales del banco de pruebas
    ------------------------------------------------------------------
    signal S1, S2, S3, S4, S5 : std_logic;
    signal D0, D1, D2, D3     : std_logic;

    ------------------------------------------------------------------
    -- Instancia del dispositivo bajo prueba (DUT)
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
    -- Proceso de estimulación
    ------------------------------------------------------------------
    process begin
        -- Estímulo 0
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 1
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 2
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 3
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 4
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 5
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 6
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 7
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 8
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 9
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 10
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 11
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 12
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 13
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 14
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 15
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '0';
        wait for 10 ns;

        -- Estímulo 16
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 17
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 18
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 19
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 20
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 21
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 22
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 23
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '0'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 24
        S1 <= '0'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 25
        S1 <= '1'; S2 <= '0'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 26
        S1 <= '0'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 27
        S1 <= '1'; S2 <= '1'; S3 <= '0'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 28
        S1 <= '0'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 29
        S1 <= '1'; S2 <= '0'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 30
        S1 <= '0'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        -- Estímulo 31
        S1 <= '1'; S2 <= '1'; S3 <= '1'; S4 <= '1'; S5 <= '1';
        wait for 10 ns;

        wait;
    end process;
end architecture Test;
