--Creating Database:
CREATE DATABASE mydatabase7;
USE mydatabase7;
--Creating Table:
CREATE TABLE students (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  grade FLOAT
);
INSERT INTO students VALUES (1, 'Alice', 20, 3.5), (2, 'Bob', 22, 3.2), (3, 'Charlie', 19, 3.8);
--Creating Trigger:
CREATE TRIGGER update_grade
AFTER UPDATE ON students
FOR EACH ROW
BEGIN
  IF NEW.age > OLD.age THEN
    UPDATE students SET grade = grade + 0.1 WHERE id = NEW.id;
  ELSEIF NEW.age < OLD.age THEN
    UPDATE students SET grade = grade - 0.1 WHERE id = NEW.id;
  END IF;
END;

--Here is an example of how to use this trigger:
-- This will add 0.1 to Alice's grade
UPDATE students SET age = 21 WHERE id = 1;

-- This will subtract 0.1 from Bob's grade
UPDATE students SET age = 21 WHERE id = 2;

