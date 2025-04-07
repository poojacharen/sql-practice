SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'A%' OR first_name LIKE 'D%';



-- ### ✅ **Why This Works:**
-- - `LIKE 'A%'` matches any first name starting with A.
-- - `LIKE 'D%'` matches any first name starting with D.
-- - The `%` symbol is a wildcard that matches any number of characters after the initial letter.

-- 💡 **Use `LIKE` with wildcards (`%`, `_`) to match patterns in strings!**
