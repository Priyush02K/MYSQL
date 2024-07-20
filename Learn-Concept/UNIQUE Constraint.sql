CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_code VARCHAR(20) UNIQUE,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);