-- ### **Exercise 68: Find Salaries Not Ending in Zero**
-- **Question:**  
-- Write a query to find employees whose salary **does not end with a zero**.

SELECT first_name, salary
FROM employees
WHERE salary % 10 != 0;


-- ### ✅ **Why This Works:**
-- - `salary % 10` gives the **last digit** of the salary.
-- - If the last digit is **not 0**, we include the row.

-- 💡 This is a great use of the modulo operator (`%`) for number-based filters like last digits or even/odd checks!
