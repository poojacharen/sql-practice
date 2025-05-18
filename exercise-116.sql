-- ### **Exercise 106: Find Employee Pairs from the Same Department**
-- **Question:**  
-- Write a query to list **pairs of employees** (first names only) who work in the **same department**.

-- > Don't show a pair twice (e.g., both Alice-Bob and Bob-Alice), and don't pair someone with themselves.

SELECT e1.first_name AS employee_1, 
  e2.first_name AS employee_2
FROM employees e1
JOIN employees e2
  ON e1.department = e2.department
  AND e1.employee_id < e2.employee_id;

-- ### ✅ **Why This Works:**
-- - This is a **self-join** where we match employees in the same department.
-- - The condition `e1.employee_id < e2.employee_id` avoids duplicates (e.g., Alice–Emma and Emma–Alice) and self-pairs.

-- 💡 Self-joins are powerful for comparisons within the same table, especially in scheduling or organizational structures!
