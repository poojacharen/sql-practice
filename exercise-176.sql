-- List Employees Earning Below Department Average
-- Write a SQL query to return **employees who earn less than the average salary** in their respective department.  
-- Return: `first_name`, `last_name`, `department`, `salary`, and `department_avg`

WITH department_avg_cte AS (
  SELECT 
    department,
    AVG(salary) AS department_avg
  FROM employees
  GROUP BY department
)
SELECT 
  e.first_name,
  e.last_name,
  e.department,
  e.salary,
  ROUND(d.department_avg) AS department_avg
FROM employees e
JOIN department_avg_cte d
  ON e.department = d.department
WHERE e.salary < d.department_avg;


-- 🧠 Explanation:
-- Step 1: The WITH clause (Common Table Expression) computes average salary per department and stores it as department_avg.

-- Step 2: We then JOIN that result with the employees table to compare each employee's salary with their department average.

-- Step 3: The WHERE clause filters out employees whose salary is less than their department average.

-- Step 4: ROUND() is used to match the format of the expected output — optional for logic, helpful for presentation.
