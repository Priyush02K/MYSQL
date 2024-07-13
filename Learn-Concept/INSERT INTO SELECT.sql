CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees (employee_id, employee_name, department, salary)
VALUES
    (1, 'John Doe', 'IT', 60000.00),
    (2, 'Jane Smith', 'HR', 55000.00),
    (3, 'Bob Johnson', 'Finance', 70000.00),
    (4, 'Alice Williams', 'Marketing', 50000.00);
    
desc employees;
select * from employees;

INSERT INTO new_employees (employee_id, employee_name, department, salary)
SELECT employee_id, employee_name, department, salary
FROM employees
WHERE salary > 55000;