CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

CREATE TABLE grades (
    grade_id INT PRIMARY KEY,
    grade_name VARCHAR(2)
);

-- Insert data into the students table
INSERT INTO students VALUES (1, 'Student A');
INSERT INTO students VALUES (2, 'Student B');

-- Insert data into the courses table
INSERT INTO courses VALUES (101, 'Math');
INSERT INTO courses VALUES (102, 'Science');

-- Insert data into the grades table
INSERT INTO grades VALUES (1, 'A');
INSERT INTO grades VALUES (2, 'B');

SELECT * FROM students
CROSS JOIN courses
CROSS JOIN grades;
