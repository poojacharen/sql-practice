-- ### **Exercise 76: Find Employees Joined Before 2018**
-- **Question:**  
-- Write a query to find employees who **started before 2018** based on the `start_year` column.

SELECT 
  first_name, 
  start_year
FROM employees
WHERE start_year < 2018;


-- ### ✅ **Why This Works:**
-- - `start_year < 2018` filters employees who joined **before 2018**.
-- - This is a simple and efficient way to query based on year comparisons.

-- 💡 You can also add `ORDER BY start_year` if you want them sorted chronologically!
