SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW MyView AS
SELECT st.Name AS Territory, sp.BusinessEntityID
FROM Sales.SalesTerritory AS st INNER JOIN Sales.SalesPerson AS sp
ON st.TerritoryID = sp.TerritoryID 
GO
