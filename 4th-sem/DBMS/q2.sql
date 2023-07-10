-- Question 2
-- Create Database named Company
CREATE DATABASE Company;
USE Company;

-- Create table named Employee with necessary columns
CREATE TABLE Employee (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  address VARCHAR(100),
  department VARCHAR(50),
  salary DECIMAL(10, 2)
);

-- Insert records into the Employee table
INSERT INTO Employee (id, name, address, department, salary)
VALUES
  (1, 'Amit Khatri', 'Kathmandu', 'IT', 35000),
  (2, 'Sunita Rai', 'Lalitpur', 'Finance', 40000),
  (3, 'Rajesh Thapa', 'Bhaktapur', 'Operations', 45000),
  (4, 'Sabina Shrestha', 'Kathmandu', 'HR', 30000),
  (5, 'Niraj Maharjan', 'Pokhara', 'Marketing', 55000);

-- Perform the following queries with the Employee table:

-- a. Display the names of all employees who are not working in the HR department.
SELECT name
FROM Employee
WHERE department <> 'HR';

-- b. Display the names and salaries of employees whose salary is greater than 20k.
SELECT name, salary
FROM Employee
WHERE salary > 20000;

-- c. Display the total salary of employees paid by the company at once.
SELECT SUM(salary) AS total_salary
FROM Employee;

-- d. Update the salary of employees to 30k who are currently receiving 20k.
UPDATE Employee
SET salary = 30000
WHERE salary = 20000;

-- e. Display the details of employees who are from Kathmandu.
SELECT *
FROM Employee
WHERE address = 'Kathmandu';

-- Create a view of the Employee table which will display the name, salary, and department of employees.
CREATE VIEW Employee_View AS
SELECT name, salary, department
FROM Employee;
