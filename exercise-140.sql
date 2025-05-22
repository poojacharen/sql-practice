-- ### **Exercise 130: Grade Employees Based on Salary Ranges**
-- **Question:**  
-- Use this grading scale:
-- - Grade A: salary ≥ 70000  
-- - Grade B: 60000 to 69999  
-- - Grade C: 50000 to 59999  
-- - Grade D: below 50000  

-- Write a query to show each employee’s `first_name`, `salary`, and `grade`.

SELECT
  first_name,
  salary,
  CASE 
    WHEN salary >= 70000 THEN 'A'
    WHEN salary BETWEEN 60000 AND 69999 THEN 'B'
    WHEN salary BETWEEN 50000 AND 59999 THEN 'C'
    ELSE 'D'
  END AS grade
FROM employees;



-- ### ✅ **Why This Works:**
-- - `CASE` logic checks from highest to lowest ranges.
-- - `BETWEEN` includes both boundaries.
-- - Labeling grades as `'A'`, `'B'`, etc., matches expected output.

-- 💡 CASE statements are ideal for categorizing numeric ranges in reports or scoring models.
