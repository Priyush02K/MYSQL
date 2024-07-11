CREATE TABLE employee(  
    name varchar(45) NOT NULL,    
    occupation varchar(35) NOT NULL,    
    working_date date,  
    working_hours varchar(10)  
);
INSERT INTO employee VALUES    
('Robin', 'Scientist', '2020-10-04', 12),  
('Warner', 'Engineer', '2020-10-04', 10),  
('Peter', 'Actor', '2020-10-04', 13),  
('Marco', 'Doctor', '2020-10-04', 14),  
('Brayden', 'Teacher', '2020-10-04', 12),  
('Antonio', 'Business', '2020-10-04', 11);  

select * from employee;
SELECT COUNT(name) FROM employee;     
SELECT SUM(working_hours) AS "Total working hours" FROM employee;    
SELECT AVG(working_hours) AS "Average working hours" FROM employee;  
SELECT MIN(working_hours) AS Minimum_working_hours FROM employee; 
SELECT MAX(working_hours) AS Maximum_working_hours FROM employee;    
SELECT working_date FROM employee LIMIT 1;    
SELECT working_hours FROM employee ORDER BY name DESC LIMIT 1;
 SELECT emp_id, emp_fname, emp_lname, dept_id, GROUP_CONCAT(designation) as "designation" FROM employee group by emp_id;    