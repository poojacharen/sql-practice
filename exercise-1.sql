-- Exercise 1: Basic SELECT Query
-- Question:
-- Write an SQL query to retrieve the first name, last name, and salary of all employees in the IT department.

SELECT first_name,
       last_name,
       salary
 FROM employees
 WHERE department = "IT";

