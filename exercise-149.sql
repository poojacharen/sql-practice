-- ### **Exercise 139: Show All Employees Whose Name Has Exactly 5 Characters**

-- **Question:**  
-- Write a query to find all employees whose `first_name` contains **exactly 5 characters**.

SELECT first_name
FROM employees
WHERE LENGTH(first_name) = 5;


-- 🧠 Explanation:
-- LENGTH(first_name) returns the number of characters in each employee's name.

-- We filter only those where the length equals 5.
