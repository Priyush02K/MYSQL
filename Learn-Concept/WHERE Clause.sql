use gfg;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    age INT
);
INSERT INTO customers VALUES
    (1, 'John Doe', 'New York', 30),
    (2, 'Jane Smith', 'Los Angeles', 25),
    (3, 'Robert Johnson', 'New York', 35),
    (4, 'Alice Brown', 'Chicago', 28),
    (5, 'Charlie Wilson', 'Los Angeles',40);  
select *  from  customers;
SELECT * FROM customers WHERE city = 'New York';
SELECT * FROM customers WHERE city = 'Los Angeles' AND age < 30;
SELECT * FROM customers WHERE city = 'New York' OR age > 35;
SELECT * FROM customers WHERE age > 30;
SELECT * FROM customers WHERE name LIKE 'J%';
SELECT * FROM customers WHERE city IN ('New York', 'Chicago');
SELECT * FROM customers WHERE city = 'New York' ORDER BY age DESC;






