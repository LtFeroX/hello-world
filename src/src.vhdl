library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity counter is
  port(
        iClk    : in std_logic,
        iReset  : in std_logic,
        iEnable : in std_logic,
        oCount  : out std_logic_vector(3 downto 0)
        );
end counter;

architecture behav of counter is
  signal pre_count : std_logic_vector(3 downto 0);

  begin
    Counter : process(iClk, iReset, iEnable)
    begin
      if iReset = '1' then
        pre_count <= "0000";
      elsif (iClk = '1' and clk'event) then
        if enable = '1' then
          pre_count <= pre_count + 1;
        end if;
      end if;
    end process;

    count <= pre_count;

end architecture;
