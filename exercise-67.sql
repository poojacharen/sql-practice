-- ### **Exercise 67: Round Adjusted Salaries**
-- **Question:**  
-- Show each employee’s `first_name`, `salary`, and `salary * 1.075` rounded to the nearest whole number as `rounded_salary`.

SELECT 
  first_name, 
  salary, 
  ROUND(salary * 1.075) AS rounded_salary
FROM employees;


-- ### ✅ **Why This Works:**
-- - `salary * 1.075` applies a 7.5% increase.
-- - `ROUND(...)` rounds the adjusted amount to the nearest whole number.

-- 💡 You can use `ROUND(expression, 2)` to round to two decimal places if needed!
