-- ### **Exercise 74: Find Employees with 'a' in Their Last Name**
-- **Question:**  
-- Write a query to find employees whose **last name contains the letter 'a'** (case insensitive).

SELECT 
  first_name, 
  last_name
FROM employees
WHERE LOWER(last_name) LIKE '%a%';


-- ### ✅ **Why This Works:**
-- - `LOWER(last_name)` ensures the comparison is **case insensitive**.
-- - `LIKE '%a%'` finds any last name containing the letter 'a' anywhere.

-- 💡 You can also use `ILIKE` in PostgreSQL directly for case-insensitive search without `LOWER()`!

