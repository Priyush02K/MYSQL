CREATE TABLE Employee
(
 Employee_id INT AUTO_INCREMENT,  
 Employee_name VARCHAR(100) NOT NULL,
 Joining_Date DATE NOT NULL,
 PRIMARY KEY(Employee_id )
);
INSERT INTO Employee
(Employee_name, Joining_Date )
VALUES
 ('     Ananya Majumdar', '2000-01-11'),
 ('   Anushka Samanta', '2002-11-10' ),
 ('   Aniket Sharma ', '2005-06-11' ),
 ('   Anik Das', '2008-01-21'  ),
 ('  Riya Jain', '2008-02-01' ),
 ('    Tapan Samanta', '2010-01-11' ),
 ('   Deepak Sharma', '2014-12-01'  ),
 ('   Ankana Jana', '2018-08-17'),
 ('  Shreya Ghosh', '2020-09-10') ;
 
 select * from Employee ;
 
  SELECT  
 Employee_id,  Employee_name,
 LTRIM( Employee_name) AS  TrimmedEname  
 FROM  Employee ;
