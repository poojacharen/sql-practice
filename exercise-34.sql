SELECT e.first_name, e.last_name, e.department
FROM employees e
LEFT JOIN departments d
ON e.department = d.department_name
WHERE d.department_name IS NULL;
