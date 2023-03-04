CREATE DATABASE mydatabase;
USE mydatabase;
--create table--
CREATE TABLE table1 (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE table2 (
  id INT PRIMARY KEY,
  age INT
);
--insert value in table--
INSERT INTO table1 VALUES (1, 'Alice'), (2, 'Bob'), (3, 'Charlie');
INSERT INTO table2 VALUES (1, 25), (2, 30), (4, 40);
--cartesian product--
SELECT * FROM table1 CROSS JOIN table2 ON table1.id=table2.id;
--Natural Join--
SELECT * FROM table1 JOIN table2;
--Inner Join--
SELECT * FROM table1 INNER JOIN table2 USING (id);
--Left Outer Join--
SELECT * FROM table1 LEFT OUTER JOIN table2 ON table1.id = table2.id;
--Right Outer Join--
SELECT * FROM table1 RIGHT OUTER JOIN table2 ON table1.id = table2.id;
--Full Outer Join--
SELECT * FROM table1 FULL OUTER JOIN table2 ON table1.id = table2.id;

