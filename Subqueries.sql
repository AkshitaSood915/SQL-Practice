-- Create and select the database
CREATE DATABASE IF NOT EXISTS subquery_practice;
USE subquery_practice;

-- Create the student table
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL
);

-- Insert student records
INSERT INTO student (rollno, name, marks)
VALUES
(101, 'anil', 78),
(102, 'bhumika', 93),
(103, 'chetan', 85),
(104, 'dhruv', 96),
(105, 'emanuel', 92),
(106, 'farah', 82);

-- Find students scoring above the average marks
SELECT name, marks
FROM student
WHERE marks > (
    SELECT AVG(marks)
    FROM student
);

-- Find students with even roll numbers
SELECT name, rollno
FROM student
WHERE rollno IN (
    SELECT rollno
    FROM student
    WHERE rollno % 2 = 0
);

-- Find the highest marks among students from Delhi
SELECT MAX(marks)
FROM (
    SELECT *
    FROM student
    WHERE city = 'Delhi'
) AS temp;