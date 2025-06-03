-- ### Exercise 165: Count of Employees Above Department Average
-- **Question:**  
-- Write a SQL query to display **each department** along with the **number of employees** who earn **above the department average salary**

SELECT 
  department, 
  COUNT(*) AS above_avg_count
FROM (
    SELECT *, 
           AVG(salary) OVER (PARTITION BY department) AS avg_salary
    FROM employees
) AS emp
WHERE salary > avg_salary
GROUP BY department;




-- ### 💡 Explanation:
-- - We calculate the **average salary per department** using `AVG() OVER (PARTITION BY department)`.
-- - Then, we filter only those rows **where salary > avg_salary**.
-- - Finally, we **count** the number of such employees **per department** using `GROUP BY department`.
