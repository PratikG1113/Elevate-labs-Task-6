# Elevate-labs-Task-6

# 📊 Task 6: Sales Trend Analysis Using Aggregations

## 🎯 Objective

Analyze **monthly revenue** and **order volume** using SQL aggregate functions on the `orders` table from an online sales dataset.

---

## 🧰 Tools Used

- SQL (PostgreSQL / MySQL / SQLite)
- SQL environment or DB GUI (like pgAdmin, MySQL Workbench, DB Browser for SQLite)

---

## 🗂 Dataset

**Table Name:** `orders`

| Column Name   | Data Type | Description                     |
|---------------|------------|---------------------------------|
| order_id      | INT        | Unique identifier of the order |
| order_date    | DATE       | Date of the order              |
| amount        | DECIMAL    | Total revenue of the order     |
| product_id    | INT        | ID of the product              |

Sample data has been inserted manually for testing purposes.

---

## 📌 Step-by-Step Procedure

1. **Create the table**
   ```sql
   CREATE TABLE orders (
       order_id INT,
       order_date DATE,
       amount DECIMAL(10, 2),
       product_id INT
   );
   ```

2. **Insert sample data**
   ```sql
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
   ```

3. **Run the analysis query**
   ```sql
   SELECT
     EXTRACT(YEAR FROM order_date) AS year,
     EXTRACT(MONTH FROM order_date) AS month,
     SUM(amount) AS monthly_revenue,
     COUNT(DISTINCT order_id) AS order_volume
   FROM orders
   GROUP BY year, month
   ORDER BY year, month;
   ```

4. **Get top 3 months by revenue**
   ```sql
   SELECT
     EXTRACT(YEAR FROM order_date) AS year,
     EXTRACT(MONTH FROM order_date) AS month,
     SUM(amount) AS monthly_revenue
   FROM orders
   GROUP BY year, month
   ORDER BY monthly_revenue DESC
   LIMIT 3;
   ```

---

## 📈 Output

| Year | Month | Revenue | Orders |
|------|-------|---------|--------|
| 2023 | 01    | 2700.00 | 2      |
| 2023 | 02    | 2000.00 | 2      |
| 2023 | 03    | 4500.00 | 2      |
| 2023 | 04    | 5700.00 | 3      |
| 2023 | 05    | 800.00  | 1      |



## 📎 Deliverables

- ✅ SQL Script: `task6_sales_analysis.sql`
- ✅ Screenshot or result CSV: `ONLINE_SALES.pdf`
- ✅ This `README.md` file

## 👨‍💻 Author

**Pratik Golatkar**  
_Data Analyst Intern – Task 6_
