CREATE DATABASE Company;
USE Company;
CREATE TABLE Employee (
  EmployeeId int,
  Name varchar(20),
  Gender varchar(20),
  Salary int,
  Department varchar(20),
  Experience varchar(20)
);

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES (5, 'Priya Sharma', 'Female', 45000, 'IT', '2 years');

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES (6, 'Rahul Patel', 'Male', 65000, 'Sales', '5 years');

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES (7, 'Nisha Gupta', 'Female', 55000, 'Marketing', '4 years');

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES (8, 'Vikram Singh', 'Male', 75000, 'Finance', '7 years');

INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES (9, 'Aarti Desai', 'Female', 50000, 'IT', '3 years');

SELECT * FROM Employee;

SELECT Department, sum(Salary) as Salary
FROM employee
GROUP BY department;
SELECT Department, sum(Salary) as Salary
FROM employee
GROUP BY department
HAVING SUM(Salary) >= 50000;
