-- ### **Exercise 87: Find Employees Whose Last Name Starts with 'B' or 'W'**
-- **Question:**  
-- Write a query to find employees whose `last_name` **starts with 'B' or 'W'**.

SELECT 
  first_name, 
  last_name
FROM employees
WHERE last_name LIKE 'B%' OR last_name LIKE 'W%';


-- ### ✅ **Why This Works:**
-- - `LIKE 'B%'` matches last names starting with 'B'.
-- - `LIKE 'W%'` matches last names starting with 'W'.
-- - The `OR` operator allows either condition to match.

-- 💡 `LIKE` with `%` is very powerful for pattern matching and flexible string searches!
