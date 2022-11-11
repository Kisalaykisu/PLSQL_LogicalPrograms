/* Q) Convert given number into words. */

DECLARE

	-- declare variable are num, num_to_word, str, len, c
	-- and in above declare variable num, len, c are integer datatype
	-- and num_to_word and str are varchar datatype
	num		 INTEGER;
	num_to_word VARCHAR2(100);
	str		 VARCHAR2(100);
	len		 INTEGER;
	c		 INTEGER;
BEGIN
	num := 123456;

	len := Length(num);

	dbms_output.Put_line('Entered Number is: '
						||num);

	FOR i IN 1..len LOOP
		c := Substr(num, i, 1);

		SELECT Decode(c, 0, 'Zero ',
						1, 'One ',
						2, 'Two ',
						3, 'Three ',
						4, 'Four ',
						5, 'Five ',
						6, 'Six ',
						7, 'Seven ',
						8, 'Eight ',
						9, 'Nine ')
		INTO str
		FROM dual;

		num_to_word := num_to_word
					||str;
	END LOOP;

	dbms_output.Put_line('Number to words: '
						||num_to_word);
END;

-- Program End
