-- ### Exercise 161: Highest Salary per Department

-- **Question:**  
-- Write an SQL query to retrieve the **employee(s) with the highest salary** in each department. Display the `first_name`, `last_name`, `department`, and `salary`

SELECT 
  first_name, 
  last_name, 
  department, 
  salary
FROM employees e
WHERE salary = (
    SELECT MAX(salary)
    FROM employees sub
    WHERE sub.department = e.department
);




-- ### 💡 Explanation:
-- - This is a **correlated subquery**: for each employee `e`, it finds the maximum salary **within that employee's department**.
-- - Only employees whose salary matches the **maximum in their department** are selected.
-- - This handles cases where **multiple employees** in the same department share the top salary.
