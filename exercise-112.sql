-- ### **Exercise 102: Find Employees Earning More Than Their Department Average**
-- **Question:**  
-- Write a query to find employees whose salary is **greater than the average salary of their department**.

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
-- - The subquery calculates the average salary per department.
-- - The outer query joins this result with each employee.
-- - `WHERE e.salary > d.avg_salary` filters employees earning above their department average.

-- 💡 This is a common pattern for comparing rows against grouped aggregates!
