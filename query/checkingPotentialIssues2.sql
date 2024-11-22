-- Orders with zero or negative quantity
SELECT *
FROM sales.order_items
WHERE quantity <= 0;

