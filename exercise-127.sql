-- ### **Exercise 117: Extract Year and Month from Hire Date**
-- **Question:**  
-- Assume there's a `hire_date` column (e.g., `2020-04-15`).  
-- Write a query to show the `first_name`, `hire_year`, and `hire_month`.

SELECT 
  first_name,
  YEAR(hire_date) AS hire_year,
  MONTH(hire_date) AS hire_month
FROM employees;


-- ### ✅ **Why This Works:**
-- - `YEAR(hire_date)` extracts the year from a date.
-- - `MONTH(hire_date)` extracts the month (as a number).

-- 💡 Useful when analyzing employee trends by hiring period or creating monthly/yearly reports.
