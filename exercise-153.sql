-- ### **Exercise 153: Filter by Last Name Initial**

-- **Question:**  
-- Write a SQL query to display the `first_name`, `last_name`, and `salary` of employees whose last names start with the letter **"B"**.

SELECT 
  first_name, 
  last_name, 
  salary
FROM employees
WHERE last_name LIKE 'B%';


-- 🧠 Explanation:
-- SELECT first_name, last_name, salary:
-- This selects the columns you want to see in the result.

-- FROM employees:
-- This specifies the table you're querying.

-- WHERE last_name LIKE 'B%':

-- LIKE is used for pattern matching.

-- 'B%' means you want last names that start with the letter B.

-- % is a wildcard that matches any sequence of characters after "B".

-- For example, it will match: Brown, Bennett, Black, etc.
