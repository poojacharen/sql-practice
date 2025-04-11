-- ### **Exercise 53: Find Employees with NULL Department**
-- **Question:**  
-- Write a query to find employees who don’t have a department assigned (**NULL in department column**). 


SELECT first_name, last_name, department
FROM employees
WHERE department IS NULL;



-- ### ✅ **Why This Works:**
-- - In SQL, use `IS NULL` (not `= NULL`) to filter for NULL values.
-- - `= NULL` doesn't work because NULL represents "unknown", and cannot be compared using normal equality.

-- 💡 Use `IS NULL` and `IS NOT NULL` for checking missing or present values!
