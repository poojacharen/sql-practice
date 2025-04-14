-- ### **Exercise 59: Combine First and Last Names with a Space**
-- **Question:**  
-- Write a query to show employee **full names in the format `First Last`** (with a space between the names).

SELECT first_name || ' ' || last_name AS full_name
FROM employees;


-- ### ✅ **Why This Works:**
-- - The `||` operator joins strings in most SQL dialects like SQLite or PostgreSQL.
-- - The `' '` adds a space between `first_name` and `last_name`.
-- - You can also use `CONCAT(first_name, ' ', last_name)` in MySQL or other databases that support it.

-- 💡 This is commonly used to format names, addresses, or labels in SQL outputs!
