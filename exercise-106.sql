-- Employees with no bonuses

SELECT e.name
FROM employees e
LEFT JOIN bonuses b ON e.id = b.employee_id
WHERE b.employee_id IS NULL;



-- A LEFT JOIN with a NULL check on the bonus side filters out employees without any bonus records.
