-- CREATE DATABASE walmart_data;
-- USE walmart_data;
-- CREATE TABLE walmart_staging (
--     City TEXT,
--     Customer_Age TEXT,
--     Customer_Name TEXT,
--     Customer_Segment TEXT,
--     Discount TEXT,
--     Number_of_Records TEXT,
--     Order_Date TEXT,
--     Order_ID TEXT,
--     Order_Priority TEXT,
--     Order_Quantity TEXT,
--     Product_Base_Margin TEXT,
--     Product_Category TEXT,
--     Product_Container TEXT,
--     Product_Name TEXT,
--     Product_Sub_Category TEXT,
--     Profit TEXT,
--     Region TEXT,
--     Row_ID TEXT,
--     Sales TEXT,
--     Ship_Date TEXT,
--     Ship_Mode TEXT,
--     Shipping_Cost TEXT,
--     State TEXT,
--     Unit_Price TEXT,
--     Zip_Code TEXT,
--     Delivery_Days TEXT,
--     Order_Month TEXT
-- );
-- LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/walmart_data.csv'
-- INTO TABLE walmart_staging
-- FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
-- LINES TERMINATED BY '\r\n'
-- IGNORE 1 ROWS;
-- CREATE TABLE walmart_sales (
--     city VARCHAR(100),
--     customer_age INT,
--     customer_name VARCHAR(100),
--     customer_segment VARCHAR(50),
--     discount DECIMAL(5,3),
--     number_of_records INT,
--     order_date DATE,
--     order_id VARCHAR(50),
--     order_priority VARCHAR(50),
--     order_quantity INT,
--     product_base_margin DECIMAL(5,3),
--     product_category VARCHAR(50),
--     product_container VARCHAR(50),
--     product_name TEXT,
--     product_sub_category VARCHAR(100),
--     profit DECIMAL(12,4),
--     region VARCHAR(50),
--     row_id INT,
--     sales DECIMAL(12,2),
--     ship_date DATE,
--     ship_mode VARCHAR(50),
--     shipping_cost DECIMAL(10,2),
--     state VARCHAR(100),
--     unit_price DECIMAL(10,2),
--     zip_code VARCHAR(20),
--     delivery_days INT,
--     order_month INT
-- );
-- INSERT INTO walmart_sales
-- SELECT
--     city,
--     CAST(CAST(customer_age AS DECIMAL(10,2)) AS SIGNED),
--     customer_name,
--     customer_segment,
--     CAST(discount AS DECIMAL(5,3)),
--     CAST(number_of_records AS SIGNED),
--     STR_TO_DATE(order_date,'%Y-%m-%d'),
--     order_id,
--     order_priority,
--     CAST(order_quantity AS SIGNED),
--     CAST(product_base_margin AS DECIMAL(5,3)),
--     product_category,
--     product_container,
--     product_name,
--     product_sub_category,
--     CAST(profit AS DECIMAL(12,4)),
--     region,
--     CAST(row_id AS SIGNED),
--     CAST(sales AS DECIMAL(12,2)),
--     STR_TO_DATE(ship_date,'%Y-%m-%d'),
--     ship_mode,
--     CAST(shipping_cost AS DECIMAL(10,2)),
--     state,
--     CAST(unit_price AS DECIMAL(10,2)),
--     zip_code,
--     CAST(delivery_days AS SIGNED),
--     CAST(order_month AS SIGNED)
-- FROM walmart_staging;

-- select count(*) as total_records from walmart_sales;

-- DESCRIBE walmart_sales;

-- select row_id, count(*) as duplicate_count 
-- from walmart_sales 
-- group by row_id 
-- having count(*)>1;

