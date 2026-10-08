-- Create the department table
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert department records
INSERT INTO dept (id, name)
VALUES
(101, 'english'),
(102, 'IT');

-- Automatically update or delete related teachers when a department changes
CREATE TABLE teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Insert teacher records
INSERT INTO teacher (id, name, dept_id)
VALUES
(1, 'Adam', 101),
(2, 'Bob', 102);

-- Changing department ID also updates Bob's dept_id to 103
UPDATE dept
SET id = 103
WHERE id = 102;

-- Display teachers after the cascading update
SELECT * FROM teacher;

-- Deleting department 103 also deletes Bob's record
DELETE FROM dept
WHERE id = 103;

-- Display remaining teachers
SELECT * FROM teacher;