-- ### **Exercise 93: Show Employees Ordered by Last Name Descending**
-- **Question:**  
-- Write a query to show all employees, **ordered by last_name in descending order**.

SELECT 
  first_name, 
  last_name
FROM employees
ORDER BY last_name DESC;


-- ### ✅ **Why This Works:**
-- - `ORDER BY last_name DESC` sorts the results by `last_name` from Z to A.

-- 💡 You can combine `ORDER BY last_name DESC, first_name ASC` to sort by both last and first names for more refined ordering.

