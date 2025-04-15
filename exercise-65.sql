-- ### **Exercise 65: Use CASE to Tag Seniority**
-- **Question:**  
-- Assume:
-- - **Less than 3 years** of experience = `'Junior'`
-- - **3 to 6 years** = `'Mid'`
-- - **More than 6 years** = `'Senior'`

-- Write a query that shows `first_name`, `start_year`, `experience_years`, and a new column `seniority_level` using `CASE`.

SELECT 
  first_name, 
  start_year, 
  2024 - start_year AS experience_years,
  CASE
    WHEN 2024 - start_year < 3 THEN 'Junior'
    WHEN 2024 - start_year BETWEEN 3 AND 6 THEN 'Mid'
    ELSE 'Senior'
  END AS seniority_level
FROM employees;


-- ### ✅ **Why This Works:**
-- - We use `2024 - start_year` to calculate experience.
-- - The `CASE` block categorizes each employee based on their years of experience.
-- - `BETWEEN 3 AND 6` includes both 3 and 6 years.

-- 💡 `CASE` is powerful for assigning custom labels or tags based on conditions — use it for level tags, statuses, or risk scores!
