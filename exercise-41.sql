SELECT e.first_name, e.last_name, e.department
FROM employees e
JOIN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) > 1
) d ON e.department = d.department;

-- 🎯 Why It Works:
-- We grouped by department and counted how many employees each one has.

-- Then we joined that count back to the original employee table.

-- Finally, we filtered for departments where the count was more than 1.

-- 💡 Concepts Used:
-- GROUP BY with COUNT() to aggregate.

-- A subquery or CTE (if in SQL) or merge (in pandas) to bring the count alongside.

-- Filtering using a HAVING clause or post-join condition.
