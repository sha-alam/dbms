-- Create a new database
CREATE DATABASE my_database;

-- Use the new database
USE my_database;

-- Create a new table
CREATE TABLE my_table (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  salary DECIMAL(10,2)
);

-- Insert some sample data into the table
INSERT INTO my_table (id, name, age, salary)
VALUES
  (1, 'John Doe', 30, 50000),
  (2, 'Jane Smith', 25, 60000),
  (3, 'Bob Johnson', 40, 75000),
  (4, 'Mary Jones', 35, 80000),
  (5, 'Mike Brown', 28, 45000);

-- Group By & Having Clause
SELECT name, AVG(salary) AS average_salary
	FROM my_table
	GROUP BY name
	HAVING AVG(salary) > 55000;

-- Order By Clause
SELECT name, age, salary
	FROM my_table
	ORDER BY salary DESC;

-- Create View Clause
CREATE VIEW my_view AS
	SELECT name, age, salary
	FROM my_table
	WHERE age >= 30;

select *from my_view;

-- Indexing
CREATE INDEX my_index ON my_table (name);
select *from my_table;

-- Procedure Clause
CREATE PROCEDURE my_procedure
AS
BEGIN
  SELECT name, age, salary
  FROM my_table
  WHERE age >= 30;
END;
exec my_procedure;