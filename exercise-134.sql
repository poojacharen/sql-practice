-- ### **Exercise 124: List Employees Who Earn More Than Their Department's Average**
-- **Question:**  
-- Write a query to show employees whose `salary` is **greater than** their department's **average salary**.

SELECT 
  e.first_name, 
  e.department, 
  e.salary
FROM employees e
JOIN (
  SELECT department, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department
) d ON e.department = d.department
WHERE e.salary > d.avg_salary;



-- ### ✅ **Why This Works:**
-- - The subquery calculates average salary per department.
-- - We join this back to the main `employees` table to compare individual salaries.
-- - The `WHERE` clause filters employees earning more than the average for their department.

-- 💡 This pattern is very useful for identifying outliers or top performers by group.
