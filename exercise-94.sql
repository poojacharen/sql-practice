-- ### **Exercise 94: Count Employees Who Joined After 2017**
-- **Question:**  
-- Write a query to count how many employees **started after 2017**.

SELECT COUNT(*) AS employee_count
FROM employees
WHERE start_year > 2017;



-- ### ✅ **Why This Works:**
-- - `WHERE start_year > 2017` filters employees who started in 2018 or later.
-- - `COUNT(*)` tallies how many rows match the condition.

-- 💡 This pattern is handy for quick reporting on time-based conditions like hires, logins, or purchases.
