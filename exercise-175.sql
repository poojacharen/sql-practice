-- ### Exercise 175: Highest Paid Employee(s) Overall
-- **Question:**  
-- Write a SQL query to find the **employee(s) who have the highest salary in the company**.  
-- Include: `first_name`, `last_name`, `department`, `salary`.

SELECT
  first_name,
  last_name,
  department,
  salary
FROM
  employees
WHERE
  salary = (SELECT MAX(salary) FROM employees);


-- ### ✅ Explanation:
-- - The query uses a **subquery** to find the **maximum salary** in the `employees` table: `(SELECT MAX(salary) FROM employees)`.
-- - The outer query selects all employees whose salary matches this maximum.
-- - This ensures **any employee** tied for the highest salary is included.


