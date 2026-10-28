
-- 1. Total revenue
SELECT SUM(Quantity * Price) AS Total_Revenue
FROM Sales;

-- 2. Units sold by product
SELECT Product, SUM(Quantity) AS Units_Sold
FROM Sales
GROUP BY Product
ORDER BY Units_Sold DESC;

-- 3. Revenue by product
SELECT Product, SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY Product
ORDER BY Revenue DESC;

-- 4. Revenue by region
SELECT Region, SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY Region
ORDER BY Revenue DESC;

-- 5. Monthly revenue
SELECT MONTH(SaleDate) AS Sales_Month,
       SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY MONTH(SaleDate)
ORDER BY Sales_Month;

-- 6. Revenue by category and product
SELECT Category, Product,
       SUM(Quantity) AS Units_Sold,
       SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY Category, Product
ORDER BY Category, Revenue DESC;

-- 7. Products with revenue above 10000
SELECT Product, SUM(Quantity * Price) AS Revenue
FROM Sales
GROUP BY Product
HAVING SUM(Quantity * Price) > 10000
ORDER BY Revenue DESC;

-- 8. Overall sales summary
SELECT COUNT(*) AS Total_Transactions,
       SUM(Quantity) AS Total_Units_Sold,
       SUM(Quantity * Price) AS Total_Revenue,
       AVG(Quantity * Price) AS Average_Sale_Value
FROM Sales;
