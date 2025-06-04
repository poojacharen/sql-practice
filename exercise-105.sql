-- Department with highest average salary

SELECT d.name AS department, 
       AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.name
ORDER BY avg_salary DESC
LIMIT 1;



-- Joining with the departments table helps name the department, and sorting the average salary descending lets us fetch the top.
