-- ### Exercise 170: Median Salary by Department
-- **Question:**  
-- Write a SQL query to return the **median salary** for each department. 
-- Assume you're using a SQL dialect that supports `PERCENTILE_CONT()` (e.g., PostgreSQL, SQL Server).

SELECT 
    department,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY salary) AS median_salary
FROM 
    employees
GROUP BY 
    department;


-- ### ✅ Explanation:
-- - **`PERCENTILE_CONT(0.5)`** is used to calculate the median (50th percentile) of salaries.
-- - **`WITHIN GROUP (ORDER BY salary)`** specifies that the median is calculated by sorting the salaries in ascending order.
-- - **`GROUP BY department`** ensures that a median salary is calculated independently for each department.

-- ✅ This gives you the median salary per department, even when the department has an odd or even number of employees.
