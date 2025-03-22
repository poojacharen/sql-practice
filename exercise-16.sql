SELECT COUNT(DISTINCT department) AS unique_departments
FROM employees;


-- Why Do We Use COUNT(DISTINCT column)?
-- The DISTINCT keyword ensures only unique values are considered in the count.

-- COUNT(DISTINCT department) counts the number of unique department names.

-- Other Use Cases of DISTINCT:
-- Query Example	Meaning
-- SELECT DISTINCT department FROM employees;	Lists unique department names
-- SELECT COUNT(DISTINCT salary) FROM employees;	Counts unique salary values
-- SELECT DISTINCT first_name FROM employees;	Lists unique first names
-- 💡 Tip: Use DISTINCT only when necessary, as it can slow down performance on large datasets!
