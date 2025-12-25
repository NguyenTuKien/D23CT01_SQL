SELECT COUNT(p.product_id) AS num_products
FROM products p
JOIN sales s ON p.product_id = s.product_id
JOIN time t ON s.time_id = t.time_id
WHERE p.category = 'Hair Care'
AND p.vegan IS TRUE
AND MONTH(t.sale_date) between 5 and 12