-- circuito_principal_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Circuito_Principal_tb is
end entity Circuito_Principal_tb;

architecture Test of Circuito_Principal_tb is
    ------------------------------------------------------------------
    -- Señales del banco de pruebas
    ------------------------------------------------------------------
    signal S1, S2, S3, S4, S5 : std_logic := '0';
    signal D0, D1, D2, D3     : std_logic;

    ------------------------------------------------------------------
    -- Instancia del dispositivo bajo prueba (DUT)
    ------------------------------------------------------------------
    component Circuito_Principal
        port (
            S1,S2,S3,S4,S5 : in  std_logic;
            D0,D1,D2,D3    : out std_logic
        );
    end component;

begin
    DUT : Circuito_Principal
        port map (
            S1 => S1, S2 => S2, S3 => S3, S4 => S4, S5 => S5,
            D0 => D0, D1 => D1, D2 => D2, D3 => D3
        );

    ------------------------------------------------------------------
    -- Proceso de estimulación: recorre las 32 combinaciones (0‑31)
    ------------------------------------------------------------------
    stim_proc : process
        variable pattern : unsigned(4 downto 0);
    begin
        for i in 0 to 31 loop
            pattern := to_unsigned(i, 5);

            S1 <= std_logic(pattern(0));
            S2 <= std_logic(pattern(1));
            S3 <= std_logic(pattern(2));
            S4 <= std_logic(pattern(3));
            S5 <= std_logic(pattern(4));

            wait for 10 ns;   -- retardo entre vectores de prueba
        end loop;

        wait;  -- finaliza la simulación
    end process;
end architecture Test;
