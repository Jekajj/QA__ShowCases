-- Customers with >3 failed payments
SELECT u.email, COUNT(*) AS failed_attempts
FROM users u
JOIN payments p ON p.user_id = u.id
WHERE p.status = 'failed'
GROUP BY u.email
HAVING COUNT(*) > 3;
