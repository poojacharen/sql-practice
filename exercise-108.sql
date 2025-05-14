-- First bonus given to each employee

SELECT employee_id, 
       bonus_date, 
       bonus_amount
FROM (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY bonus_date) AS rn
    FROM bonuses
) t
WHERE rn = 1;


-- We use ROW_NUMBER() to rank bonuses per employee by date, then pick the first one.
