-- ### **Exercise 90: List Departments and Total Employees**
-- **Question:**  
-- Write a query to list each department and the **total number of employees** in that department.

SELECT 
  department, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY department;



-- ### ✅ **Why This Works:**
-- - `COUNT(*)` counts the number of employees in each department.
-- - `GROUP BY department` groups the rows by department before counting.

-- 💡 This technique is very helpful when summarizing how many entries belong to each group!
