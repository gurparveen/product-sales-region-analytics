-- Total Sales

	SELECT SUM(TotalPrice) As TotalSales
	from ProductSalesRegion


-- Total Profit

	SELECT SUM(Profit) AS TotalProfit
	FROM vw_Profit


-- Profit Margin

	SELECT 
	CONCAT(ROUND(SUM(v.Profit) * 100.0 / SUM(t.TotalPrice),2),'%') 	AS ProfitMargin
	FROM vw_Profit v
	JOIN ProductSalesRegion t
	ON v.OrderID = t.OrderID


-- Total Orders

	SELECT count(OrderID)
	FROM ProductSalesRegion


-- Return Rate

	SELECT
	CONCAT(CAST(AVG(Returned * 1.0) * 100 AS DECIMAL(10,2)),'%') AS 	ReturnRate
	FROM ProductSalesRegion


-- Average Order Value

	SELECT 
	CAST(SUM(TotalPrice) * 1.0 / COUNT(OrderID) AS DECIMAL(10,2)) 
	FROM ProductSalesRegion


-- Monthly Trend for Sales

	SELECT
	MONTH(OrderDate) AS Month,
	SUM(TotalPrice) AS MonthlySales
	FROM ProductSalesRegion
	GROUP BY MONTH(OrderDate)
	ORDER BY Month


-- Monthly Trend for Profit

	SELECT 
	MONTH(t.OrderDate) AS Month,
	SUM(v.Profit) AS MonthlyProfit
	FROM vw_Profit v
	JOIN ProductSalesRegion t
	ON v.OrderID = t.OrderID
	GROUP BY MONTH(OrderDate)
	ORDER BY Month

-- Top 5 Product by Profit

	SELECT TOP 5 t.Product,
	SUM(v.Profit) AS Profit
	FROM vw_Profit v
	JOIN ProductSalesRegion t
	ON v.OrderID = t.OrderID
	GROUP BY t.Product
	ORDER BY Profit Desc

-- Sales by Salesperson

	SELECT Salesperson,
	SUM(TotalPrice) AS Sales
	FROM 
	ProductSalesRegion
	GROUP BY Salesperson
	ORDER BY Sales DESC

-- Sales by Customer Type

	SELECT CustomerType,
	SUM(TotalPrice) AS Sales
	FROM 
	ProductSalesRegion
	GROUP BY CustomerType
	ORDER BY Sales DESC

