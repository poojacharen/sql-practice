SELECT
  first_name,
  salary,
CASE
   WHEN salary < 55000 THEN 'Low'
   WHEN salary BETWEEN 55000 AND 64999 THEN 'Medium'
   ELSE 'High'
END AS salary_level
FROM employees;
