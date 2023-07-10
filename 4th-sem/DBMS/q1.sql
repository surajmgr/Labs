-- Question 1
-- Create Database named Prime_College
CREATE DATABASE Prime_College;
USE Prime_College;

-- Create table named Student with necessary columns
CREATE TABLE Student (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(100),
  stream VARCHAR(50),
  result DECIMAL(5, 2)
);

-- Insert records into the Student table
INSERT INTO Student (id, name, address, stream, result)
VALUES
  (1, 'Ram Sharma', 'Kathmandu', 'CSIT', 85.50),
  (2, 'Sita Pokhrel', 'Lalitpur', 'BBA', 75.25),
  (3, 'Hari Shrestha', 'Bhaktapur', 'BIM', 68.75),
  (4, 'Gita Thapa', 'Kathmandu', 'Civil Engineering', 92.00),
  (5, 'Nabin Maharjan', 'Pokhara', 'Mechanical Engineering', 61.80);

-- Perform the following queries with the Student table:

-- a. Display the names of all students who are not from Kathmandu.
SELECT name
FROM Student
WHERE address <> 'Kathmandu';

-- b. Display the details of students whose stream is CSIT.
SELECT *
FROM Student
WHERE stream = 'CSIT';

-- c. Delete the data of the student whose id is 5.
DELETE FROM Student
WHERE id = 5;

-- d. Update the name of the student whose id is 2.
UPDATE Student
SET name = 'New Name'
WHERE id = 2;

-- e. Display the name and result of students who have passed in the first division and above.
SELECT name, result
FROM Student
WHERE result >= 60;

-- Create a view of the Student table which will display the name, stream, and result percentage of students.
CREATE VIEW Student_View AS
SELECT name, stream, result
FROM Student;
