-- ### **Exercise 121: Show Employees Hired in the Last 2 Years**
-- **Question:**  
-- Assume today's date is `'2025-01-01'`.  
-- Write a query to show `first_name` and `hire_date` of employees hired **on or after** `'2023-01-01'`.

SELECT 
  first_name, 
  hire_date
FROM employees
WHERE hire_date >= '2023-01-01';



-- ### ✅ **Why This Works:**
-- - `hire_date >= '2023-01-01'` filters for employees hired in the last 2 years from `'2025-01-01'`.
-- - SQL uses ISO 8601 date format (`YYYY-MM-DD`), so comparisons work lexicographically.

-- 💡 This is common in time-based reporting like recent hires, subscription renewals, or activity logs.
