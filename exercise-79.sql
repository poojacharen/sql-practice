-- ### **Exercise 79: Calculate Years Remaining to Reach 10 Years of Experience**
-- **Question:**  
-- Write a query to show how many more years each employee needs to reach **10 years of experience** (`10 - (2024 - start_year)`) as `years_to_10`.

SELECT first_name, 
  start_year, 
  (10 - (2024 - start_year)) AS years_to_10
FROM employees;


-- ### ✅ **Why This Works:**
-- - `2024 - start_year` calculates the **years of experience**.
-- - `10 - (2024 - start_year)` calculates how many **years left** to complete 10 years.

-- 💡 This type of calculation is very useful for service awards, promotions, and retirement tracking!
