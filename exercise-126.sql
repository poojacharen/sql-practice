-- ### **Exercise 116: Capitalize First Letter of First Name**
-- **Question:**  
-- Write a query to display each employee’s `first_name` with the **first letter capitalized** and the rest in lowercase.

SELECT 
  CONCAT(UPPER(LEFT(first_name, 1)), LOWER(SUBSTRING(first_name, 2))) AS capitalized_name
FROM employees;



-- ### ✅ **Why This Works:**
-- - `LEFT(first_name, 1)` grabs the first character.
-- - `UPPER(...)` capitalizes it.
-- - `SUBSTRING(first_name, 2)` gets the rest of the name.
-- - `LOWER(...)` converts the remaining characters to lowercase.
-- - `CONCAT(...)` joins them into the final result.

-- 💡 This is a common technique when cleaning or formatting names for display.
