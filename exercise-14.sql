SELECT first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Why Do We Use LIMIT?
-- LIMIT is used to restrict the number of rows returned by a query.

-- ORDER BY salary DESC sorts salaries in descending order, ensuring the highest-paid employees come first.

-- LIMIT 3 fetches only the top 3 rows.

-- Other Use Cases of LIMIT:
-- Query Example	Meaning
-- LIMIT 1	Returns only 1 row (useful for getting the highest/lowest value)
-- LIMIT 5	Returns the top 5 rows
-- LIMIT 10 OFFSET 5	Skips the first 5 rows and returns the next 10

-- 💡 Tip: Some databases (like SQL Server) use TOP instead of LIMIT:
-- SELECT TOP 3 first_name, last_name, salary FROM employees ORDER BY salary DESC;
