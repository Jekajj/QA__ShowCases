-- Top 5 customers by total spend
SELECT u.id, u.email, SUM(o.total) AS total_spent
FROM users u
JOIN orders o ON o.user_id = u.id
GROUP BY u.id
ORDER BY total_spent DESC
LIMIT 5;
