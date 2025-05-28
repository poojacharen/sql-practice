-- ### **Exercise 138: Display All Employees Whose Name Ends with 'n'**

-- **Question:**  
-- Write a query to find all employees whose `first_name` ends with the letter **'n'** (case-insensitive).

SELECT first_name
FROM employees
WHERE LOWER(first_name) LIKE '%n';


-- ### ✅ **Why This Works:**
-- - `LIKE '%n'` finds any name ending with the letter `n`.
-- - `LOWER(...)` ensures the comparison is case-insensitive.
