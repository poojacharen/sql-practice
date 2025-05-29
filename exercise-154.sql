-- ### **Exercise 154: Display Employees Whose Last Name Contains 'on'**

-- **Question:**  
-- Write a SQL query to display the `first_name`, `last_name`, and `salary` of employees whose **last name contains the letters 'on'**.

SELECT
  first_name,
  last_name,
  salary
FROM employees
WHERE last_name LIKE '%on%';


-- 🔍 Explanation:
-- LIKE '%on%' is used to find anywhere in the string where 'on' appears.

-- % is a wildcard: it matches zero or more characters.

-- So %on% means: any string that has "on" in any position — start, middle, or end.

-- 🧠 Why we use LIKE:
-- The LIKE operator is useful when you want to search for patterns in text.

-- If you want names that start with 'on', you'd use 'on%'.

-- If you want names that end with 'on', you'd use '%on'.
