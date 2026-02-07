--1. Total Number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

--2. Top 3 best selling customers
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
Order BY total_sold DESC
LIMIT 3;

--3.Revenue by category
SELECT p.category,
       Round(SUM(p.price * oi.quantity), 2) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

--4.TOP customers by total spend
SELECT c.customer_name,
      ROUND(SUM(p.price * oi.quantity), 2) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id=oi.order_id
JOIN products p ON oi.product_id=p.product_id
Group BY c.customer_name
Order By total_spent Desc;

--5.Average order Value
SELECT o.order_id,
      sum(p.price * oi.quantity) AS order_total
From orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id

--6. Monthy Revenue trend
SELECT DATE_FORMAT(o.order_date, '%y-%m') As month,
	ROUND(SUM(p.price * quantity), 2)AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;




