-- ### **Exercise 112: Show Employees Whose First Name Has More Vowels Than Consonants**
-- **Question:**  
-- Write a query to list employees whose `first_name` contains **more vowels than consonants**.

-- > For simplicity, consider vowels to be A, E, I, O, U (case-insensitive).
-- > You can assume names only contain alphabetic characters.



SELECT first_name
FROM employees
WHERE
  LENGTH(REGEXP_REPLACE(first_name, '[^aeiouAEIOU]', '')) >
  LENGTH(REGEXP_REPLACE(first_name, '[aeiouAEIOU]', ''));


-- ### ✅ **Why This Works:**
-- - `REGEXP_REPLACE(first_name, '[^aeiouAEIOU]', '')` removes everything **except vowels** — so we can count them.
-- - `REGEXP_REPLACE(first_name, '[aeiouAEIOU]', '')` removes vowels — leaving consonants.
-- - Comparing their lengths tells us whether vowels outnumber consonants.

-- 💡 This exercise uses regex string replacement and works best in databases like MySQL 8+, PostgreSQL, or SQL Server with string functions.
