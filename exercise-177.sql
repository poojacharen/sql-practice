--  Top 2 Salaries per Department
-- Write a SQL query to return the **top 2 highest earning employees in each department**.  
-- Return: `first_name`, `last_name`, `department`, and `salary`

WITH ranked_employees AS (
  SELECT *,
         RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
  FROM employees
)
SELECT first_name, last_name, department, salary
FROM ranked_employees
WHERE rank <= 2;

-- ### ✅ Explanation:
-- We use a **Common Table Expression (CTE)** named `ranked_employees` to assign a `RANK()` to each employee **within their department**, sorted by descending salary. 
--   Then, we filter this result to only return rows where the rank is 1 or 2—effectively capturing the **top 2 salaries per department**.
