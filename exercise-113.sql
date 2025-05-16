-- ### **Exercise 103: List Top 2 Highest Paid Employees Per Department**
-- **Question:**  
-- Write a query to show the **top 2 highest paid employees** in each department.

-- using ROW_NUMBER or LIMIT):**
-- For databases that support `ROW_NUMBER()`:

SELECT department, 
  first_name, 
  salary
FROM (
  SELECT department, first_name, salary,
         ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
  FROM employees
) ranked
WHERE rank <= 2;

-- For MySQL (using LIMIT with a join):

SELECT e1.department, e1.first_name, e1.salary
FROM employees e1
WHERE 2 > (
  SELECT COUNT(*)
  FROM employees e2
  WHERE e2.department = e1.department
    AND e2.salary > e1.salary
);


-- ### ✅ **Why This Works:**
-- - The `ROW_NUMBER()` version assigns a rank per department based on salary.
-- - Filtering for `rank <= 2` keeps only the top 2 per department.

-- 💡 This is a powerful pattern used for rankings, leaderboards, and top-N group queries!
