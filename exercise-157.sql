-- List All Departments with More Than 2 Employees**

-- -- **Question:**  
-- -- Write a SQL query to list `department_id` and the number of employees in each department, **only for departments that have more than 2 employees**.

SELECT first_name, 
  COUNT(*) AS name_count
FROM employees
GROUP BY first_name;


-- You're grouping the data by first_name to count how many times each name appears.

-- COUNT(*) tallies the number of rows for each grouped first_name.

-- This gives you a count of employees who share the same first name.

-- 💡 Optional Enhancement: You can add ORDER BY name_count DESC to show the most common first names at the top.
