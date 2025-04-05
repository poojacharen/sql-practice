SELECT 
  first_name,
  last_name,
  department
FROM employees
WHERE department NOT IN ('HR' OR 'IT');

-- ✅ Explanation: Filtering with NOT IN
-- The condition:
-- WHERE department NOT IN ('HR', 'IT')
-- means:
-- “Give me all rows except the ones where the department is HR or IT.”

-- 🔍 How It Works:
-- IN (...) filters rows matching any values in the list.

-- NOT IN (...) does the opposite, filtering out those matches.

-- 🧠 Use Cases for NOT IN:
-- Example	Description
-- WHERE status NOT IN ('Cancelled', 'Refunded')	Excludes cancelled or refunded orders
-- WHERE role NOT IN ('Admin', 'Manager')	Filters out users with high privileges
-- WHERE region NOT IN ('North', 'East')	Focuses on other regions
