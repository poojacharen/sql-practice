-- ### **Exercise 51: Filter Employees with Salary Between 50000 and 60000**
-- **Question:**  
-- Write a query to list employees whose salary is **between 50000 and 60000 (inclusive)**. 

SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 60000;


-- ### ✅ **Why This Works:**
-- - `BETWEEN 50000 AND 60000` checks for salaries **inclusively** within that range.
-- - This includes both boundary values: 50000 and 60000.

-- 💡 You can also write this as:
-- ```sql
-- WHERE salary >= 50000 AND salary <= 60000;
-- ```
-- Both versions give the same result!
