library ieee;
use ieee.std_logic_1164.all;
library work;
entity DECODER is
port (A:in std_logic_vector(2 downto 0);
E:in std_logic;
Y: out std_logic_vector(7 downto 0));
end entity DECODER;
architecture Struct of DECODER is
 function remo(E:in std_logic)
 return std_logic_vector is
 variable rmv:std_logic_vector(7 downto 0); 
begin
if E='0' then
for i in 0 to 7 loop
rmv(i):='0';
end loop;
end if;
 return rmv;
 end remo;
 
 function dec1(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d1:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='0' and A(1)='0' and  A(2)='0'  then
 for i in 0 to 7 loop
if i=0 then
d1(i):='1'; 
else
d1(i):='0'; 
end if;
end loop;
end if;
return d1;
end dec1;

function dec2(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d2:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='1' and A(1)='0' and  A(2)='0'  then
 for i in 0 to 7 loop
if i=1 then 
d2(i):='1';
else
d2(i):='0';
end if; 
end loop;
end if;
return d2;
end dec2;

function dec3(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d3:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='0' and A(1)='1' and  A(2)='0'  then
 for i in 0 to 7 loop
if i=2 then 
d3(i):='1';
else
d3(i):='0';
end if; 
end loop;
end if;
return d3;
end dec3;

function dec4(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d4:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='1' and A(1)='1' and  A(2)='0'  then
 for i in 0 to 7 loop
if i=3 then 
d4(i):='1';
else
d4(i):='0';
end if; 
end loop;
end if;
return d4;
end dec4;

function dec5(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d5:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='0' and A(1)='0' and  A(2)='1'  then
 for i in 0 to 7 loop
if i=4 then 
d5(i):='1';
else
d5(i):='0';
end if; 
end loop;
end if;
return d5;
end dec5;

function dec6(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d6:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='1' and A(1)='0' and  A(2)='1'  then
 for i in 0 to 7 loop
if i=5 then 
d6(i):='1';
else
d6(i):='0';
end if; 
end loop;
end if;
return d6;
end dec6;

function dec7(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d7:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='0' and A(1)='1' and  A(2)='1'  then
 for i in 0 to 7 loop
if i=6 then 
d7(i):='1';
else
d7(i):='0';
end if; 
end loop;
end if;
return d7;
end dec7;

function dec8(A:in std_logic_vector(2 downto 0);
E:in std_logic)
return std_logic_vector is
 variable d8:std_logic_vector(7 downto 0); 
 begin 
 if E='1' and A(0)='1' and A(1)='1' and  A(2)='1'  then
 for i in 0 to 7 loop
if i=7 then 
d8(i):='1';
else
d8(i):='0';
end if; 
end loop;
end if;
return d8;
end dec8;
begin
decode:process(A,E)
begin
if E='0' then 
Y<=remo(E);
elsif 
E='1' and A(0)='0' and A(1)='0' and  A(2)='0'  then
Y<=dec1(A,E);
elsif 
E='1' and A(0)='1' and A(1)='0' and  A(2)='0'  then
Y<=dec2(A,E);
elsif 
E='1' and A(0)='0' and A(1)='1' and  A(2)='0'  then
Y<=dec3(A,E);
elsif 
E='1' and A(0)='1' and A(1)='1' and  A(2)='0'  then
Y<=dec4(A,E);
elsif 
E='1' and A(0)='0' and A(1)='0' and  A(2)='1'  then
Y<=dec5(A,E);
elsif 
E='1' and A(0)='1' and A(1)='0' and  A(2)='1'  then
Y<=dec6(A,E);
elsif 
E='1' and A(0)='0' and A(1)='1' and  A(2)='1'  then
Y<=dec7(A,E);
elsif 
E='1' and A(0)='1' and A(1)='1' and  A(2)='1'  then
Y<=dec8(A,E);
end if;
end process ; 
end struct;





