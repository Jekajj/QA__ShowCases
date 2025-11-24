-- Orders without payments
SELECT o.id, o.total, o.created_at
FROM orders o
LEFT JOIN payments p ON p.order_id = o.id
WHERE p.id IS NULL;
