SELECT first_name, last_name, salary,
       CASE 
           WHEN salary > 60000 THEN 'High'
           WHEN salary BETWEEN 50000 AND 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;
