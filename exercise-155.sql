-- ### **Exercise 155: List Employees with 'a' as the Second Letter in Their First Name**

-- **Question:**  
-- Write a SQL query to find all employees whose **first name has 'a' as the second letter**. Display `first_name`, `last_name`, and `salary`.

SELECT 
  first_name, 
  last_name, 
  salary
FROM employees
WHERE first_name LIKE '_a%';



-- ✅ Why your query is correct:
-- The LIKE '_a%' pattern is perfect for this task.

-- _ (underscore) matches any single character (i.e., the first character can be anything).

-- a is specifically the second letter.

-- % matches zero or more characters after that.

-- So it returns names like "Mark", "Daniel", "James", etc., where 'a' is the second letter.

-- 🧠 Additional Tip:
-- Other examples of patterns:

-- 'A%' – names starting with A

-- '%son' – names ending with "son"

-- '___a%' – names where the 4th letter is a
