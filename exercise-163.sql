-- ### Exercise 163: Employees Earning More Than Department Average
-- **Question:**  
-- Write a SQL query to list all employees who earn **more than the average salary** in their department.


SELECT 
  employee_id, 
  first_name, 
  last_name, 
  department, 
  salary
FROM (
    SELECT *, 
           AVG(salary) OVER (PARTITION BY department) AS avg_dept_salary
    FROM employees
) AS emp_with_avg
WHERE salary > avg_dept_salary;



-- 💡 Explanation:
-- You’re using a window function to calculate the average salary per department without collapsing rows (no GROUP BY needed).

-- AVG(salary) OVER (PARTITION BY department) computes the department-wise average for each row.

-- Then, you filter only those rows where salary > avg_dept_salary.

