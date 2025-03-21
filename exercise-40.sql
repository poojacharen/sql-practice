SELECT d.department_name, 
       COALESCE(e.first_name, 'No Employee') AS employee_name
FROM departments d
LEFT JOIN employees e
ON d.department_name = e.department;
