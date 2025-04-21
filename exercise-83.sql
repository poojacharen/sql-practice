-- ### **Exercise 83: Calculate Experience in Months**
-- **Question:**  
-- Write a query to calculate the **experience in months** for each employee as `(2024 - start_year) * 12` and display it as `experience_months`.

SELECT 
  first_name, 
  start_year, 
  (2024 - start_year) * 12 AS experience_months
FROM employees;


-- ### ✅ **Why This Works:**
-- - `2024 - start_year` calculates the years of experience.
-- - Multiplying by `12` converts years into months.

-- 💡 This type of transformation is common when adjusting date-based metrics into finer units (like weeks or months) for business reports!
