SELECT
     first_name,
     last_name,
     department
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
);
