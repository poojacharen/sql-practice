-- ### **Exercise 107: Find Employees with Last Name Ending in 'son'**
-- **Question:**  
-- Write a query to list employees whose `last_name` **ends with `'son'`**.

SELECT 
  first_name, 
  last_name
FROM employees
WHERE last_name LIKE '%son';



-- ### ✅ **Why This Works:**
-- - `LIKE '%son'` filters strings that **end** with `'son'`.
-- - `%` is a wildcard that matches **any number of characters** before `'son'`.

-- 💡 This is useful for finding names, emails, or IDs with a specific suffix.
