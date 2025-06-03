-- Write a SQL query to return departments that have **more than one employee** sharing the highest salary in that department. Show `department` and the `top_salary

SELECT 
  department, 
  salary AS top_salary
FROM (
    SELECT department, salary, 
           COUNT(*) OVER (PARTITION BY department, salary) AS salary_count,
           RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
    FROM employees
) AS ranked_salaries
WHERE salary_rank = 1 AND salary_count > 1;


-- ### 💡 Explanation:
-- - This query finds **the top salary in each department** and checks if **more than one employee** has that salary.
-- - `RANK() OVER (PARTITION BY department ORDER BY salary DESC)` assigns a rank starting from 1 for the highest salary in each department.
-- - `COUNT(*) OVER (PARTITION BY department, salary)` counts how many employees share the same salary within each department.
-- - We filter to keep only those where `salary_rank = 1` (i.e., top salary) **and** `salary_count > 1` (i.e., more than one person has it).

-- ✅ This gives us departments where **multiple people share the highest salary**, along with the salary value itself.
