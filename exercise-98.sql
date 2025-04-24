-- ### **Exercise 98: Display Employees in Uppercase**
-- **Question:**  
-- Write a query to display each employee’s `first_name` and `last_name` in **UPPERCASE**.

SELECT 
  UPPER(first_name) AS first_name, 
  UPPER(last_name) AS last_name
FROM employees;



-- ### ✅ **Why This Works:**
-- - `UPPER()` is a string function that converts text to uppercase.
-- - Renaming the columns using `AS` helps keep your result clear and aligned with expectations.

-- 💡 This is useful for standardizing text in reports or user interfaces!
