SELECT category, SUM(sales) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;

SELECT category, SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC;

SELECT region, SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

SELECT DATE_FORMAT(order_date, '%Y-%m') AS order_date,
       SUM(sales) AS sales
FROM orders
GROUP BY order_date
ORDER BY order_date;

SELECT customer_name, SUM(sales) AS total_sales
FROM orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

SELECT product_name, SUM(profit) AS total_profit
FROM orders
GROUP BY product_name
HAVING total_profit < 0
ORDER BY total_profit;



