-- ### **Exercise 160: Departments with Average Salary Above 60000**

-- **Question:**  
-- Write a SQL query to find departments where the average salary is greater than 60000.

SELECT department
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;


-- ✅ Explanation:
-- GROUP BY department: Groups all employee records by their department.

-- AVG(salary): Calculates the average salary within each department group.

-- AS avg_salary: Gives the resulting column a readable name.
