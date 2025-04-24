-- ### **Exercise 97: Find Employees with 'e' as the Second Letter of First Name**
-- **Question:**  
-- Write a query to find employees whose **second letter** in `first_name` is `'e'`.

SELECT first_name
FROM employees
WHERE first_name LIKE '_e%';


-- ### ✅ **Why This Works:**
-- - `LIKE '_e%'` checks that the first character can be anything, the second must be `'e'`, and any characters may follow.
-- - The underscore (`_`) matches exactly one character.
-- - `%` matches any sequence of characters.

-- 💡 This pattern is powerful when you want to match a character at a specific position in a string!
