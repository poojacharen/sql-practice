SELECT first_name AS name
 FROM employees
UNION
SELECT department_name AS name
 FROM departments;
