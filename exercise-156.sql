-- ### **Exercise 156: List All Departments with More Than 2 Employees**

-- **Question:**  
-- Write a SQL query to list `department_id` and the number of employees in each department, **only for departments that have more than 2 employees**.

SELECT 
  department_id, 
  COUNT(*) AS employee_count
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 2;



-- 🧠 Explanation:
-- SELECT department, COUNT(*) AS employee_count: We're selecting each department name and counting the number of employees in each.

-- GROUP BY department: This groups the rows by department so we can count how many employees each one has.

-- HAVING COUNT(*) > 2: This filters the results to show only those departments that have more than 2 employees (in this case, only "Sales").

