-- ### **Exercise 88: Calculate Average Salary by Department**
-- **Question:**  
-- Write a query to show the **average salary** for each department.

SELECT 
  department, 
  AVG(salary) AS avg_salary
FROM employees
GROUP BY department;



-- ### ✅ **Why This Works:**
-- - `AVG(salary)` calculates the average salary for each department.
-- - `GROUP BY department` groups employees by their department before applying the aggregate function.

-- 💡 `AVG()` is useful when you want to summarize numeric data over groups like departments, locations, or job roles!
