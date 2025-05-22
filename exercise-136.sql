-- ### **Exercise 126: Find Employees Whose Name Contains 'ar'**
-- **Question:**  
-- Write a query to list employees whose `first_name` contains `'ar'` **anywhere in the name**, case-insensitive.

SELECT first_name
FROM employees
WHERE LOWER(first_name) LIKE '%ar%';


-- ### ✅ **Why This Works:**
-- - `LOWER(first_name)` ensures the comparison is case-insensitive.
-- - `'ar'` can appear **anywhere** in the name.
-- - `%ar%` matches zero or more characters before or after "ar".

-- 💡 Useful for flexible name or keyword matching in search functionality.
