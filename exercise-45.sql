SELECT CONCAT('last_name', ' ', 'first_name') AS full_name
FROM employees;


-- ### ✅ **Explanation:**
-- - We use the string concatenation operator `||` (or `CONCAT()` in MySQL) to join `last_name` and `first_name`.
-- - The result formats each employee’s name as `"Last, First"`.

-- ### 🧠 **Common String Operations:**
-- | Function | Use |
-- |----------|-----|
-- | `CONCAT()` | Combine strings in MySQL and other dialects |
-- | `||` | String join operator in SQLite, PostgreSQL |
-- | `TRIM()` | Remove leading/trailing spaces |
-- | `SUBSTRING()` | Extract part of a string |
-- | `UPPER() / LOWER()` | Change case of text |

-- 💡 **Tip:** You can use string functions to build clean, user-friendly outputs for UI, exports, or reports!
