-- ### **Exercise 110: Count Employees per Start Year, But Only Show Years with 2 or More**
-- **Question:**  
-- Write a query to show `start_year` and the number of employees, **but only for years that had 2 or more joiners**.

SELECT start_year, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY start_year
HAVING COUNT(*) >= 2;


-- ### ✅ **Why This Works:**
-- - `GROUP BY start_year` groups rows by each year.
-- - `COUNT(*)` tallies how many employees joined that year.
-- - `HAVING COUNT(*) >= 2` filters only those years with 2 or more employees.

-- 💡 Use `HAVING` for filtering groups **after aggregation**, not `WHERE`.
