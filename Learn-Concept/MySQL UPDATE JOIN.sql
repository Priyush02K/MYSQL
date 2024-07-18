-- Example1: Updating Based on Matching Columns
-- create table Courses
	
CREATE TABLE courses (
  course_id INT PRIMARY KEY,
  course_name VARCHAR(50)
);

-- create table Students
CREATE TABLE students (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  course_id INT,
  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- create table Grades
CREATE TABLE grades (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  grade INT,
  FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- Inserting sample data into Courses
INSERT INTO courses (course_id, course_name)
VALUES (1, 'Math'), (2, 'History'), (3, 'Science');

-- Inserting sample data into Students
INSERT INTO students (student_id, student_name, course_id)
VALUES (1, 'Alice', 1), (2, 'Bob', 2), (3, 'Charlie', 3);

-- Inserting sample data into Grades
INSERT INTO grades (student_id, student_name, grade)
VALUES (1, 'Alice', 90), (2, 'Bob', 85), (3, 'Charlie', 92);

-- Updating grades for students in the 'Science' course
UPDATE students
JOIN courses ON students.course_id = courses.course_id
JOIN grades ON students.student_id = grades.student_id
SET grades.grade = grades.grade + 5
WHERE courses.course_name = 'Science';


# Exampke2: UPDATE With INNER JOIN
-- Creating sample tables
CREATE TABLE students (
    studentid INT PRIMARY KEY,
    studentname VARCHAR(50),
    age INT
);

CREATE TABLE age_increase (
    studentid INT PRIMARY KEY,
    age_increase_amount INT
);

-- Inserting sample data
INSERT INTO students VALUES
(1, 'Tina', 20),
(2, 'Isha', 22),
(3, 'Rahul', 21);

INSERT INTO age_increase VALUES
(1, 2),
(3, 1);

-- Update query with INNER JOIN
UPDATE students
INNER JOIN age_increase ON students.studentid = age_increase.studentid
SET students.age = students.age  +  age_increase.age_increase_amount;


# Example3: UPDATE With LEFT JOIN
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    status VARCHAR(20),
    customer_id INT
);

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO orders VALUES
    (123, 'pending', 1),
    (456, 'processing', NULL);

INSERT INTO customers VALUES
    (1, 'Alia'),
    (2, 'Bob');

UPDATE orders
LEFT JOIN customers ON orders.customer_id = customers.id
SET orders.status = 'inactive'
WHERE customers.id IS NULL;
