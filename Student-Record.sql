CREATE DATABASE college;
USE college;
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO student (rollno, name)
VALUES
(101, 'karan'),
(102, 'arjun'),
(103, 'ram');

INSERT INTO student VALUES (104, 'shyam');

SELECT * FROM student;