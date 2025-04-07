SELECT first_name, last_name, department, salary
FROM employees
WHERE department = 'IT' AND salary > 65000;


-- ### ✅ **Why This Works:**
-- - The `WHERE` clause filters the employees table.
-- - The condition `department = 'IT'` selects only employees in the IT department.
-- - The condition `salary > 65000` narrows the list to those who earn more than 65000.

-- ### 🔍 Bonus Tip:
-- Use `AND` in `WHERE` when **both conditions** must be true for a row to appear in the result.

-- 💡 **This pattern is great for filtering multi-condition criteria in reports, dashboards, or search tools!**
