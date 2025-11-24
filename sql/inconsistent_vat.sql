-- Products with VAT mismatch
SELECT p.id, p.name, p.price, p.vat_rate,
       ROUND(p.price * p.vat_rate / 100, 2) AS expected_vat,
       p.vat_amount
FROM products p
WHERE ROUND(p.price * p.vat_rate / 100, 2) <> p.vat_amount;
