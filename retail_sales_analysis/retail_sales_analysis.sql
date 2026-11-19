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