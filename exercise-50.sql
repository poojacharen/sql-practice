-- ### **Exercise 50: Add 10% Bonus to Salary in Output**
-- **Question:**  
-- Write a query to show each employee’s **first name, salary, and a new column `bonus_salary`** (which is 10% more than their actual salary).  



SELECT first_name, salary, salary * 1.1 AS bonus_salary
FROM employees;



-- ### ✅ **Correct SQL Query:**
-- ```sql
-- SELECT first_name, salary, salary * 1.1 AS bonus_salary
-- FROM employees;
-- ```

-- ### ✅ **Why This Works:**
-- - We multiply `salary * 1.1` to get a 10% increase.
-- - You can alias the computed value using `AS bonus_salary` to name the new column.

-- 💡 **Tip:** SQL supports inline arithmetic for calculations like bonuses, tax, and percentages!
