--  Calculate running total of bonuses
-- For each employee, show the running total of bonuses ordered by bonus date.

SELECT employee_id, 
  bonus_date, 
  bonus_amount,
       SUM(bonus_amount) OVER (PARTITION BY employee_id ORDER BY bonus_date) AS running_total
FROM bonuses;

-- Here we use a window function SUM() OVER (...) to create a running total by employee.
