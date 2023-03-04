-- Create a new table named "students" with columns "id," "name," "age," and "gender."

CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
age INT,
gender CHAR(1)
);

-- Insert sample data into the "students" table.

INSERT INTO students (id, name, age, gender)
VALUES (1, 'John', 20, 'M'),
(2, 'Jane', 21, 'F'),
(3, 'Mike', 19, 'M'),
(4, 'Lisa', 22, 'F'),
(5, 'David', 23, 'M');

-- SELECT Clause: Selecting all data from the "students" table.

SELECT *FROM students;

-- FROM Clause: Selecting data only from the "students" table.

SELECT id, name, age, gender
FROM students;

-- WHERE Clause: Selecting data only for female students from the "students" table.

SELECT *FROM students
WHERE gender = 'F';

-- Dropping the "students" table.

DROP TABLE students;