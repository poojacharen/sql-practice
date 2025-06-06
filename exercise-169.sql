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



-- Explanation:
-- company_avg_cte: Computes the overall company average salary.

-- department_avg_cte: Computes the average salary per department.

-- CROSS JOIN: Pairs each department with the single company average.

-- CASE: Compares each department’s average to the company average.
