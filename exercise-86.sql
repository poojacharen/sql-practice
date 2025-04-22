-- ### **Exercise 86: Find Employees with Salaries Not Between 50000 and 60000**
-- **Question:**  
-- Write a query to find employees whose salary is **NOT between 50000 and 60000**.

SELECT 
  first_name, 
  salary
FROM employees
WHERE salary NOT BETWEEN 50000 AND 60000;


-- ### ✅ **Why This Works:**
-- - `NOT BETWEEN 50000 AND 60000` filters out employees whose salary is between 50000 and 60000 (inclusive).
-- - Only salaries **below 50000** or **above 60000** are shown.

-- 💡 Always remember: `BETWEEN` includes boundary values unless explicitly excluded with `NOT`!
