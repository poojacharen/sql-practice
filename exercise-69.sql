-- ### **Exercise 69: Use LENGTH to Filter by Name Length**
-- **Question:**  
-- Write a query to list employees whose **first name has more than 4 characters**.

SELECT first_name
FROM employees
WHERE LENGTH(first_name) > 4;


-- ### ✅ **Why This Works:**
-- - `LENGTH(first_name)` returns the number of characters in the name.
-- - `> 4` filters only those names longer than four letters.

-- 💡 Some SQL dialects like SQL Server use `LEN()` instead of `LENGTH()`.
