
-- AVERAGE ORDER VALUE 
SELECT ROUND(SUM(TotalPrice)/COUNT(OrderID),2) AS Average_Order_Value 
FROM decodelabs_product_and_sales_analysis; 

-- TOTAL ORDERS, DISTINCT CUSTOMERS AND  AVERAGE ORDER PER CUSTOMER 
SELECT
COUNT(OrderID) AS Total_Orders,
COUNT(DISTINCT CustomerID) AS Distinct_Customers,
ROUND(COUNT(OrderID) / COUNT(DISTINCT CustomerID),2) AS Avg_Orders_Per_Customer
FROM decodelabs_product_and_sales_analysis;

-- TOTAL REVENUE 
SELECT ROUND(SUM(TotalPrice),2) Total_Revenue 
FROM decodelabs_product_and_sales_analysis;

--  YEARLY REVENUE 
SELECT YEAR(`Date`) as `Year`, 
ROUND(SUM(TotalPrice),2) AS Annual_Revenue
FROM decodelabs_product_and_sales_analysis
GROUP BY `Year`; 
 
-- TOTAL QUANTITY PURCHASED 
 SELECT SUM(Quantity) AS Total_Units_Sold 
 FROM decodelabs_product_and_sales_analysis;
 
 --  REVENUE BY PRODUCT 
 SELECT Product, 
 ROUND(SUM(TotalPrice),2) AS Revenue
 FROM decodelabs_product_and_sales_analysis
 GROUP BY Product 
 ORDER BY Revenue DESC;
 
 -- REVENUE BY REFERRAL SOURCE
 SeLECT ReferralSource, 
 COUNT(OrderID) AS Total,
 ROUND(SUM(TotalPrice),2) AS Revenue
 FROM decodelabs_product_and_sales_analysis
 GROUP BY ReferralSource 
 ORDER BY REVENUE DESC;
 
 -- MONTHLY REVENUE TREND 
SELECT
YEAR(`Date`) AS Order_Year,
MONTH(`Date`) AS Order_Month,
ROUND(SUM(TotalPrice),2) AS Total_Revenue
FROM decodelabs_product_and_sales_analysis
GROUP BY YEAR(`Date`), MONTH(`Date`)
ORDER BY Order_Year, Order_Month;
 
 -- ORDER OUTCOME VALUE 
SELECT OrderStatus,
 COUNT(OrderID) AS TOTAL ,
 ROUND(SUM(TotalPrice),2) AS Revenue
 FROM decodelabs_product_and_sales_analysis
 GROUP BY OrderStatus
 ORDER BY Revenue DESC;
 
 -- REVENUE BY PAYMENT METHOD
 SELECT PaymentMethod,
 COUNT(OrderID) AS TOTAL ,
 ROUND(SUM(TotalPrice),2) AS Revenue
 FROM decodelabs_product_and_sales_analysis
 GROUP BY PaymentMethod
 ORDER BY Revenue DESC;
 
 -- PRODUCT FULFILLMENT 
 SELECT Product, OrderStatus, count(OrderID) Total 
 FROM decodelabs_product_and_sales_analysis
 GROUP BY product, OrderStatus
 ORDER BY product, Total DESC;
 
SELECT* FROM decodelabs_product_and_sales_analysis;

