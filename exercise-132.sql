-- ### **Exercise 122: List Departments Present in One Table but Not the Other**
-- **Question:**  
-- You have two tables: `departments` and `employees`.
-- Write a query to list department codes from `departments` that are **not assigned to any employee**.

SELECT dept_code
FROM departments
WHERE dept_code NOT IN (
  SELECT DISTINCT department FROM employees WHERE department IS NOT NULL
);


-- ### ✅ **Why This Works:**
-- - The subquery selects all departments currently assigned to employees.
-- - `NOT IN` filters out those departments from the master list in `departments`.
-- - `DISTINCT` and `IS NOT NULL` ensure we exclude duplicates and handle null values safely.

-- 💡 This is a typical "anti-join" scenario used in audits or data completeness checks.
