-- Duplicate customers by name and phone number
SELECT first_name, last_name, phone, COUNT(*) AS DuplicateCount
FROM sales.customers
GROUP BY first_name, last_name, phone
HAVING COUNT(*) > 1;


SELECT customer_id, street, city, state
FROM sales.customers
WHERE first_name = 'Justina'
and last_name = 'Jenkins';
