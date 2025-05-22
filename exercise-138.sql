-- ### **Exercise 128: Count of Departments Having More Than 2 Employees**
-- **Question:**  
-- Write a query to count how many departments have **more than 2 employees**.

SELECT COUNT(*) AS dept_count
FROM (
  SELECT department
  FROM employees
  GROUP BY department
  HAVING COUNT(*) > 2
) AS dept_summary;




-- ### ✅ **Why This Works:**
-- - The subquery groups employees by department.
-- - `HAVING COUNT(*) > 2` filters for departments with more than two employees.
-- - The outer query simply counts how many such departments exist.

-- 💡 Use subqueries like this when you want to count filtered aggregates.
