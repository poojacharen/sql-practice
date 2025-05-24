-- ### **Exercise 131: Find the 2nd Highest Salary per Department**
-- **Question:**  
-- Write a query to return the employee(s) with the **2nd highest salary** in each department.

SELECT 
  department, 
  first_name, 
  salary
FROM (
  SELECT 
    department,
    first_name,
    salary,
    ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
  FROM employees
) ranked
WHERE rank = 2;



-- ### ✅ **Why This Works:**
-- - `ROW_NUMBER()` assigns a unique rank to each employee per department based on salary descending.
-- - We then filter for `rank = 2` to get only the second highest in each group.

-- 💡 Use `DENSE_RANK()` if you want to handle ties and still include multiple second-place values.
