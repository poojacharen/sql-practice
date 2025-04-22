-- ### **Exercise 89: Find Top Paid Employee in Each Department**
-- **Question:**  
-- Write a query to find the **employee with the highest salary** in each department.

SELECT 
  department, 
  first_name, 
  salary
FROM employees e1
WHERE salary = (
  SELECT MAX(salary)
  FROM employees e2
  WHERE e1.department = e2.department
  );


-- ### ✅ **Why This Works:**
-- - The **correlated subquery** finds the maximum salary within each department.
-- - The outer query picks the employee whose salary matches the maximum in their department.

-- 💡 This method is very useful for "greatest per group" problems where you want the top performer, top product, or highest metric!
