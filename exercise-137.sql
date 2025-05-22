-- ### **Exercise 127: Add Row Numbers Ordered by Department and Salary Desc**
-- **Question:**  
-- Write a query to assign a `row_number` to each employee **partitioned by department** and **ordered by salary descending**.

SELECT 
  department,
  first_name,
  salary,
  ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS row_number
FROM employees;


-- ### ✅ **Why This Works:**
-- - `PARTITION BY department` restarts the row numbering within each department.
-- - `ORDER BY salary DESC` ensures the highest-paid employee in each department gets row number 1.

-- 💡 This is useful for ranking, pagination, or departmental leaderboards.
