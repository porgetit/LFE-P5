-- main.vhd
library ieee;
use ieee.std_logic_1164.all;

entity Main is
    port (
        -- Entradas 
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        -- Salidas 
        D0 : out std_logic;
        D1 : out std_logic;
        D2 : out std_logic;
        D3 : out std_logic
    );
end entity Main;

architecture Structural of Main is

    ------------------------------------------------------------------
    --  Declaración de componentes (se enlazan con las entidades C1‑C4)
    ------------------------------------------------------------------
    component C1
        port ( S1,S2,S3,S4,S5 : in  std_logic;
               D0             : out std_logic );
    end component;
    component C2
        port ( S1,S2,S3,S4,S5 : in  std_logic;
               D1             : out std_logic );
    end component;
    component C3
        port ( S1,S2,S3,S4,S5 : in  std_logic;
               D2             : out std_logic );
    end component;
    component C4
        port ( S1,S2,S3,S4,S5 : in  std_logic;
               D3             : out std_logic );
    end component;

    ------------------------------------------------------------------
    --  Señales intermedias
    ------------------------------------------------------------------
    signal D0_C1 : std_logic;
    signal D1_C2 : std_logic;
    signal D2_C3 : std_logic;
    signal D3_C4 : std_logic;

begin
    ------------------------------------------------------------------
    --  Instancias de los sub‑módulos
    ------------------------------------------------------------------
    U_C1 : C1 port map (S1, S2, S3, S4, S5, D0_C1);
    U_C2 : C2 port map (S1, S2, S3, S4, S5, D1_C2);
    U_C3 : C3 port map (S1, S2, S3, S4, S5, D2_C3);
    U_C4 : C4 port map (S1, S2, S3, S4, S5, D3_C4);

    ------------------------------------------------------------------
    --  Lógica de asignación de salidas
    ------------------------------------------------------------------
    D0 <= D0_C1;
    D1 <= D1_C2;
    D2 <= D2_C3;
    D3 <= D3_C4;

end architecture Structural;
