-- ### **Exercise 114: List Employees with a Salary Grade**
-- **Question:**  
-- Assign a salary grade based on these rules:
-- - Grade A: salary ≥ 60000  
-- - Grade B: 50000 ≤ salary < 60000  
-- - Grade C: salary < 50000  

-- Write a query to show each employee’s `first_name`, `salary`, and their salary `grade`.


SELECT 
  first_name,
  salary,
  CASE 
    WHEN salary >= 60000 THEN 'A'
    WHEN salary >= 50000 THEN 'B'
    ELSE 'C'
  END AS grade
FROM employees;


-- ### ✅ **Why This Works:**
-- - The `CASE` statement assigns the grade based on salary ranges.
-- - The condition order matters — it checks from highest to lowest.

-- 💡 Be sure not to use overlapping conditions. `salary >= 50000` will correctly catch the "B" grade range before it falls into the default `ELSE`
