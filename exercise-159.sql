-- ### **Exercise 159: Departments with At Least 2 Employees**

-- **Question:**  
-- Write a SQL query to list departments that have at least 2 employees.

SELECT department
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;



-- 💡 Explanation:
-- GROUP BY department groups the rows based on each department name. So all employees in the same department are considered one group.

-- COUNT(*) counts how many employees are in each department.

-- HAVING COUNT(*) >= 2 filters those groups to include only departments that have 2 or more employees.

-- Unlike WHERE, which filters individual rows, HAVING filters groups created by GROUP BY.

-- So, in the sample data:

-- HR has 2 employees → included ✅

-- Sales has 2 employees → included ✅

-- IT has 2 employees → included ✅

-- Marketing has 1 employee → excluded ❌

