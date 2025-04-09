-- CREATE TABLE Customer(
-- 	customer_id int primary key,
--     name VARCHAR(50),
--     email VARCHAR(50),
--     join_date DATE
--     );


-- CREATE TABLE Orders(
-- 	order_id int PRIMARY KEY,
--     order_date DATE,
--     total_amount decimal(7,2),
--     customer_id int,
--     FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
-- );

-- CREATE TABLE Products(
-- 	product_id INT PRIMARY KEY,
--     name VARCHAR(50),
--     category VARCHAR(50)
--     );

-- CREATE TABLE Order_items(
-- 	item_id int PRIMARY KEY,
--     order_id int,
--     product_id int,
--     quantity INT,
--     price decimal(7,2),
--     FOREIGN KEY (order_id) REFERENCES orders (order_id),
--     FOREIGN KEY (product_id) REFERENCES products (product_id)
--     );


-- //TOTAL REVENUE BY MONTH
-- SELECT MONTH(order_date) AS month, SUM(total_amount) AS revenue
-- FROM orders
-- GROUP BY month
-- ORDER BY month;


-- //TOP 5 SELLING PRODUCTS
-- SELECT p.name, SUM(oi.quantity) AS total_sold
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id
-- GROUP BY p.name
-- ORDER BY total_sold DESC
-- LIMIT 5;


-- //AVERAGE ORDER VALUE
-- SELECT AVG(total_amount) AS avg_order_value
-- FROM orders;

-- //REPEAT VS ONE-TIME CUSTOMERS
-- SELECT 
--   COUNT(DISTINCT customer_id) AS total_customers,
--   COUNT(customer_id) - COUNT(DISTINCT customer_id) AS repeat_customers
-- FROM orders
-- GROUP BY customer_id
-- HAVING COUNT(order_id) > 1;

-- //REVENUE BY CATEGORY
-- SELECT p.category, SUM(oi.quantity * oi.price) AS total_revenue
-- FROM order_items oi
-- JOIN products p ON oi.product_id = p.product_id
-- GROUP BY p.category
-- ORDER BY total_revenue DESC;












