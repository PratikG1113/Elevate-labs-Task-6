CREATE DATABASE ONLINE_SALES;
USE ONLINE_SALES;


CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2023-01-05', 1200.00, 101),
(2, '2023-01-15', 1500.00, 102),
(3, '2023-02-02', 900.00, 103),
(4, '2023-02-10', 1100.00, 104),
(5, '2023-03-05', 2000.00, 101),
(6, '2023-03-15', 2500.00, 102),
(7, '2023-04-01', 3000.00, 103),
(8, '2023-04-10', 1000.00, 104),
(9, '2023-04-20', 1700.00, 105),
(10, '2023-05-05', 800.00, 106);


SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month
FROM orders;

SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month
ORDER BY year, month;


SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS monthly_revenue
FROM orders
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;




