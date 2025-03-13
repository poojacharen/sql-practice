SELECT COUNT(employee_id) AS employee_count,
       department
FROM employees
GROUP BY department;
