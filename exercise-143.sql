-- ### **Exercise 133: Count of Employees per Department Where Average Salary > 55000**
-- **Question:**  
-- Show the department and employee count **only** for departments whose **average salary is greater than 55000**.

SELECT 
  department, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;



-- ### ✅ **Why This Works:**
-- - `GROUP BY department` groups records so we can compute aggregates per department.
-- - `AVG(salary)` calculates the average salary in each group.
-- - `HAVING AVG(salary) > 55000` filters only those groups where the average exceeds 55000.
-- - `COUNT(*)` returns the number of employees in those qualifying departments.

-- 💡 Use `HAVING` when filtering on aggregate functions like `AVG`, `COUNT`, or `SUM`.
