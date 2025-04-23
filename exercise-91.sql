-- ### **Exercise 91: List Employees Whose First Name Has Exactly 4 Letters**
-- **Question:**  
-- Write a query to list employees whose `first_name` has **exactly 4 characters**.

SELECT first_name
FROM employees
WHERE LENGTH(first_name) = 4;


-- ### ✅ **Why This Works:**
-- - `LENGTH(first_name)` returns the number of characters in the name.
-- - Filtering with `= 4` ensures you only get names with exactly 4 letters.

-- 💡 Some databases like SQL Server use `LEN()` instead of `LENGTH()`.
