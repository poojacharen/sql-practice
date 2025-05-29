-- ### **Exercise 152: Display Employees Ordered by Salary (Descending)**

-- **Question:**  
-- Write a SQL query to display all employees’ `first_name`, `last_name`, and `salary`, ordered by `salary` in descending order.

SELECT 
  first_name, 
  last_name, 
  salary
FROM employees
ORDER BY salary DESC;


-- Explanation:
-- This retrieves all employee names and salaries, and then sorts them by salary in descending order (DESC), meaning the highest salaries appear first. 
-- This is useful when you want to rank or identify top earners in your data.
