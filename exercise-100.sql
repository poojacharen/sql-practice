-- ### **Exercise 100: List Departments with Total Salary > 100000**
-- **Question:**  
-- Write a query to list departments where the **total salary of all employees exceeds 100000**.

SELECT 
  department, 
  SUM(salary) AS total_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000;



-- ### ✅ **Why This Works:**
-- - `GROUP BY department` groups rows by department.
-- - `SUM(salary)` calculates the total salary per department.
-- - `HAVING` filters grouped results based on the aggregated sum.

-- 💡 Use `HAVING` instead of `WHERE` when filtering based on aggregate results like `SUM`, `AVG`, `COUNT`, etc.
