-- ### **Exercise 64: Use Alias for Better Readability**
-- **Question:**  
-- Write a query to show `first_name`, `salary`, and `salary * 1.15` as `adjusted_salary` using an alias.

SELECT 
  first_name, 
  salary, 
  salary * 1.15 AS adjusted_salary
FROM employees;



-- ### ✅ **Why This Works:**
-- - `salary * 1.15` gives a 15% increase over the base salary.
-- - `AS adjusted_salary` is an **alias** that labels the calculated column.

-- 💡 Aliases are useful for making your result columns more descriptive and readable in reports or apps!
