-- ### Exercise 174: Find Employees with Above-Average Salary in Their Department

-- **Question:**  
-- Write a SQL query to return **employees whose salary is above the average salary of their own department**.  
-- Show: `first_name`, `last_name`, `department`, `salary`, and `department_avg`.

WITH DepartmentAvg AS (
  SELECT
    department,
    AVG(salary) AS department_avg
  FROM
    employees
  GROUP BY
    department
)
SELECT
  e.first_name,
  e.last_name,
  e.department,
  e.salary,
  d.department_avg
FROM
  employees e
  JOIN DepartmentAvg d ON e.department = d.department
WHERE
  e.salary > d.department_avg;

-- - The query uses a **Common Table Expression (CTE)** `DepartmentAvg` to calculate the average salary per department.
-- - It joins the `employees` table with `DepartmentAvg` on the `department` column.
-- - The `WHERE` clause filters for employees whose salary is **greater than their department’s average**.
-- - This ensures only top performers **within their department** are shown.
