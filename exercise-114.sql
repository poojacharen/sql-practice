-- ### **Exercise 104: Count of Employees Per Department Including Empty Departments**
-- **Question:**  
-- Assume the `departments` table has more departments than the `employees` table.  
-- Write a query to list **all departments** and the number of employees in each — including **departments with 0 employees**.

SELECT d.dept_name, 
  COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
  ON d.dept_code = e.department
GROUP BY d.dept_name
ORDER BY d.dept_name;




-- ### ✅ **Why This Works:**
-- - `LEFT JOIN` keeps all departments even if there are no matching employees.
-- - `COUNT(e.employee_id)` counts only the non-null matches.
-- - `GROUP BY` groups the results by department name.

-- 💡 Always use a `LEFT JOIN` when you want to include unmatched rows from the left table!
