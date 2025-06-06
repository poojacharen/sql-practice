-- ### Exercise 167: Total Salary and Employee Count per Department
-- **Question:**  
-- Write a SQL query to display for each department:
-- - the total number of employees as `employee_count`
-- - the total salary expense as `total_salary`


SELECT 
    department,
    COUNT(*) AS employee_count,
    SUM(salary) AS total_salary
FROM 
    employees
GROUP BY 
    department;


-- ### ✅ Explanation:
-- - **`COUNT(*)`** counts the number of employees in each department and is labeled `employee_count`.
-- - **`SUM(salary)`** calculates the total salary paid to employees in each department, labeled as `total_salary`.
-- - **`GROUP BY department`** ensures that the count and sum are calculated within each department group.

-- ✅ This query correctly displays the total number of employees and total salary expense for each department.
