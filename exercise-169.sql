-- ### Exercise 169: Average Salary by Department and Company Comparison
-- **Question:**  
-- Write a SQL query to show each department along with its **average salary** and indicate whether it is **above or below** the company's overall average salary.  
-- Display `department`, `department_avg`, `company_avg`, and `comparison` (`'above'` or `'below'`).

WITH company_avg_cte AS (
    SELECT AVG(salary) AS company_avg
    FROM employees
),
department_avg_cte AS (
    SELECT department, AVG(salary) AS department_avg
    FROM employees
    GROUP BY department
)
SELECT 
    d.department,
    ROUND(d.department_avg, 2) AS department_avg,
    ROUND(c.company_avg, 2) AS company_avg,
    CASE 
        WHEN d.department_avg > c.company_avg THEN 'above'
        ELSE 'below'
    END AS comparison
FROM 
    department_avg_cte d
CROSS JOIN 
    company_avg_cte c;



-- ### ✅ Explanation:
-- - **`company_avg_cte`** computes the overall company average salary using `AVG(salary)`.
-- - **`department_avg_cte`** calculates average salary per department with `GROUP BY department`.
-- - The main query **joins** both CTEs, comparing `department_avg` to `company_avg`.
-- - **`CASE WHEN`** is used to label whether the department is `'above'` or `'below'` the company average.
-- - **`ROUND()`** ensures the average values are cleanly formatted.
