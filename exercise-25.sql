SELECT e.first_name, e.last_name, e.department
FROM employees e
WHERE EXISTS (
    SELECT 1 FROM employees sub
    WHERE sub.department = e.department
    AND sub.employee_id <> e.employee_id
);
