-- ### **Exercise 58: Calculate Years of Experience**
-- **Question:**  
-- Assume a column `start_year` exists in the employee table. Write a query to calculate the **years of experience** based on the current year `2024`, and display it as a new column called `experience_years`.

SELECT 
  first_name, 
  start_year, 
  2024 - start_year AS experience_years
FROM employees;


-- ### ✅ **Why This Works:**
-- - This query performs a **simple arithmetic operation**: `2024 - start_year`.
-- - It creates a new column using `AS` to label the result as `experience_years`.

-- 💡 This is great for generating live calculations like tenure, age, or service periods directly in SQL!
