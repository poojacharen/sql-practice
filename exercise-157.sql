-- List All Departments with More Than 2 Employees**

-- -- **Question:**  
-- -- Write a SQL query to list `department_id` and the number of employees in each department, **only for departments that have more than 2 employees**.

SELECT first_name
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1;


-- ✅ Explanation:
-- GROUP BY first_name: Groups the rows by each unique first name.

-- HAVING COUNT(*) > 1: Filters only those names that occur more than once.
