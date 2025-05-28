-- ### **Exercise 136: Show Employees Whose Names Have More Than 4 Characters and End With 'e'**
-- **Question:**  
-- Write a query to display `first_name`s from the `employees` table that:
-- - Have more than 4 characters, and
-- - End with the letter `e` (case-insensitive)

SELECT first_name
FROM employees
WHERE LOWER(LEFT(first_name, 1)) = LOWER(RIGHT(first_name, 1));


-- ### ✅ **Why This Works:**
-- - `LEFT(first_name, 1)` gets the first character.
-- - `RIGHT(first_name, 1)` gets the last character.
-- - `LOWER(...)` makes the comparison case-insensitive.

-- 💡 This is a useful pattern when checking symmetric conditions or constructing filters based on patterns in strings.
