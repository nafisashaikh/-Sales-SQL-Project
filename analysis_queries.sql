-- Total Revenue
SELECT SUM(p.price * od.quantity) AS total_revenue
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id;

-- Top Selling Products
SELECT p.product_name, SUM(od.quantity) AS total_sold
FROM Order_Details od
JOIN Products p ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- Sales by City
SELECT c.city, SUM(p.price * od.quantity) AS revenue
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.city
ORDER BY revenue DESC;

-- Monthly Sales
SELECT MONTH(order_date) AS month,
       SUM(p.price * od.quantity) AS revenue
FROM Orders o
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY MONTH(order_date)
ORDER BY month;

-- Top Customers
SELECT c.customer_name, SUM(p.price * od.quantity) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;