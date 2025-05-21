-- ### **Exercise 123: Show Number of Employees per Department and Grade**
-- **Question:**  
-- Using the grading rules:
-- - Grade A: salary ≥ 60000  
-- - Grade B: 50000 ≤ salary < 60000  
-- - Grade C: salary < 50000  

-- Write a query to show the number of employees per **department and grade**.

SELECT 
  department,
  CASE 
    WHEN salary >= 60000 THEN 'A'
    WHEN salary >= 50000 THEN 'B'
    ELSE 'C'
  END AS grade,
  COUNT(*) AS employee_count
FROM employees
GROUP BY department, grade;


-- ### ✅ **Why This Works:**
-- - The `CASE` assigns each employee a grade based on salary.
-- - `GROUP BY department, grade` creates combinations of department and grade.
-- - `COUNT(*)` calculates the number of employees per combination.

-- 💡 This kind of report helps compare compensation bands across departments.
