-- Show the highest paid employee in each department.

SELECT 
  e.department_id, 
  e.name, 
  e.salary
FROM employees e
JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) dept_max ON e.department_id = dept_max.department_id AND e.salary = dept_max.max_salary;



-- We use an inner join with an aggregated subquery to fetch the employee whose salary matches the maximum salary for each department.
