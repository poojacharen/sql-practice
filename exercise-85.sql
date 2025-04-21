-- ### **Exercise 85: Identify Employees with Duplicate Salaries**
-- **Question:**  
-- Write a query to find employees who **share the same salary with at least one other employee**.

SELECT 
  first_name, 
  salary
FROM employees
WHERE salary IN (
  SELECT salary
  FROM employees
  GROUP BY salary
  HAVING COUNT(*) > 1
);



-- ### ✅ **Why This Works:**
-- - The subquery finds salaries that appear more than once.
-- - The main query lists employees whose salary is in that repeated set.

-- 💡 `GROUP BY` + `HAVING COUNT(*) > 1` is a common pattern to detect duplicates!
