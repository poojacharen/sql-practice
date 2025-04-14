-- ### **Exercise 57: Use IS NOT NULL to Exclude Missing Departments**
-- **Question:**  
-- Write a query to find all employees who **have a department assigned** (i.e., department is **not NULL**).

SELECT 
  first_name, 
  last_name, 
  department
FROM employees
WHERE department IS NOT NULL;


-- ### ✅ **Why This Works:**
-- - `IS NOT NULL` checks if a column has a **non-missing value**.
-- - `= NULL` doesn't work in SQL — use `IS NULL` or `IS NOT NULL` instead.

-- 💡 Use this pattern to find complete or incomplete records in your data!
