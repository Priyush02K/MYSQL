SELECT CONCAT_WS(', ', 'apple', 'banana', 'orange') AS Concatenated_String;
SELECT CONCAT('Hello', ' ', 'World') AS Concatenated_String;
SELECT CHARACTER_LENGTH('Hello World') AS String_Length;
SELECT ELT(3, 'apple', 'banana', 'orange', 'grape') AS Selected_String;
SELECT EXPORT_SET(5, 2, '0', ',', '1') AS Binary_Set;
SELECT FIELD('banana', 'apple', 'banana', 'orange') AS Position;
SELECT FIND_IN_SET('banana', 'apple,banana,orange') AS Position;
SELECT FORMAT(1234567.89, 2) AS Formatted_Number;
SELECT FROM_BASE64('SGVsbG8gV29ybGQ=') AS Decoded_String;
SELECT HEX('Hello') AS Hexadecimal_Value;
SELECT INSERT('Hello World', 7, 0, 'Beautiful ') AS Modified_String;
SELECT INSTR('Hello World', 'Wor') AS Position;
SELECT LOWER('Hello World') AS Lowercase_String;
SELECT UPPER('Hello World') AS Lowercase_String;
SELECT LPAD('apple', 10, '*') AS Padded_String;
SELECT LTRIM('   Hello World   ') AS Trimmed_String;
SELECT MAKE_SET(1, 'a', 'b', 'c') AS Set_Values;
SELECT MID('Hello World', 7, 5) AS Extracted_String;
SELECT OCTET_LENGTH('Hello World') AS Byte_Length;
SELECT OCT(42) AS Octal_Number;
SELECT ORD('A') AS Unicode_Code;
SELECT POSITION('bar' IN 'foobarbar') AS Position;
SELECT QUOTE('It\'s a beautiful day!') AS Quoted_String;
SELECT REPLACE('Hello World', 'World', 'Universe') AS Modified_String;
SELECT REPEAT('Hello ', 3) AS Repeated_String;
SELECT RIGHT('Hello World', 5) AS RightmostString;
SELECT RPAD('apple', 10, '*') AS Padded_String;
SELECT RTRIM('   Hello World   ') AS Trimmed_String;
SELECT SOUNDEX('Hello') AS Soundex_Value;




















