-- ### **Exercise 137: Show Employees with 'a' as the Second Character**
-- **Question:**  
-- Write a query to list all `first_name`s from the `employees` table where the **second character is 'a'** (case-insensitive).

SELECT first_name
FROM employees
WHERE LOWER(SUBSTRING(first_name, 2, 1)) = 'a';


-- ### ✅ **Why This Works:**
-- - `SUBSTRING(first_name, 2, 1)` extracts the second character.
-- - `LOWER(...) = 'a'` checks if the second character is 'a' in a case-insensitive way.

-- 💡 You can use this pattern when filtering based on character positions inside strings.
