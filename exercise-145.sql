-- ### **Exercise 135: Show Employees Whose Name Starts and Ends with the Same Letter**
-- **Question:**  
-- Write a query to list `first_name`s that start and end with the **same letter**, case-insensitive.

SELECT first_name
FROM employees
WHERE LOWER(LEFT(first_name, 1)) = LOWER(RIGHT(first_name, 1));


-- ### ✅ **Why This Works:**
-- - `LEFT(first_name, 1)` gets the first character.
-- - `RIGHT(first_name, 1)` gets the last character.
-- - `LOWER(...)` makes the comparison case-insensitive.

-- 💡 This is a useful pattern when checking symmetric conditions or constructing filters based on patterns in strings.
