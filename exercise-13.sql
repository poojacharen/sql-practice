SELECT first_name, last_name, department
FROM employees
WHERE department IN ('HR', 'Sales');


-- Why Do We Use IN?
-- The IN operator is used to match multiple values in a single column.

-- Instead of writing multiple OR conditions like:

-- sql
-- Copy
-- Edit
-- WHERE department = 'HR' OR department = 'Sales'
-- we use IN for better readability and efficiency.

-- Other Use Cases of IN:
-- Query Example	Meaning
-- IN (1, 2, 3)	Matches values 1, 2, or 3
-- IN ('HR', 'IT')	Matches 'HR' or 'IT'
-- IN (SELECT department FROM other_table)	Matches values from a subquery
-- 💡 Tip: Use IN when filtering against a fixed list of values!
