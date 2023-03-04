-- Create a database
CREATE DATABASE StudentsDB;
-- Use the database
USE StudentsDB;
-- Create a table
CREATE TABLE Students (
    Id INT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL
);
-- Insert data into the table
INSERT INTO Students (Id, Name, Age)
VALUES (101, 'John', 22),
       (102, 'Jane', 23),
       (103, 'Alex', 21);
select *from Students;
-- Update data in the table
UPDATE Students SET Name='Jack' WHERE Id=101;

select *from Students;

-- Delete data from the table
DELETE FROM Students WHERE Id=103;

select *from Students;
drop table Students;
-- Select all data from the table
select *from Students;
