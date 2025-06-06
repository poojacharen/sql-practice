-- ### Exercise 166: Salary Gap per Department
-- **Question:**  
-- Write a SQL query to display the **salary gap per department** by calculating:
-- - The maximum salary (`max_salary`)
-- - The minimum salary (`min_salary`)
-- - The difference between them as `salary_gap`

SELECT 
    department,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary,
    MAX(salary) - MIN(salary) AS salary_gap
FROM 
    employees
GROUP BY 
    department;


-- ### ✅ Explanation:
-- - **`MAX(salary)`** returns the highest salary in each department.
-- - **`MIN(salary)`** returns the lowest salary in each department.
-- - The difference **`MAX(salary) - MIN(salary)`** is calculated as `salary_gap`.
-- - The query is grouped by `department` to ensure these calculations are done within each department's context.

-- ✅ This gives you the correct salary gap per department.

-- Let me know when you're ready for the next exercise!
