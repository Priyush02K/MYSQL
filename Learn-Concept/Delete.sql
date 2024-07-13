use gfg;


CREATE TABLE students1 (
  ID int NOT NULL,
  Name varchar(255) NOT NULL,
  Department varchar(255) NOT NULL,
  Location varchar(255) NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO students1 (ID, Name, Department, Location) VALUES
  (12, 'Ravi', 'IT', 'Hyderabad'),
  (15, 'Kiran', 'MECH', 'Mysore'),
  (18, 'Navya', 'CSE', 'Hyderabad'),
  (20, 'Rahul', 'CIVIL', 'Chennai'),
  (22, 'Alex', 'ECE', 'Bengaluru'),
  (24, 'Bob', 'IT', 'Vizag');
   
  DELETE FROM STUDENT  WHERE (Department ='IT' or Department ='CSE') and location ='Hyderabad';