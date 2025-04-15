# Elevate-task-6-

# Sales Trend Analysis Using Aggregations

## Objective
I performed a monthly sales trend analysis using SQL to understand revenue patterns and order volumes from an online sales dataset.

## Tools Used
- MySQL Workbench
- MySQL Server
- Kaggle Online Sales Dataset

## Dataset Overview
The dataset I used contains the following relevant columns:

- InvoiceNo (used as order_id)
- InvoiceDate (used as order_date)
- Quantity
- UnitPrice
- Discount
- StockCode (used as product_id)

To calculate the amount, I used the formula:
amount = Quantity * UnitPrice - Discount

## Task Summary
This task involved six steps:

a. Extract the month and year from the order date  
b. Group the data by year and month  
c. Calculate total revenue  
d. Count distinct orders to get order volume  
e. Sort the result by year and month  
f. Optionally filter for a specific year

## SQL Script
This is the SQL query I used to perform the analysis:

```sql
SELECT
    EXTRACT(YEAR FROM InvoiceDate) AS year,
    EXTRACT(MONTH FROM InvoiceDate) AS month,
    SUM(Quantity * UnitPrice - Discount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM online_sales_dataset
GROUP BY year, month
ORDER BY year, month;

To filter for a specific year such as 2020, I can add the following condition:
WHERE YEAR(InvoiceDate) = 2020
