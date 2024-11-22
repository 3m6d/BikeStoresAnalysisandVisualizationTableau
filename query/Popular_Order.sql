-- Finding most popular Item

-- Find the popular items 
SELECT 
    p.product_id,
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold,
    COUNT(DISTINCT oi.order_id) AS total_orders,
    AVG(oi.list_price) AS avg_list_price
FROM 
    sales.order_items oi
INNER JOIN 
    production.products p ON oi.product_id = p.product_id
GROUP BY 
    p.product_id, p.product_name
ORDER BY 
    total_quantity_sold DESC;

