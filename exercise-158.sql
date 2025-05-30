-- ### **Exercise 158: Duplicate First Names**

-- **Question:**  
-- Write a SQL query to find all first names that appear more than once in the `employees` table.

SELECT first_name
FROM employees
GROUP BY first_name
HAVING COUNT(*) > 1;


-- 🧠 Explanation:
-- GROUP BY first_name: Groups rows by each unique first name.

-- HAVING COUNT(*) > 1: Filters only those groups where the same name appears more than once.

-- This returns a list of duplicate first names in the table.
