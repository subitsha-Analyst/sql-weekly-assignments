/* ================================
   Question 1: ORDER BY & LIMIT
   Scenario: Top 3 highest-priced products
   ================================= */

-- MySQL / PostgreSQL / SQLite
SELECT product_id, product_name, price
FROM Products
ORDER BY price DESC
LIMIT 3;

-- SQL Server
SELECT TOP 3 product_id, product_name, price
FROM Products
ORDER BY price DESC;



/* ================================
   Question 2: Aggregate Functions
   Scenario: Sales summary statistics
   ================================= */

SELECT
    COUNT(*) AS total_sales_records,
    SUM(sale_amount) AS total_sales_amount,
    AVG(sale_amount) AS average_sale_amount,
    MAX(sale_amount) AS highest_sale_amount,
    MIN(sale_amount) AS lowest_sale_amount
FROM Sales;



/* ================================
   Question 3: GROUP BY & HAVING
   Scenario: Products with total sales > 100
   ================================= */

SELECT
    p.product_id,
    p.product_name,
    SUM(s.sale_amount) AS total_sales
FROM Sales s
JOIN Products p
ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
HAVING SUM(s.sale_amount) > 100;



/* ================================
   Question 4: Window Functions
   Scenario: Rank products by price
   ================================= */

-- Using RANK()
SELECT
    product_id,
    product_name,
    price,
    RANK() OVER (ORDER BY price DESC) AS price_rank
FROM Products;

-- Using DENSE_RANK()
SELECT
    product_id,
    product_name,
    price,
    DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
FROM Products;
