-- ### **Exercise 81: List Employees with Salary Between 50000 and 60000**
-- **Question:**  
-- Write a query to find employees whose salary is **between 50000 and 60000** (inclusive).

SELECT first_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 60000;


-- ### ✅ **Why This Works:**
-- - `BETWEEN 50000 AND 60000` includes both 50000 and 60000 in the result.
-- - This makes it easy to specify a numeric range without multiple conditions.

-- 💡 Equivalent to: `salary >= 50000 AND salary <= 60000`.
