SELECT e.first_name, e.last_name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;



-- Why Do We Use INNER JOIN?
-- INNER JOIN returns only matching rows from both tables.

-- If a department exists in employees but not in departments, it is excluded from the result.

-- The ON condition ensures that we match department_id from both tables.

-- Other Types of JOINS:
-- Join Type	Description
-- INNER JOIN	Returns only matching rows from both tables
-- LEFT JOIN	Returns all rows from the left table, and matching rows from the right
-- RIGHT JOIN	Returns all rows from the right table, and matching rows from the left
-- FULL JOIN	Returns all rows from both tables, filling non-matching rows with NULL
-- 💡 Tip: Use INNER JOIN when you need only the matching data from both tables!
