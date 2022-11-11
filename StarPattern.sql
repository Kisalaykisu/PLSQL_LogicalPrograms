 /* Print the star pattern by using PLSQL
*/

DECLARE
-- declare variable n,
--I AND J of datatype number
N NUMBER := 7;
I NUMBER;
J NUMBER;
BEGIN
-- loop from 1 to n
FOR I IN 1..N
LOOP
	FOR J IN 1..I
	LOOP
	DBMS_OUTPUT.PUT('*') ; -- printing *
	END LOOP;
	DBMS_OUTPUT.NEW_LINE; -- for new line
END LOOP;
END;
--Program End
