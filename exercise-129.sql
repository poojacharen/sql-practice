-- ### **Exercise 119: Show Employees Without a Department**
-- **Question:**  
-- Write a query to find employees whose `department` value is **NULL**.

SELECT first_name
FROM employees
WHERE department IS NULL;


-- ### ✅ **Why This Works:**
-- - `IS NULL` is the correct way to check for missing/null values in SQL.
-- - `=` or `!= NULL` won’t work — NULL is not a value but a state of "unknown".

-- 💡 Use `IS NULL` and `IS NOT NULL` when dealing with missing data in filtering conditions.
