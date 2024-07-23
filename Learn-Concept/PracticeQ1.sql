-- Practice Qs 1
-- Qs: Create a database for your company named XYZ.
-- Stepl : create a table inside this DB to store employee info (id, name and salary).
-- Step2 : Add following information in the DB •
		-- 1, "adam"t 25000
		-- 2, "bob", 30000
		-- 3, "casey", 40000
-- Step3 : Select & view all your table data.

create database XYZ_Comp;
use XYZ_Comp;
create table employee(
	id int primary key,
    name varchar(100),
    salary int
);
insert into employee 
(id, name, salary)
values
 (1, "adam", 25000),
 (2, "bob", 30000),
 (3, "casey", 40000);

select * from employee;
