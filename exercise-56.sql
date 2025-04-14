-- ### **Exercise 56: Use IN to Filter Specific Departments**
-- **Question:**  
-- Write a query to list all employees who work in the **HR**, **IT**, or **Sales** departments.

SELECT 
  first_name, 
  last_name, 
  department
FROM employees
WHERE department IN ('HR', 'IT', 'Sales');

-- ### ✅ **Why This Works:**
-- - `IN ('HR', 'IT', 'Sales')` is a **clean and readable way** to filter multiple values.
-- - It's the same as writing:
--   ```sql
--   WHERE department = 'HR' OR department = 'IT' OR department = 'Sales'
--   ```

-- 💡 `IN` is great for simplifying multiple OR conditions in a `WHERE` clause!
