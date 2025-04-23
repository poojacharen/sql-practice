-- ### **Exercise 92: Find the Department with the Lowest Average Salary**
-- **Question:**  
-- Write a query to find the **department** that has the **lowest average salary**.

SELECT 
  department, 
  AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary ASC
LIMIT 1;


-- ### ✅ **Why This Works:**
-- - `AVG(salary)` computes the average salary for each department.
-- - `ORDER BY avg_salary ASC` sorts departments from lowest to highest average.
-- - `LIMIT 1` returns just the one department with the lowest average.

-- 💡 You can use `MIN()` on a subquery if you want an alternative approach with filtering instead of sorting!
