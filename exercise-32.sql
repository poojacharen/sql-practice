SELECT department,
       COUNT(*) AS employee_count,
       SUM(CASE WHEN department = 'IT' THEN 1 ELSE 0 END) AS it_department_count
FROM employees
GROUP BY department;
