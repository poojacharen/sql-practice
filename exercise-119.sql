-- ### **Exercise 109: List Employees Whose Salary Is Within 10% of Department Average**
-- **Question:**  
-- Write a query to show employees whose salary is **within ±10%** of their department's average salary.

SELECT e.first_name, 
  e.department, 
  e.salary
FROM employees e
JOIN (
  SELECT department, AVG(salary) AS avg_salary
  FROM employees
  GROUP BY department
) d ON e.department = d.department
WHERE e.salary BETWEEN d.avg_salary * 0.9 AND d.avg_salary * 1.1;




-- ### ✅ **Why This Works:**
-- - The subquery computes the average salary per department.
-- - We join the average back with the employees table using department.
-- - `BETWEEN avg * 0.9 AND avg * 1.1` ensures we catch salaries within ±10% of the average.

-- 💡 This is helpful for identifying employees paid close to the benchmark salary range in their team.
