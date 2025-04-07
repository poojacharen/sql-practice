-- ### **Exercise 49: Use GROUP BY with HAVING to Filter Aggregates**
-- **Question:**  
-- Write a query to list departments with an **average salary greater than 55000**.


SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;


-- ### ✅ **Why This Works:**
-- - `GROUP BY` groups all employees by department.
-- - `AVG(salary)` calculates the average salary in each group.
-- - `HAVING` filters only those groups where the average exceeds 55000.

-- 💡 **Tip:** Use `HAVING` with aggregate functions like `COUNT()`, `AVG()`, or `SUM()` to filter grouped data.
