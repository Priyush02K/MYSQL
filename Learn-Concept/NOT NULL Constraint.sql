CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    age INT
);
INSERT INTO users (user_id, username, email, age)
VALUES
    (1, 'ram_123', 'ram123@gmail.com', 30),
    (2, 'sumitb 17', 'sumit@gmail.com', NULL),
    (3, 'rohit264', 'rohits@yopmail.com', 35),
    (4, 'mahi', 'msd@gmail.com', NULL),
    (5, 'Bob', 'bobzy@gmail.com', 25);

select * from users; 
    ALTER TABLE users
MODIFY COLUMN email VARCHAR(100) NOT NULL;
