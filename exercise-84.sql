-- ### **Exercise 84: Find Departments Without Employees**
-- **Question:**  
-- Assume there’s another table called `departments` with just a `department_name` column. Write a query to find departments that **have no employees assigned**.

SELECT department_name
FROM departments d
LEFT JOIN employees e ON d.department_name = e.department
WHERE e.department IS NULL;


-- ### ✅ **Why This Works:**
-- - `LEFT JOIN` keeps all departments, even if they have no matching employees.
-- - `WHERE e.department IS NULL` filters only the departments without assigned employees.

-- 💡 `LEFT JOIN` + `IS NULL` is a classic pattern to find missing links between two tables!
