-- ### **Exercise 54: Find Top-Paid Employee(s)**
-- **Question:**  
-- Write a query to find the **employee(s) who earn the highest salary**.

SELECT first_name, last_name, salary
FROM employees
WHERE salary = (
  SELECT MAX(salary
  ) 
FROM employees);

-- ### ✅ **Why This Works:**
-- - `MAX(salary)` finds the highest salary in the table.
-- - The outer query selects employees whose salary matches this highest value.
-- - This allows the query to return **all top earners**, even if there’s a tie.

-- 💡 **Use subqueries** when you need to compare values against aggregate results like MAX, MIN, AVG!
