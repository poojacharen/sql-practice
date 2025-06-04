-- Employees who received bonuses in every month of Q1 2023
-- Find employees who received bonuses in Jan, Feb, and Mar 2023.

SELECT employee_id
FROM bonuses
WHERE bonus_date BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY employee_id
HAVING COUNT(DISTINCT MONTH(bonus_date)) = 3;



-- This uses GROUP BY and HAVING with a condition to count how many distinct months each employee received a bonus. If it’s 3, it means they got one in Jan, Feb, and Mar.

