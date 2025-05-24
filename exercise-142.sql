-- ### **Exercise 132: Show Employees with Salary Between 50000 and 60000 in IT or HR**
-- **Question:**  
-- List all employees from departments **IT** or **HR** whose salary is **between 50000 and 60000** (inclusive).

SELECT 
  first_name, 
  department, 
  salary
FROM employees
WHERE department IN ('HR', 'IT')
  AND salary BETWEEN 50000 AND 60000;



-- ### ✅ **Why This Works:**
-- - `department IN ('HR', 'IT')` restricts results to just those departments.
-- - `BETWEEN 50000 AND 60000` ensures salary falls within the inclusive range.

-- 💡 This kind of filtered multi-condition query is common in dashboards and data validation checks.
