-- ### **Exercise 108: Show Departments with Average Salary > 55000 and At Least 2 Employees**
-- **Question:**  
-- Write a query to show departments where the **average salary is greater than 55000** and there are **at least 2 employees**.

SELECT department, 
  ROUND(AVG(salary), 2) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000 AND COUNT(*) >= 2;


-- ### ✅ **Why This Works:**
-- - `GROUP BY department` aggregates data per department.
-- - `AVG(salary)` calculates average salary.
-- - `HAVING` filters for average salary over 55000 and a minimum of 2 employees.

-- 💡 Use `HAVING` for conditions on aggregate functions like `AVG`, `COUNT`, or `SUM`.