-- SELECT
--     SUM(CASE WHEN City IS NULL THEN 1 ELSE 0 END) AS missing_city,
--     SUM(CASE WHEN Customer_Age IS NULL THEN 1 ELSE 0 END) AS missing_customer_age,
--     SUM(CASE WHEN Customer_Name IS NULL THEN 1 ELSE 0 END) AS missing_customer_name,
--     SUM(CASE WHEN Customer_Segment IS NULL THEN 1 ELSE 0 END) AS missing_customer_segment,
--     SUM(CASE WHEN Discount IS NULL THEN 1 ELSE 0 END) AS missing_discount,
--     SUM(CASE WHEN Number_of_Records IS NULL THEN 1 ELSE 0 END) AS missing_records,
--     SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS missing_order_date,
--     SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS missing_order_id,
--     SUM(CASE WHEN Order_Priority IS NULL THEN 1 ELSE 0 END) AS missing_priority,
--     SUM(CASE WHEN Order_Quantity IS NULL THEN 1 ELSE 0 END) AS missing_quantity,
--     SUM(CASE WHEN Product_Base_Margin IS NULL THEN 1 ELSE 0 END) AS missing_margin,
--     SUM(CASE WHEN Product_Category IS NULL THEN 1 ELSE 0 END) AS missing_category,
--     SUM(CASE WHEN Product_Name IS NULL THEN 1 ELSE 0 END) AS missing_product,
--     SUM(CASE WHEN Product_Sub_Category IS NULL THEN 1 ELSE 0 END) AS missing_sub_category,
--     SUM(CASE WHEN Profit IS NULL THEN 1 ELSE 0 END) AS missing_profit,
--     SUM(CASE WHEN Region IS NULL THEN 1 ELSE 0 END) AS missing_region,
--     SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS missing_sales,
--     SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS missing_ship_date,
--     SUM(CASE WHEN Ship_Mode IS NULL THEN 1 ELSE 0 END) AS missing_ship_mode,
--     SUM(CASE WHEN Shipping_Cost IS NULL THEN 1 ELSE 0 END) AS missing_shipping_cost,
--     SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS missing_state,
--     SUM(CASE WHEN Unit_Price IS NULL THEN 1 ELSE 0 END) AS missing_unit_price,
--     SUM(CASE WHEN Zip_Code IS NULL THEN 1 ELSE 0 END) AS missing_zip,
--     SUM(CASE WHEN Delivery_Days IS NULL THEN 1 ELSE 0 END) AS missing_delivery_days,
--     SUM(CASE WHEN Order_Month IS NULL THEN 1 ELSE 0 END) AS missing_order_month
-- FROM walmart_sales;

-- select count(*) as loss_orders
-- from walmart_sales
-- where profit<0;

-- select count(*) as invalid_sales
-- from walmart_sales
-- where sales<0;

-- select min(order_date) as first_order,
-- max(order_date) as last_order
-- from walmart_sales;

-- select SUM(sales) as total_sales from walmart_sales;

-- select sum(profit) as total_profit from walmart_sales;

-- select COUNT(DISTINCT order_id) as total_orders from walmart_sales;

-- select (SUM(sales)/COUNT(distinct order_id)) as average_order_value from walmart_sales;

-- SELECT (SUM(Profit)/SUM(Sales)*100) AS profit_margin_percentage
-- FROM walmart_sales;

-- select order_month, sum(sales) as monthly_sales 
-- from walmart_sales
-- group by order_month
-- order by order_month;

-- MONTHLY SALES CONTRIBUTION PERCENTAGE
-- select order_month, sum(sales) as total_sales,
-- (sum(sales)/(select sum(sales) from walmart_sales)*100) as sales_percentage
-- from walmart_sales
-- group by order_month
-- order by sales_percentage desc;

-- select order_month, sum(profit) as monthly_profit
-- from walmart_sales
-- group by order_month
-- order by order_month;

-- select product_category, sum(sales) as total_sales_by_product_category
-- from walmart_sales
-- group by product_category
-- order by total_sales_by_product_category desc;

-- select product_category, sum(profit) as total_profit_by_product_category
-- from walmart_sales
-- group by product_category
-- order by total_profit_by_product_category desc;

-- CATEGORY PROFIT MARGIN
-- select product_category, 
-- (sum(profit)/sum(sales)*100) as profit_margin
-- from walmart_sales
-- group by product_category
-- order by profit_margin desc;

-- select region, sum(sales) as region_wise_sales 
-- from walmart_sales
-- group by region
-- order by region_wise_sales desc;

-- select region, sum(profit) as region_wise_profit
-- from walmart_sales
-- group by region
-- order by region_wise_profit desc;

-- CUSTOMER SEGMENT PERFORMANCE
-- select customer_segment, count(distinct order_id) as orders, sum(sales) as total_sales, sum(profit) as total_profit
-- from walmart_sales
-- group by customer_segment
-- order by total_sales desc;

-- TOP 10 PRODUCTS BY SALE
-- select product_name, sum(sales) as total_sales
-- from walmart_sales
-- group by product_name
-- order by total_sales desc
-- limit 10;

-- SELECT COUNT(*) AS null_product_names
-- FROM walmart_sales
-- WHERE Product_Name IS NULL;

-- SELECT COUNT(*) AS empty_product_names
-- FROM walmart_sales
-- WHERE TRIM(Product_Name) = '';

-- SELECT *
-- FROM walmart_sales
-- WHERE Product_Name IS NULL
--    OR TRIM(Product_Name) = '';

-- set sql_safe_updates=0;

