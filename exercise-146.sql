-- ### **Exercise 136: Show Employees Whose Names Have More Than 4 Characters and End With 'e'**
-- **Question:**  
-- Write a query to display `first_name`s from the `employees` table that:
-- - Have more than 4 characters, and
-- - End with the letter `e` (case-insensitive)

SELECT first_name
FROM employees
WHERE LENGTH(first_name) > 4
  AND LOWER(first_name) LIKE '%e';



**🔍 Explanation:**
- `LENGTH(first_name) > 4` filters names longer than 4 characters.
- `LOWER(first_name) LIKE '%e'` ensures the name ends with a lowercase 'e'.
- We use `LOWER()` to make the check case-insensitive.

🎉 Well done! This query returns the correct result as expected.
