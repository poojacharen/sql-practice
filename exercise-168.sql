-- ### Exercise 168: Highest and Lowest Salaries with Employee Names
-- **Question:**  
-- Write a SQL query to show the **employee(s)** who earn the **highest** and **lowest** salary in the entire company. 
-- Include `first_name`, `last_name`, `department`, and `salary`.

SELECT 
    first_name,
    last_name,
    department,
    salary
FROM 
    employees
WHERE 
    salary = (SELECT MAX(salary) FROM employees)
    OR salary = (SELECT MIN(salary) FROM employees);



-- ### ✅ Explanation:
-- - **`MAX(salary)`** and **`MIN(salary)`** are subqueries to get the highest and lowest salaries in the company.
-- - The main query selects all employees whose salary matches either of those values.
-- - Ensures you're capturing both top and bottom earners, including cases with salary ties.
