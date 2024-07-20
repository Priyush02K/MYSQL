SELECT RTRIM ('geeksforgeeks') 
AS RightTrimmedString;  
SELECT 'MySQL' AS String, RTRIM ('MySQL') 
AS Tstring;
use db;
CREATE TABLE Student
(
  Student_id INT AUTO_INCREMENT,  
  Student_name VARCHAR(100) NOT NULL,
  Student_Class VARCHAR(20) NOT NULL,
  PRIMARY KEY(Student_id )

);
INSERT INTO Student
(Student_name, Student_Class )
VALUES
  ('Ananya Majumdar     ', 'IX'),
  ('Anushka Samanta    ', 'X' ),
  ('Aniket Sharma   ', 'XI' ),
  ('Anik Das      ', 'X'  ),
  ('Riya Jain   ', 'IX' ),
  ('Tapan Samanta    ', 'X' ),
  ('Deepak Sharma    ', 'X'  ),
  ('Ankana Jana    ', 'XII'),
  ('Shreya Ghosh    ', 'X') ;
  
 select * from Student;
 
 SELECT  
  Student_id,  Student_name,
  RTRIM( Student_name) AS  TrimmedSname 
  FROM Student ;   
