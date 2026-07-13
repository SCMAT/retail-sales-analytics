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
