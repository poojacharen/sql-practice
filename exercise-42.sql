SELECT
  first_name,
  salary,
CASE
   WHEN salary < 55000 THEN 'Low'
   WHEN salary BETWEEN 55000 AND 64999 THEN 'Medium'
   ELSE 'High'
END AS salary_level
FROM employees;

-- ### ✅ **Why This Works:**
-- - The `CASE` statement lets us **conditionally assign values** based on `salary` ranges.
-- - It acts like an **if-else ladder** in SQL.
-- - `BETWEEN` is inclusive, so `BETWEEN 55000 AND 64999` covers the correct middle range.

-- ### 🔄 **Use Cases for `CASE`:**
-- | Use Case | Example |
-- |----------|---------|
-- | Conditional category labels | Label customers as 'New' or 'Returning' |
-- | Performance bands | Categorize exam scores as 'Pass', 'Fail', 'Distinction' |
-- | Discount rules | Apply discounts based on order amount |

-- 💡 **Tip:** Use `CASE` to build **custom columns** in your reports and dashboards!
