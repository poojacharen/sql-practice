-- ### **Exercise 96: Count Employees per Start Year**
-- **Question:**  
-- Write a query to list each `start_year` and the number of employees who started that year.

SELECT 
  start_year, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY start_year
ORDER BY start_year;



-- ### ✅ **Why This Works:**
-- - `GROUP BY start_year` groups employees by the year they joined.
-- - `COUNT(*)` counts how many employees are in each group.
-- - `ORDER BY start_year` keeps the results sorted chronologically.

-- 💡 This type of grouping is commonly used in reports to show trends over time.
