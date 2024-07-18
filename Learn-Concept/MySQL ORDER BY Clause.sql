USE Company;
CREATE TABLE geeksforgeeks(
  user_id varchar(100) PRIMARY KEY,
  name varchar(100),
  ranks int,
  courses_enrolled int,
  questions_solved int
 );
INSERT INTO geeksforgeeks(user_id,name,ranks,courses_enrolled,questions_solved)
VALUES('vish3001','Vishu',01,10,150);

INSERT INTO geeksforgeeks(user_id,name,ranks,courses_enrolled,questions_solved)
VALUES('neeraj119','Neeraj',02,09,125);

INSERT INTO geeksforgeeks(user_id,name,ranks,courses_enrolled,questions_solved)
VALUES('ayush105','Aayush',03,08,110);

INSERT INTO geeksforgeeks(user_id,name,ranks,courses_enrolled,questions_solved)
VALUES('sumit85','Sumit',04,07,100);

INSERT INTO geeksforgeeks(user_id,name,ranks,courses_enrolled,questions_solved)
VALUES('harsh05','Harsh',05,06,95);

SELECT * from geeksforgeeks ORDER BY ranks ASC;
SELECT * FROM geeksforgeeks ORDER BY courses_enrolled DESC;