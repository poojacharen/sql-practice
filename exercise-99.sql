-- ### **Exercise 99: Show Employees from Departments Starting with 'S'**
-- **Question:**  
-- Write a query to find employees whose department **starts with 'S'**.

SELECT 
  first_name, 
  department
FROM employees
WHERE department LIKE 'S%';



-- ### ✅ **Why This Works:**
-- - `LIKE 'S%'` filters rows where the department name begins with `'S'`.
-- - `%` is a wildcard that matches any number of characters.

-- 💡 Use this approach whenever you need to filter based on the beginning of a string!!!
