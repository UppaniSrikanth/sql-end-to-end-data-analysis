-- Total number of customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

-- Revenue by category
SELECT category, SUM(revenue) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;
