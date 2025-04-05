SELECT e.first_name, e.last_name, e.department
FROM employees e
JOIN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) > 1
) d ON e.department = d.department;
