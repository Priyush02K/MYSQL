-- MySQL Create Trigger
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

DELIMITER //  
Create Trigger before_insert_empworkinghours   
BEFORE INSERT ON employee FOR EACH ROW  
BEGIN  
IF NEW.working_hours < 0 THEN SET NEW.working_hours = 0;  
END IF;  
END ;

INSERT INTO employee VALUES    
('Markus', 'Former', '2020-10-08', 14);  
  
 INSERT INTO employee VALUES    
('Alexander', 'Actor', '2020-10-012', -13); 
SHOW TRIGGERS);     

DROP TRIGGER employeedb.before_update_salaries;
SHOW DATE();