-- Remove NULL values
DELETE FROM sales
WHERE customer_id IS NULL;

-- Standardize text fields
UPDATE customers
SET city = UPPER(city);

-- Remove duplicate records
DELETE t1
FROM orders t1
JOIN orders t2
ON t1.order_id = t2.order_id
AND t1.row_id > t2.row_id;
