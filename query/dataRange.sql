use BikeStores;

--Exploration of Data to check the date range of the data
Select * from sales.orders;


-- Date range of orders
SELECT 
    MIN(order_date) AS EarliestOrderDate, 
    MAX(order_date) AS LatestOrderDate
FROM sales.orders;

-- Date range of product availability in stocks
SELECT 
    MIN(required_date) AS EarliestRequiredDate, 
    MAX(required_date) AS LatestRequiredDate
FROM sales.orders;
