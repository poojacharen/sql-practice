-- ### Exercise 172: Count of Employees Per Department with Min and Max Salary
-- **Question:**  
-- Write a SQL query to return each `department` with:
-- - the number of employees in that department as `employee_count`
-- - the minimum salary in that department as `min_salary`
-- - the maximum salary in that department as `max_salary`

SELECT
  department,
  COUNT(*) AS employee_count,
  MIN(salary) AS min_salary,
  MAX(salary) AS max_salary
FROM
  employees
GROUP BY
  department;


-- ### ✅ Explanation:
-- - **`COUNT(*)`** calculates the number of employees in each department.
-- - **`MIN(salary)`** finds the lowest salary within each department.
-- - **`MAX(salary)`** finds the highest salary within each department.
-- - **`GROUP BY department`** ensures the aggregation functions operate per department.

