-- ### **Exercise 101: List Employees with Department Names from a Separate Table**
-- **Question:**  
-- Assume you now have a `departments` table. Write a query to show each employee’s `first_name` and their full department name using a `JOIN`.

SELECT 
  e.first_name, 
  d.dept_name
FROM employees e
JOIN departments d
  ON e.department = d.dept_code;



-- ### ✅ **Why This Works:**
-- - `JOIN departments ON e.department = d.dept_code` matches the employee's department with the full department name.
-- - This allows displaying readable department names alongside employee data.

-- 💡 Aliasing tables (`e`, `d`) keeps your query cleaner and easier to read, especially for longer joins.
