-- ### **Exercise 75: Create a New Column Showing Salary in Thousands**
-- **Question:**  
-- Write a query to show `first_name`, `salary`, and a new column called `salary_in_thousands` (salary divided by 1000).

SELECT 
  first_name, 
  salary, 
  salary / 1000 AS salary_in_thousands
FROM employees;


-- ### ✅ **Why This Works:**
-- - `salary / 1000` divides the salary to express it in "thousands".
-- - `AS salary_in_thousands` provides a clear and friendly column name.

-- 💡 This technique is useful when reporting financial or large numeric data in simplified formats!
