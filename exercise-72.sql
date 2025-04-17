-- ### **Exercise 72: Find Salaries Greater Than Department Average**
-- **Question:**  
-- Write a query to find employees whose salary is **greater than the average salary** of their department.

SELECT first_name, department, salary
FROM employees e1
WHERE salary > (
  SELECT AVG(salary)
  FROM employees e2
  WHERE e1.department = e2.department
);


-- ### ✅ **Why This Works:**
-- - The **correlated subquery** compares each employee's salary to their own department's average.
-- - `e1.department = e2.department` links each employee to their department group.

-- 💡 Correlated subqueries are powerful when you need to filter based on "grouped" statistics dynamically!
