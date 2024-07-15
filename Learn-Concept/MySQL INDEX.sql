CREATE INDEX index_1
ON table_index (column4);
EXPLAIN SELECT * FROM products WHERE category = 'Electronics';
CREATE INDEX idx_category ON products (category);
EXPLAIN SELECT * FROM products WHERE category = 'Electronics';
DROP INDEX idx_category ON products;

-- drop
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10, 2)
);

INSERT INTO products (product_name, category, price) VALUES
('Laptop', 'Electronics', 1200.00),
('Smartphone', 'Electronics', 800.00),
('Coffee Maker', 'Appliances', 100.00),
('Running Shoes', 'Clothing', 80.00),
('Digital Camera', 'Electronics', 500.00);
CREATE INDEX idx_category ON products (category);
SHOW INDEX FROM products;
DROP INDEX idx_category ON products;
SHOW INDEX FROM products;

-- Creating the products table with a single-column unique index
CREATE TABLE productss (
    product_Id INT PRIMARY KEY,
    product_name VARCHAR(50),
    UNIQUE (product_Id)
);

INSERT INTO products (product_Id, product_name) VALUES
(101, 'Computer'),
(102, 'Smartphone'),
(103, 'Headphones');



