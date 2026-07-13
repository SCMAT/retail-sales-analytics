SELECT *
FROM superstore;
SELECT COUNT(*) AS Total_Records
FROM superstore;
SELECT COUNT(*)
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'superstore';
SELECT SUM(Sales) AS Total_Sales
FROM superstore;
SELECT SUM(TRY_CONVERT(decimal(18,2), Sales)) AS Total_Sales
FROM dbo.Superstore;
SELECT SUM(TRY_CONVERT(decimal(18,2), Profit)) AS Total_Profit
FROM superstore;
SELECT SUM(TRY_CONVERT(decimal(18,2), Quantity)) AS Total_Quantity
FROM superstore;
SELECT DISTINCT Region
FROM superstore;

SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    Region,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT
    Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
    Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;
SELECT TOP 10
    Sub_Category,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Sales DESC;
SELECT TOP 10
    Sub_Category,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM superstore
GROUP BY Sub_Category
ORDER BY Total_Profit ASC;
SELECT
    Discount,
    ROUND(AVG(Profit),2) AS Avg_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;
SELECT
    Segment,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;
