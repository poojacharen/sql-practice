-- ### **Exercise 115: Count Employees per Salary Grade**
-- **Question:**  
-- Use the same grading logic from Exercise 114:
-- - Grade A: salary ≥ 60000  
-- - Grade B: 50000 ≤ salary < 60000  
-- - Grade C: salary < 50000  

-- Write a query to count how many employees fall under each grade.

SELECT 
  CASE 
    WHEN salary >= 60000 THEN 'A'
    WHEN salary >= 50000 THEN 'B'
    ELSE 'C'
  END AS grade,
  COUNT(*) AS employee_count
FROM employees
GROUP BY grade;


-- ### ✅ **Why This Works:**
-- - The `CASE` assigns a grade to each employee based on salary.
-- - The `GROUP BY grade` groups them into grade buckets.
-- - `COUNT(*)` returns how many are in each grade.

-- 💡 This is a common technique in reporting and dashboards to classify and aggregate data by condition-based categories.
