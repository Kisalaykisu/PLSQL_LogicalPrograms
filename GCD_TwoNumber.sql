/* Q) Palindrome with anonymous block using plsql
*/

create or replace function lcm(num1 in number, num2 in number) return number is
begin
return (num1*num2)/gcd(num1,num2);
* end;

select lcm(64,40) from dual;