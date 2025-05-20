-- ### **Exercise 118: Show the Department with the Most Employees**
-- **Question:**  
-- Write a query to find the department that has the **highest number of employees**.

SELECT 
  department, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY department
ORDER BY employee_count DESC
LIMIT 1;


-- ### ✅ **Why This Works:**
-- - `GROUP BY department` groups the employees by department.
-- - `COUNT(*)` counts how many employees are in each.
-- - `ORDER BY employee_count DESC` sorts departments by employee count, highest first.
-- - `LIMIT 1` returns only the top department.

-- 💡 This is a classic technique for extracting the top-N results in any grouped dataset.
