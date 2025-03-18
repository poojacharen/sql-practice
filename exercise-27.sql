SELECT first_name, last_name, department,
       CASE 
           WHEN department = 'HR' THEN salary * 1.10
           WHEN department = 'IT' THEN salary * 1.05
           WHEN department = 'Sales' THEN salary * 1.08
           ELSE salary
       END AS updated_salary
FROM employees;
