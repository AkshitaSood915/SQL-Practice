-- Display all student records
SELECT * FROM student;

-- Create a view containing roll numbers, names, and marks
CREATE VIEW view1 AS
SELECT rollno, name, marks
FROM student;

-- Display records from the view
SELECT * FROM view1;

-- Delete the view
DROP VIEW view1;