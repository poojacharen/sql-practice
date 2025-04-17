-- ### **Exercise 73: List Departments with More Than 1 Employee**
-- **Question:**  
-- Write a query to list departments that have **more than one employee**.

SELECT department
FROM employees
WHERE department IS NOT NULL
GROUP BY department
HAVING COUNT(*) > 1;


-- ### ✅ **Why This Works:**
-- - `GROUP BY department` groups employees by their department.
-- - `HAVING COUNT(*) > 1` filters only departments that have more than one employee.
-- - `WHERE department IS NOT NULL` ensures NULL values don't get grouped incorrectly.

-- 💡 Always remember: use `HAVING` after `GROUP BY` when filtering aggregated results!
