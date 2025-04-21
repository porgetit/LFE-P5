-- c2_sop.vhd
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
    signal D111, D112, D113, D114, D115, D116, D117, D118, D119, D120 : std_logic;
    signal D121, D122 : std_logic;
begin
    D11 <= ((not S1) and (not S2) and (not S3) and (not S4) and (not S5));
    D12 <= ((not S1) and (not S2) and (not S3) and (not S4) and S5);
    D13 <= ((not S1) and (not S2) and (not S3) and S4 and (not S5));
    D14 <= ((not S1) and (not S2) and (not S3) and S4 and S5);
    D15 <= ((not S1) and (not S2) and S3 and S4 and (not S5));
    D16 <= ((not S1) and (not S2) and S3 and S4 and S5);
    D17 <= ((not S1) and S2 and (not S3) and (not S4) and (not S5));
    D18 <= ((not S1) and S2 and (not S3) and (not S4) and S5);
    D19 <= ((not S1) and S2 and (not S3) and S4 and (not S5));
    D110 <= ((not S1) and S2 and (not S3) and S4 and S5);
    D111 <= (S1 and (not S2) and (not S3) and (not S4) and (not S5));
    D112 <= (S1 and (not S2) and (not S3) and (not S4) and S5);
    D113 <= (S1 and (not S2) and (not S3) and S4 and (not S5));
    D114 <= (S1 and (not S2) and (not S3) and S4 and S5);
    D115 <= (S1 and (not S2) and S3 and (not S4) and (not S5));
    D116 <= (S1 and (not S2) and S3 and (not S4) and S5);
    D117 <= (S1 and (not S2) and S3 and S4 and (not S5));
    D118 <= (S1 and (not S2) and S3 and S4 and S5);
    D119 <= (S1 and S2 and (not S3) and S4 and (not S5));
    D120 <= (S1 and S2 and (not S3) and S4 and S5);
    D121 <= (S1 and S2 and S3 and (not S4) and S5);
    D122 <= (S1 and S2 and S3 and S4 and S5);
    D1 <= D11 or D12 or D13 or D14 or D15 or D16 or D17 or D18 or D19 or D110 or D111 or D112 or D113 or D114 or D115 or D116 or D117 or D118 or D119 or D120 or D121 or D122;
end behavior;
