-- List employee names and their salaries if their salary is above the average salary of all employees.

SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


-- We use a subquery to calculate the average salary. The outer query filters all employees whose salary exceeds that average.

