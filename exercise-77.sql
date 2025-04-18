-- ### **Exercise 77: List Employees Whose Salary Is a Multiple of 5000**
-- **Question:**  
-- Write a query to find employees whose **salary is exactly divisible by 5000**.

SELECT 
  first_name, 
  salary
FROM employees
WHERE salary % 5000 = 0;


-- ### ✅ **Why This Works:**
-- - `salary % 5000 = 0` checks if the salary is evenly divisible by 5000.
-- - It filters out any salaries with remainders (like Frank's 58001).

-- 💡 `%` (modulo) is very handy when checking multiples, even/odd numbers, or divisibility!
