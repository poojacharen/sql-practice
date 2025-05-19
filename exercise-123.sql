-- ### **Exercise 113: Show Department, Max, Min, and Average Salary**
-- **Question:**  
-- Write a query to display each department along with the **maximum**, **minimum**, and **average** salary.

SELECT 
  department,
  MAX(salary) AS max_salary,
  MIN(salary) AS min_salary,
  ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department;


-- ### ✅ **Why This Works:**
-- - `MAX(salary)` returns the highest salary in each department.
-- - `MIN(salary)` returns the lowest.
-- - `AVG(salary)` is the average — wrapped in `ROUND(..., 2)` for 2 decimal precision.
-- - `GROUP BY department` ensures this is calculated per department.

-- 💡 Using `ROUND` ensures output formatting matches typical reporting expectations.
