SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'A%';



-- The LIKE operator is used for pattern matching in SQL.

-- The wildcard % represents any sequence of characters (including an empty sequence).

-- 'A%' means first_name starts with 'A', followed by any characters.

-- Other Expressions Using LIKE:
-- Expression	Meaning
-- LIKE 'A%'	Starts with 'A'
-- LIKE '%A'	Ends with 'A'
-- LIKE '%A%'	Contains 'A' anywhere
-- LIKE '_A%'	Second character is 'A' (single _ represents one character)
-- LIKE 'A_%'	Starts with 'A' followed by at least one character
