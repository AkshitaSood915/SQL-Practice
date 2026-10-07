-- Create the database
CREATE DATABASE IF NOT EXISTS student_practice;

-- Select the database
USE student_practice;

-- Create the student table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

-- Insert student records
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101, 'anil', 78, 'C', 'Pune'),
(102, 'bhumika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'dhruv', 96, 'A', 'Delhi'),
(105, 'emanuel', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi');

-- Display all student records
SELECT *
FROM student;

-- Count all students in cities where the highest marks exceed 90
SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

-- Count only students with marks above 90 in each city
SELECT city, COUNT(rollno)
FROM student
WHERE marks > 90
GROUP BY city;

-- Find cities where at least one grade A student scored above 93
SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) > 93;