SELECT UCASE("MySQL on geeksforgeeks is FUN!") AS UpperText;
SELECT UPPER("MySQL on geeksforgeeks is FUN!") AS UpperText;
SET @str = BINARY 'Geeksforgeeks';
SELECT UPPER(@str), UPPER(CONVERT(@str USING utf8mb4)) AS UpperText;
