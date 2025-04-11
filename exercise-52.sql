-- ### **Exercise 52: Sort Employees by Department and Salary Descending**
-- **Question:**  
-- Write a query to show all employees, sorted by **department alphabetically** and **salary from highest to lowest** within each department. 


SELECT first_name, last_name, department, salary
FROM employees
ORDER BY department ASC, salary DESC;



-- ### ✅ **Why This Works:**
-- - `ORDER BY department ASC` sorts alphabetically by department.
-- - `salary DESC` makes sure salaries are shown from highest to lowest **within each department**.

-- 💡 You can omit `ASC` since it's the default. Just remember to explicitly specify `DESC` when needed!
