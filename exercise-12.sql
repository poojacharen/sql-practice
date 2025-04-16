SELECT first_name, last_name, salary
FROM employees
WHERE salary BETWEEN 50000 AND 60000;

-- Why Do We Use BETWEEN?
-- BETWEEN is a range filtering operator in SQL.

-- It includes both the lower (50000) and upper (60000) limits.

-- Equivalent to:

-- sql
-- Copy
-- Edit
-- WHERE salary >= 50000 AND salary <= 60000
-- Common Use Cases of BETWEEN:
-- Query Example	Meaning
-- BETWEEN 10 AND 20	Values from 10 to 20 (inclusive)
-- BETWEEN '2024-01-01' AND '2024-12-31'	Dates in the year 2024
-- BETWEEN 'A' AND 'C'	Strings from 'A' to 'C' (alphabetical range)
-- 💡 Tip: Use BETWEEN for cleaner queries when working with numeric, date, or character ranges!
