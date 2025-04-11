-- ### **Exercise 55: Use Subquery to Filter by Average**
-- **Question:**  
-- Write a query to list employees who earn **more than the average salary** of all employees.

SELECT first_name, last_name, salary
FROM employees
WHERE salary > (
  SELECT AVG(salary) 
  FROM employees
  );

-- ### ✅ **Why This Works:**
-- - The subquery `(SELECT AVG(salary) FROM employees)` computes the overall average salary.
-- - The outer query then filters out employees whose salary is **greater than** that average.

-- 💡 This pattern is useful for performance reviews, bonus eligibility, or salary benchmarking!
