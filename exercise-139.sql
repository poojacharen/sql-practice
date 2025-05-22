-- ### **Exercise 129: Update Salaries by 5% Where Salary < 50000**
-- **Question:**  
-- Write an SQL `UPDATE` query to increase the salary of employees earning **less than 50000** by **5%**.

UPDATE employees
SET salary = salary * 1.05
WHERE salary < 50000;



-- ### ✅ **Why This Works:**
-- - The condition `salary < 50000` filters applicable employees.
-- - `salary * 1.05` increases salary by 5%.

-- 💡 Always use `WHERE` in `UPDATE` queries to avoid affecting all rows unintentionally.
