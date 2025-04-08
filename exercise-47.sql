-- ### **Exercise 47: Find Departments with Only One Employee**
-- **Question:**  
-- Write a query to find departments that have **exactly one employee**.  

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) = 1;

-- ### ✅ **Why This Works:**
-- - `GROUP BY department` groups all employees by department.
-- - `COUNT(*)` counts how many employees are in each group.
-- - `HAVING COUNT(*) = 1` filters only those groups where the count is exactly 1.

-- 💡 **Use `HAVING` when filtering aggregate values like `COUNT`, `SUM`, or `AVG`.**
