-- ### **Exercise 71: Extract First 3 Letters of First Name**
-- **Question:**  
-- Write a query to display each employee’s `first_name` and the **first 3 letters** of their name as `short_name`.

SELECT 
  first_name, 
  SUBSTRING(first_name, 1, 3) AS short_name
FROM employees;



-- ### ✅ **Why This Works:**
-- - `SUBSTRING(first_name, 1, 3)` extracts **3 characters starting from the first letter**.
-- - Some databases (like MySQL) allow `SUBSTR()` as well.

-- 💡 This technique is useful for initials, short names, or ID generation based on names!
