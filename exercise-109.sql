-- Employee count and total salary per department

SELECT d.name AS department, 
      COUNT(e.id) AS employee_count, 
      SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.name;



-- This gives a summary per department using aggregate functions and a join.

