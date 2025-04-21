-- ### **Exercise 82: Show Last 2 Letters of Last Name**
-- **Question:**  
-- Write a query to display each employee’s `last_name` and the **last 2 letters** of their last name as `last_two_letters`.

SELECT 
  last_name, 
  SUBSTRING(last_name, LENGTH(last_name) - 1, 2) AS last_two_letters
FROM employees;


-- ### ✅ **Why This Works:**
-- - `LENGTH(last_name)` gives the total number of characters.
-- - `SUBSTRING(last_name, LENGTH(last_name) - 1, 2)` extracts the last two characters.

-- 💡 Some databases like SQL Server use `RIGHT(last_name, 2)` instead for an even simpler version!
