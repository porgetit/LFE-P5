-- c2.vhd
library ieee;
use ieee.std_logic_1164.all;

entity C2 is
    port (
        S1 : in  std_logic;
        S2 : in  std_logic;
        S3 : in  std_logic;
        S4 : in  std_logic;
        S5 : in  std_logic;
        D1 : out std_logic
    );
end entity C2;

architecture behavior of C2 is
    signal D11, D12, D13, D14, D15, D16, D17, D18, D19, D110 : std_logic;
begin
    D11 <= (S1 or S2 or (not S3) or S4 or S5);
    D12 <= (S1 or S2 or (not S3) or S4 or (not S5));
    D13 <= (S1 or (not S2) or (not S3) or S4 or S5);
    D14 <= (S1 or (not S2) or (not S3) or S4 or (not S5));
    D15 <= (S1 or (not S2) or (not S3) or (not S4) or S5);
    D16 <= (S1 or (not S2) or (not S3) or (not S4) or (not S5));
    D17 <= ((not S1) or (not S2) or S3 or S4 or S5);
    D18 <= ((not S1) or (not S2) or S3 or S4 or (not S5));
    D19 <= ((not S1) or (not S2) or (not S3) or S4 or S5);
    D110 <= ((not S1) or (not S2) or (not S3) or S4 or (not S5));
    D1 <= D11 and D12 and D13 and D14 and D15 and D16 and D17 and D18 and D19 and D110;
end behavior;
