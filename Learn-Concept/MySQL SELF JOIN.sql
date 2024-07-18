CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(employee_id)
);

INSERT INTO employees VALUES (1, 'John', NULL);
INSERT INTO employees VALUES (2, 'Jane', 1);
INSERT INTO employees VALUES (3, 'Bob', 2);
INSERT INTO employees VALUES (4, 'Alice', 1);
INSERT INTO employees VALUES (5, 'Charlie', 3);

select * from employees;

SELECT e1.employee_id AS employee_id, 
       e1.employee_name AS employee_name, 
       e2.employee_name AS manager_name
FROM employees e1
INNER JOIN employees e2 ON e1.manager_id = e2.employee_id;

SELECT e1.employee_id AS employee_id, 
       e1.employee_name AS employee_name, 
       e2.employee_name AS manager_name
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.employee_id;