SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 1;


-- Why Do We Use HAVING?
-- The GROUP BY clause groups rows with the same department together.

-- The COUNT(*) function counts how many employees are in each department.

-- The HAVING clause filters groups (departments) after aggregation.

-- In this case, HAVING COUNT(*) > 1 ensures we only get departments with more than one employee.

-- Difference Between WHERE and HAVING
-- WHERE filters before grouping (on raw data).

-- HAVING filters after grouping (on aggregated results).

