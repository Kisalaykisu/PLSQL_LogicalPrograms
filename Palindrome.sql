/* Q) Palindrome with anonymous block using plsql
*/

declare
    k number;
    c number;
    rev number:=0;
    d number;
begin
    k:=12321;
    c:=k;
    while k>0
    loop
        d:=mod(k,10);
        rev:=(rev*10)+r;
        k:=trunc(k/10);
    end loop;
    
    if c=rev
    then
        dbms_output.put_line('number is palindrome');
    else
        dbms_output.put_line('number is not palindrome');
    end if;
end;