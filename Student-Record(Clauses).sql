-- Create and select the database
CREATE DATABASE IF NOT EXISTS student_practice;
USE student_practice;

-- Create the student table
-- PRIMARY KEY: roll number must be unique and cannot be NULL
-- NOT NULL: marks cannot be NULL
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

-- Display all columns and rows
SELECT *
FROM student;

-- DISTINCT: display each city only once
SELECT DISTINCT city
FROM student;

-- AND: both conditions must be true
-- Find students with marks above 80 who live in Mumbai
SELECT *
FROM student
WHERE marks > 80 AND city = 'Mumbai';

-- Find students whose marks plus 10 are greater than 100
-- This calculation does not change the stored marks
SELECT *
FROM student
WHERE marks + 10 > 100;

-- BETWEEN: select marks from 80 to 90, including both endpoints
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;

-- IN: find students living in Delhi or Mumbai
SELECT *
FROM student
WHERE city IN ('Delhi', 'Mumbai');

-- Find students living in Delhi, Mumbai, or Gurgaon
SELECT *
FROM student
WHERE city IN ('Delhi', 'Mumbai', 'Gurgaon');

-- NOT IN: exclude students living in Delhi or Mumbai
SELECT *
FROM student
WHERE city NOT IN ('Delhi', 'Mumbai');

-- LIMIT: return at most 3 students with marks above 75
-- Without ORDER BY, which 3 matching rows are returned is not guaranteed
SELECT *
FROM student
WHERE marks > 75
LIMIT 3;

-- ORDER BY with ASC: sort cities alphabetically (A to Z)
SELECT *
FROM student
ORDER BY city ASC;

-- ORDER BY with DESC: sort marks from highest to lowest
-- LIMIT 3: display the top 3 students by marks
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;