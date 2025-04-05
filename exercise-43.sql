SELECT 
  first_name,
  last_name,
  department
FROM employees
WHERE department NOT IN ('HR' OR 'IT');
