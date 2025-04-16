-- ### **Exercise 66: Join Employees with Departments**
-- **Question:**  
-- Assume there’s another table called `departments` with columns `department_name` and `manager`. Write a query to join it with the `employees` table and list each employee’s
-- `first_name`, `department`, and the corresponding `manager`.

SELECT e.first_name, e.department, d.manager
FROM employees e
JOIN departments d ON e.department = d.department_name;


-- ### ✅ **Why This Works:**
-- - `JOIN` combines both tables based on a common column (`department = department_name`).
-- - We use **table aliases** `e` and `d` for readability.
-- - The result includes only those employees with matching department entries in both tables.

-- 💡 Use `LEFT JOIN` if you want to include employees without matching department data too.
