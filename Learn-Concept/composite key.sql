CREATE TABLE employee (  
    employee_id INT,
    department_id INT,
    employee_name VARCHAR(255),
    PRIMARY KEY (employee_id, department_id)
);  
DESCRIBE employee;  
INSERT INTO employee (employee_id, department_id, employee_name) VALUES
    (101, 1, 'John Doe'),
    (102, 2, 'Jane Smith'),
    (103, 1, 'Bob Johnson'),
    (104, 3, 'Alice Brown');
    
    SELECT * FROM employee;  
-- Composite Key Using ALTER Statement
CREATE TABLE orders (
    order_id INT,
    product_id INT,
    quantity INT
);

ALTER TABLE orders
ADD PRIMARY KEY (order_id, product_id,quanitity);
INSERT INTO orders (order_id, product_id, quanitity) VALUES
    (101, 1, 10),
    (102, 2, 12),
    (103, 1, 13),
    (104, 3, 14);

SELECT * FROM orders;  