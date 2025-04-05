SELECT department,
       CASE
         WHEN salary < 55000 THEN 'Low'
         WHEN salary BETWEEN 55000 AND 64999 THEN 'Medium'
         ELSE 'High'
       END AS salary_level,
       COUNT(*) AS count
FROM employees
GROUP BY department, salary_level
ORDER BY department, salary_level;


-- ### ✅ **Why This Works:**
-- - We created a **computed column** (`salary_level`) using `CASE` to classify each salary.
-- - Then we **grouped** by both department and salary level.
-- - Finally, we used `COUNT(*)` to **get the number of employees** in each combination.

-- ### 📊 Common Uses:
-- - Salary band analysis.
-- - Team distribution reporting.
-- - Budget breakdowns and headcount forecasting.

-- 💡 **Tip:** You can also use this pattern with `AVG`, `SUM`, or `MAX` for more advanced summaries!
