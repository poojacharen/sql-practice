SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;


-- Why Do We Use GROUP BY with SUM?
-- GROUP BY is used to aggregate data by department.

-- SUM(salary) calculates the total salary per department.

-- The GROUP BY department ensures that salaries are summed per unique department.

-- Other Aggregate Functions with GROUP BY:
-- Function	Purpose
-- COUNT(*)	Counts the number of rows per group
-- AVG(salary)	Finds the average salary per department
-- MAX(salary)	Finds the highest salary per department
-- MIN(salary)	Finds the lowest salary per department
-- 💡 Tip: Always use GROUP BY when applying aggregate functions to avoid SQL errors!
