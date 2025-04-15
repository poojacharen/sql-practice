-- ### **Exercise 62: Filter Last Names Ending with 'n'**
-- **Question:**  
-- Write a query to find employees whose **last names end with the letter 'n'**.

SELECT 
  first_name, 
  last_name
FROM employees
WHERE last_name LIKE '%n';


-- ### ✅ **Why This Works:**
-- - `%n` checks for any string that **ends with 'n'**.
-- - The `%` is a wildcard that matches any number of characters before the letter 'n'.

-- 💡 `LIKE` is a flexible way to search for patterns — try `%e` (ends with e), `A%` (starts with A), or `%a%` (contains a).
