--  Top 3 highest paid employees

SELECT name, 
      salary
FROM employees
ORDER BY salary DESC
LIMIT 3;



-- Straightforward use of ORDER BY and LIMIT to get top earners.
