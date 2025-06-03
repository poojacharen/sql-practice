-- ### Exercise 164: Top 2 Earners Per Department

-- **Question:**  
-- Write a SQL query to display the **top 2 earners from each department**. Include `first_name`, `last_name`, `department`, and `salary`.

SELECT 
  first_name, 
  last_name, 
  department, 
  salary
FROM (
    SELECT *, 
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
    FROM employees
) AS ranked
WHERE salary_rank <= 2;


-- ### 💡 Explanation:
-- - `RANK() OVER (PARTITION BY department ORDER BY salary DESC)` assigns rank per department.
-- - We select only those rows with rank `1` or `2`, which are the **top 2 salaries per department**.
