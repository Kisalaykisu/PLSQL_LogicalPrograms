/* Factorial number
*/

Declare  
num   number:= #  
fact number:= 1;  
temp number;  
begin  
  temp := num;  
   while (num > 0)
loop
    fact := fact * num;  
    num   := num - 1;  
end loop;
  Dbms_Output.Put_line('factorial of ' || temp ||  '  is ' || fact);  
end;
