-- ### **Exercise 105: Show Employees Who Share the Same Start Year**
-- **Question:**  
-- Write a query to list all employees who **share their start year with at least one other employee**.

SELECT 
  first_name, 
  start_year
FROM employees
WHERE start_year IN (
  SELECT start_year
  FROM employees
  GROUP BY start_year
  HAVING COUNT(*) > 1
);


-- ### ✅ **Why This Works:**
-- - The subquery finds `start_year`s that occur more than once.
-- - The outer query selects all employees whose `start_year` is in that list.

-- 💡 Use `HAVING COUNT(*) > 1` to identify duplicates when grouping by a column!
