-- ### **Exercise 78: Use CONCAT to Create Full Name**
-- **Question:**  
-- Write a query to display each employee’s full name as a single column: `first_name` + ' ' + `last_name` as `full_name`.

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;


-- ### ✅ **Why This Works:**
-- - `CONCAT(first_name, ' ', last_name)` merges the two columns with a space between them.
-- - `AS full_name` gives the resulting column a readable alias.

-- 💡 If `CONCAT` is unavailable, you can also use `first_name || ' ' || last_name` in some databases like PostgreSQL.