-- UPDATE walmart_sales
-- SET product_name = 'Unknown Product'
-- WHERE TRIM(product_name) = '';

-- SET SQL_SAFE_UPDATES = 1;

-- TOP 10 MOST PROFITABLE PRODUCTS
-- select product_name, sum(profit) as total_profit
-- from walmart_sales
-- group by product_name
-- order by total_profit desc
-- limit 10;

-- select avg(delivery_days) as average_delivery_days
-- from walmart_sales;

-- select avg(shipping_cost) as average_shipping_cost
-- from walmart_sales;

-- DELIVERY BY SHIP MODE
-- select ship_mode, avg(delivery_days) as sverage_delivery_days, count(*) as orders
-- from walmart_sales
-- group by ship_mode;

-- SELECT COUNT(*)
-- FROM walmart_sales
-- WHERE delivery_days <> DATEDIFF(ship_date,order_date);

-- SELECT COUNT(*)
-- FROM walmart_sales
-- WHERE order_month <> MONTH(order_date);

-- CUSTOMER DIMENSION CANDIDATE CHECK
-- SELECT COUNT(*) AS total_customers, COUNT(DISTINCT customer_name) AS unique_customers
-- FROM walmart_sales;

-- PRODUCT DIMENSION CANDIDATE CHECK
-- SELECT COUNT(*) AS total_products, COUNT(DISTINCT product_name) AS unique_products
-- FROM walmart_sales;

-- PRODUCT PROFIT RANKING
-- WITH product_profit AS
-- (
-- SELECT product_name, SUM(profit) AS profit
-- FROM walmart_sales
-- GROUP BY product_name
-- )
-- SELECT product_name, profit, RANK()
-- OVER(
-- ORDER BY profit DESC
-- )
-- AS profit_rank
-- FROM product_profit;

-- REPEAT CUSTOMERS
-- select customer_name, count(distinct order_id) as number_of_orders
-- from walmart_sales
-- group by customer_name
-- having number_of_orders>1
-- order by number_of_orders desc;

-- RANKING OF SALES BY STATE
-- with state_sales as (select state, sum(sales) as total_sales from walmart_sales group by state)
-- select state, total_sales, rank() 
-- over(order by total_sales desc) as ranking
-- from state_sales;

-- DELIVERY PERFORMANCE BASED ON SPEED OF DELIVERY
-- select case
-- when delivery_days<=2 then 'Fast Delivery'
-- when delivery_days between 3 and 5 then 'Normal Delivery'
-- else 'Delayed Delivery'
-- end as delivery_category,
-- count(*) as total_orders
-- from walmart_sales
-- group by delivery_category;

-- RUNNING REVENUE TOTAL
-- WITH monthly_sales AS
-- (
-- SELECT order_month, SUM(sales) AS sales
-- FROM walmart_sales
-- GROUP BY order_month
-- )
-- SELECT order_month, sales, sum(sales)
-- OVER(
-- ORDER BY order_month
-- )
-- AS cumulative_sales
-- FROM monthly_sales;

-- HIGH REVENUE BUT LOW PROFIT PRODUCTS
-- select product_name, sum(sales) as total_sales, sum(profit) as total_profit
-- from walmart_sales
-- group by product_name
-- having
-- sum(sales) >
-- (
-- select avg(sales)
-- from walmart_sales
-- )
-- and sum(profit)<0;

-- DISCOUNT IMPACT ANALYSIS
-- SELECT discount, SUM(sales) AS sales, SUM(profit) AS profit
-- FROM walmart_sales
-- GROUP BY discount
-- ORDER BY discount;

-- CUSTOMER SEGMENT PROFITABILITY RANKING
-- SELECT customer_segment, (SUM(profit)/SUM(sales)*100) AS margin
-- FROM walmart_sales
-- GROUP BY customer_segment
-- ORDER BY margin DESC;

-- REGION CONTRIBUTION PERCENTAGE
-- select region, sum(sales) as total_sales, (sum(sales)/(select sum(sales) from walmart_sales)*100) as region_contribution_percentage
-- from walmart_sales
-- group by region
-- order by total_sales desc;

-- BEST SELLING PRODUCT IN EACH CATEGORY
-- WITH ranked_products AS
-- (
--     SELECT product_category, product_name, (SUM(sales)) AS total_sales,
-- 	ROW_NUMBER() OVER (
--             PARTITION BY product_category
--             ORDER BY SUM(sales) DESC
--         ) AS row_num
--     FROM walmart_sales
--     GROUP BY product_category, product_name
-- )
-- SELECT product_category, product_name, total_sales
-- FROM ranked_products
-- WHERE row_num = 1
-- ORDER BY product_category;






