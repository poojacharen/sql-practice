SELECT first_name, last_name, salary, department
FROM employees
WHERE department = 'IT' AND salary > 60000;


-- Why Do We Use AND?
-- AND is used to combine multiple conditions where both must be true.

-- department = 'IT' ensures the employee is in IT.

-- salary > 60000 ensures only employees with salaries above 60,000 are included.

-- Other Use Cases of AND and OR:
-- Query Example	Meaning
-- WHERE department = 'HR' OR department = 'IT'	Employees in either HR or IT
-- WHERE salary > 50000 AND department = 'Sales'	Sales employees earning more than 50K
-- WHERE salary < 70000 OR department = 'HR'	Employees earning less than 70K or in HR

-- 💡 Tip: Use parentheses () for complex conditions:
-- WHERE (department = 'IT' AND salary > 60000) OR department = 'HR'
