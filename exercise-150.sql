-- ### **Exercise 140: Display All Employees Whose Name Starts with a Vowel**

-- **Question:**  
-- Write a query to find all employees whose `first_name` starts with a **vowel** (A, E, I, O, U) — case-insensitive.

SELECT first_name
FROM employees
WHERE LOWER(LEFT(first_name, 1)) IN ('a', 'e', 'i', 'o', 'u');


-- ✅ Why This Works:
-- LEFT(first_name, 1) gets the first character of each name.

-- LOWER(...) makes the check case-insensitive.

-- IN ('a', 'e', 'i', 'o', 'u') checks if it is a vowel.
