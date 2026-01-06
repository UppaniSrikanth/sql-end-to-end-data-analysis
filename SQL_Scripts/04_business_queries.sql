-- Top 5 customers by revenue
SELECT customer_id, SUM(revenue) AS total_revenue
FROM sales
GROUP BY customer_id
ORDER BY total_revenue DESC
LIMIT 5;

-- Monthly revenue trend
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(revenue) AS monthly_revenue
FROM sales
GROUP BY month
ORDER BY month;
