-- ### **Exercise 80: Find Employees with Duplicate Departments**
-- **Question:**  
-- Write a query to find employees who belong to departments where **multiple employees exist**.

SELECT 
  first_name, 
  department
FROM employees
WHERE department IN (
  SELECT department
  FROM employees
  WHERE department IS NOT NULL
  GROUP BY department
  HAVING COUNT(*) > 1
);


-- ### ✅ **Why This Works:**
-- - The **subquery** finds departments that have more than one employee.
-- - `IN` checks if each employee’s department is one of those departments.
-- - `WHERE department IS NOT NULL` ensures we ignore missing department values.

-- 💡 Subqueries inside `IN` are great for filtering based on group conditions!
