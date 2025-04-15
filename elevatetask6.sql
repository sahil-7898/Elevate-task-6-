CREATE DATABASE online_sales_db;
USE online_sales_db;
select * from online_sales_dataset;
SELECT
    EXTRACT(YEAR FROM InvoiceDate) AS year,                  /*-- a. Extract year */
    EXTRACT(MONTH FROM InvoiceDate) AS month,                /*-- a. Extract month */
    SUM(Quantity * UnitPrice - Discount) AS total_revenue,  /*-- c. Revenue calculation*/
    COUNT(DISTINCT InvoiceNo) AS order_volume               /*-- d. Order volume*/
FROM online_sales_dataset
WHERE YEAR(InvoiceDate) = 2020								/*-- f. Filtering for year 2020*/
GROUP BY year, month                                        /*-- b. Group by year/month*/
ORDER BY year, month;                                      /* -- e. Sort results*/
