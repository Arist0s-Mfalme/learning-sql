-- the database
CREATE DATABASE if NOT EXISTS retail_sales_analysis;
-- switch to the database
USE retail_sales_analysis;
-- create a table in the database
CREATE TABLE if NOT EXISTS sales(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(15),
    age INT,
    category VARCHAR(100),
    quantiy INT,
    price_per_unit DECIMAL(10, 2),
    cogs DECIMAL(10, 2),
    total_sale DECIMAL(10, 2)
);
--load the csv data into the database
--view the data & confirm if it's the right data
SELECT *
FROM sales
LIMIT 10;
SELECT COUNT(*) AS total_rows
FROM sales;
-- data cleaning
SELECT *
FROM sales
WHERE transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
DELETE FROM sales
WHERE transactions_id IS NULL
    OR sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantiy IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
SE retail_sales_analysis;
SELECT *
FROM sales
WHERE age = 22;
-- data exploration
-- 1.How many sales
SELECT COUNT(*) as total_sales
FROM sales;
-- 2.How many unique customers do we have
SELECT COUNT(DISTINCT customer_id) as unique_customers
FROM sales;
-- 3.How many categories do we have
SELECT COUNT(DISTINCT category) as unique_categories
FROM sales;
-- data analysis & business key problems & answers
-- analysis & findings
-- 1.Write a SQL query to retrieve all rows for sells made on '2022-11-05'
SELECT *
FROM sales
WHERE sale_date = '2022-11-05';
-- 2.Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
USE retail_sales_analysis;
SELECT *
FROM sales
WHERE category = 'clothing'
    AND quantiy >= 4
    AND DATE_FORMAT(sale_date, '%Y-%m') = '2022-10';
-- 3.Write a SQL query to calculate the total sales (total_sale) for each category.
SELECT category,
    SUM(total_sale) as net_sale,
    COUNT(*) as total_orders
FROM sales
GROUP BY 1;
-- 4.Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category
SELECT ROUND(AVG(age), 2) AS average_age
FROM sales
WHERE category = 'Beauty';
-- 5.Write a SQL query to find all transactions where the total_sale is greater than 1000.
SELECT *
From sales
WHERE total_sale > 1000;
-- 6.Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
SELECT category,
    gender,
    COUNT(*) as total_trans
FROM sales
GROUP BY category,
    gender
ORDER BY category;