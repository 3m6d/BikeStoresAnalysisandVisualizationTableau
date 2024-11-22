use BikeStores;

--Exploration of Data to check its completeness

--missing values in the data 

SELECT 'production.brands' AS TableName, COUNT(*) AS MissingValues
FROM production.brands
WHERE brand_id IS NULL
   OR brand_name IS NULL;

 
 SELECT 'production.categories' AS TableName, COUNT(*) AS MissingValues
FROM production.categories
WHERE category_id IS NULL
   OR category_name IS NULL;

SELECT 'production.products' AS TableName, COUNT(*) AS MissingValues
FROM production.products
WHERE product_id IS NULL
   OR product_name IS NULL
   OR brand_id IS NULL
   OR category_id IS NULL
   OR model_year IS NULL
   OR list_price IS NULL;


SELECT 'sales.customers' AS TableName, COUNT(*) AS MissingValues
FROM sales.customers
WHERE customer_id IS NULL
   OR first_name IS NULL
   OR last_name IS NULL
   OR phone IS NULL
   OR email IS NULL
   OR street IS NULL
   OR city IS NULL
   OR state IS NULL
   OR zip_code IS NULL;

SELECT 'sales.order_items' AS TableName, COUNT(*) AS MissingValues
FROM sales.order_items
WHERE order_id IS NULL
   OR item_id IS NULL
   OR product_id IS NULL
   OR quantity IS NULL
   OR list_price IS NULL
   OR discount IS NULL;

SELECT 'sales.orders' AS TableName, COUNT(*) AS MissingValues
FROM sales.orders
WHERE order_id IS NULL
   OR customer_id IS NULL
   OR order_date IS NULL
   OR required_date IS NULL
   OR shipped_date IS NULL
   OR store_id IS NULL
   OR staff_id IS NULL;

SELECT 'sales.staffs' AS TableName, COUNT(*) AS MissingValues
FROM sales.staffs
WHERE staff_id IS NULL
   OR first_name IS NULL
   OR last_name IS NULL
   OR email IS NULL
   OR phone IS NULL
   OR store_id IS NULL
   OR manager_id IS NULL;

SELECT 'sales.stores' AS TableName, COUNT(*) AS MissingValues
FROM sales.stores
WHERE store_id IS NULL
   OR store_name IS NULL
   OR phone IS NULL
   OR street IS NULL
   OR city IS NULL
   OR state IS NULL
   OR zip_code IS NULL;

