-- ### **Exercise 111: Count Employees per Department and Start Year**
-- **Question:**  
-- Write a query to show the number of employees **grouped by department and start_year**.

SELECT
  department,
  start_year,
  COUNT(employee_id) AS employee_count
FROM employees
GROUP BY department, start_year;




-- ### ✅ **Why This Works:**
-- - `GROUP BY department, start_year` groups records by both columns.
-- - `COUNT(employee_id)` counts the number of employees in each group.

-- 💡 Always separate multiple grouping columns with a comma — using `AND` is not valid SQL syntax.
