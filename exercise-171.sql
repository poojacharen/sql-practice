-- ### Exercise 171: Top Earners by Department (Limit 1)
-- **Question:**  
-- Write a SQL query to get the **top earning employee (or employees)** in each department. 
-- Use `RANK()` or `ROW_NUMBER()` to break ties.

WITH RankedSalaries AS (
  SELECT
    employee_id,
    first_name,
    last_name,
    department,
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
  FROM
    employees
)
SELECT
  employee_id,
  first_name,
  last_name,
  department,
  salary
FROM
  RankedSalaries
WHERE
  rank = 1;


-- ### ✅ Explanation:
-- - The query uses a **Common Table Expression (CTE)** named `RankedSalaries`.
-- - Inside the CTE, `RANK() OVER (PARTITION BY department ORDER BY salary DESC)` assigns a rank to each employee within their department based on salary.
-- - Employees with the **highest salary** in each department receive **rank = 1**.
-- - The outer query then filters for `rank = 1`, returning only the **top earner(s)** in each department.
-- - This handles **ties** as well, meaning if two employees have the same top salary, both will be included.

