-- ### **Exercise 70: Use MOD to Identify Even Salaries**
-- **Question:**  
-- Write a query to find employees whose **salary is an even number**.

SELECT first_name, salary
FROM employees
WHERE salary % 2 = 0;


-- ### ✅ **Why This Works:**
-- - `salary % 2` returns the **remainder** when divided by 2.
-- - If the remainder is 0, it means the salary is an even number.

-- 💡 Use `MOD(salary, 2)` in databases that don’t support `%` syntax (like Oracle).
