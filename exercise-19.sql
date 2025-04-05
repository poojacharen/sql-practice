SELECT first_name, last_name, salary,
       CASE 
           WHEN salary > 60000 THEN 'High'
           WHEN salary BETWEEN 50000 AND 60000 THEN 'Medium'
           ELSE 'Low'
       END AS salary_category
FROM employees;



-- Why Do We Use CASE?
-- The CASE statement is used for conditional logic in SQL.

-- It evaluates each WHEN condition in order and returns the first matching result.

-- If none of the conditions match, the ELSE clause is used.

-- Other Use Cases of CASE:
-- Example	Purpose
-- CASE WHEN salary > 80000 THEN 'Very High' WHEN salary > 60000 THEN 'High' ELSE 'Other' END	More granular salary categorization
-- CASE WHEN department = 'IT' THEN 'Tech' ELSE 'Non-Tech' END	Grouping departments
-- CASE WHEN hire_date < '2020-01-01' THEN 'Old Employee' ELSE 'New Employee' END	Categorizing employees by hire date
-- 💡 Tip: Always include an ELSE condition to handle unexpected cases!
