SELECT department,
       CASE
         WHEN salary < 55000 THEN 'Low'
         WHEN salary BETWEEN 55000 AND 64999 THEN 'Medium'
         ELSE 'High'
       END AS salary_level,
       COUNT(*) AS count
FROM employees
GROUP BY department, salary_level
ORDER BY department, salary_level;
