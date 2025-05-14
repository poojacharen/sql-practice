-- Monthly bonus trend for a year

SELECT MONTH(bonus_date) AS month, 
      SUM(bonus_amount) AS total_bonus
FROM bonuses
WHERE YEAR(bonus_date) = 2023
GROUP BY MONTH(bonus_date)
ORDER BY month;


-- Good for line charts — this query groups bonus payouts month-wise for a given year.
