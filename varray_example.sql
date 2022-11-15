SET SERVEROUTPUT ON;
DECLARE
    type namesArray IS VARRAY(5) OF varchar2(20);
    type grades IS VARRAY(5) Of INTEGER;
    names namesArray;
    marks grades;
    total INTEGER;
begin
    names := namesArray('Kisalay', 'Sparsh', 'Arnesh', 'Sidharth', 'Undertaker');
    marks := grades(56, 89, 23, 99, 91);
    total := names.count;
    FOR i in 1..total 
    LOOP
        dbms_output.put_line('Student: '||names(i)||', Marks: '||marks(i));
    END LOOP;
end;