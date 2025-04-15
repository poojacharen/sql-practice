-- ### **Exercise 61: Sort by Experience (Descending)**
-- **Question:**  
-- List all employees sorted by **years of experience** (i.e., `2024 - start_year`) in **descending order**.

SELECT 
  first_name, 
  start_year, 
  2024 - start_year AS experience_years
FROM employees
ORDER BY experience_years DESC;


-- ### ✅ **Why This Works:**
-- - `2024 - start_year` gives the years of experience.
-- - `ORDER BY ... DESC` arranges the results from highest experience to lowest.

-- 💡 This pattern is handy when ranking users by tenure, age, service time, etc.
