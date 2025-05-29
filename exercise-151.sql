-- ### **Exercise 151: Display Employees with Salary Greater Than 55,000**

-- **Question:**  
-- Write a SQL query to display the `first_name`, `last_name`, and `salary` of employees who earn more than 55,000.

SELECT 
  first_name, 
  last_name, 
  salary
FROM employees
WHERE salary > 55000;


-- ✅ Why This Is Correct:

-- SELECT first_name, last_name, salary: This gets the columns you need.

-- FROM employees: You're querying from the correct table.

-- WHERE salary > 55000: This correctly filters employees earning more than 55,000.
