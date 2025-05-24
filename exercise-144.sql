-- ### **Exercise 134: List Employees and Their Manager Names**
-- **Question:**  
-- Assume the `employees` table has a `manager_id` column pointing to another `employee_id` in the same table.  
-- Write a query to show each employee’s `first_name` and their manager’s `first_name`.

SELECT 
  e.first_name AS employee_name,
  m.first_name AS manager_name
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id;



-- ### ✅ **Why This Works:**
-- - We alias the `employees` table as `e` for employees and `m` for managers.
-- - `e.manager_id = m.employee_id` connects each employee with their manager.
-- - The `JOIN` excludes employees without a manager (like Alice).

-- 💡 This is a classic self-join pattern used for org charts or hierarchy views.
