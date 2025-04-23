-- ### **Exercise 95: Show Salary Difference from Department Average**
-- **Question:**  
-- Write a query to show each employee's `first_name`, `department`, and the **difference between their salary and their department's average salary** as `salary_diff`.

SELECT 
  e.first_name, 
  e.department, 
  ROUND(e.salary - d.avg_salary, 2) AS salary_diff
FROM employees e
JOIN (
  SELECT department, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department
) d ON e.department = d.department;


-- ### ✅ **Why This Works:**
-- - The subquery calculates the average salary per department.
-- - The outer query joins this result and subtracts it from each employee's salary.
-- - `ROUND(..., 2)` keeps the result formatted to two decimal places.

-- 💡 This technique helps compare individual performance or compensation against group averages!!!
