SELECT e.first_name, e.last_name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- Why Do We Use LEFT JOIN?
-- A LEFT JOIN returns all rows from the left table (employees), even if there is no matching row in the right table (departments).

-- If no match is found, the department_name column will have NULL values.

-- Other Types of JOINS:
-- Join Type	Description
-- INNER JOIN	Returns only matching rows from both tables
-- LEFT JOIN	Returns all rows from the left table, and matching rows from the right
-- RIGHT JOIN	Returns all rows from the right table, and matching rows from the left
-- FULL JOIN	Returns all rows from both tables, filling non-matching rows with NULL
-- 💡 Tip: Always check if NULL values exist in the joined column when using LEFT JOIN!
