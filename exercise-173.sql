-- ### Exercise 173: Departments with Average Salary Above Company Average
-- **Question:**  
-- Write a SQL query to return all departments whose **average salary is greater than the company's overall average salary**.  
-- Show `department`, `department_avg`, `company_avg`.

SELECT
  department,
  AVG(salary) AS department_avg,
  (SELECT AVG(salary) FROM employees) AS company_avg
FROM
  employees
GROUP BY
  department
HAVING
  AVG(salary) > (SELECT AVG(salary) FROM employees);

-- ### ✅ Explanation:
-- - The query calculates the **average salary per department** using `AVG(salary)` and `GROUP BY department`.
-- - The **company-wide average salary** is computed using a subquery: `(SELECT AVG(salary) FROM employees)`.
-- - The `HAVING` clause is used to **filter departments** whose average salary is **greater than** the overall company average.
-- - This approach ensures only departments above the average company salary are displayed.

