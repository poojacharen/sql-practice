-- ### **Exercise 125: List First Names That Appear More Than Once**
-- **Question:**  
-- Write a query to list `first_name`s that appear **more than once** in the `employees` table.

SELECT first_name
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1;



-- ### ✅ **Why This Works:**
-- - `GROUP BY first_name` combines all rows with the same name.
-- - `HAVING COUNT(*) > 1` filters only those names that occur more than once.

-- 💡 This is useful for detecting duplicates or repeat entries in datasets.
