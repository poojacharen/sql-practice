-- ### **Exercise 60: Find Employees Whose Salary Is Not in a Specific Range**
-- **Question:**  
-- Write a query to find employees whose salary is **not between 52000 and 60000 (inclusive)**.

SELECT 
  first_name, 
  salary
FROM employees
WHERE salary NOT BETWEEN 52000 AND 60000;


-- ### ✅ **Why This Works:**
-- - `BETWEEN ... AND ...` includes the boundaries (52000 and 60000).
-- - `NOT BETWEEN` returns rows where salary is **less than 52000 or greater than 60000**.

-- 💡 This is a clear and readable way to exclude a numeric range in SQL.
