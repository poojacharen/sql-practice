-- ### **Exercise 63: Count Employees per Department**
-- **Question:**  
-- Write a query to count how many employees are in each department and sort the result by the count in **descending order**.

SELECT department, COUNT(*) AS employee_count
FROM employees
WHERE department IS NOT NULL
GROUP BY department
ORDER BY employee_count DESC;


-- ### ✅ **Why This Works:**
-- - `GROUP BY department` creates a group for each department.
-- - `COUNT(*)` counts employees in each group.
-- - `WHERE department IS NOT NULL` ensures we don’t count missing departments.
-- - `ORDER BY ... DESC` shows the departments with the most employees first.

-- 💡 You can also use `COUNT(employee_id)` instead of `COUNT(*)` for more specific counting!
