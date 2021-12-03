USE Northwind
GO

CREATE TABLE #T(ProductID int , ProductName nvarchar(50))

INSERT INTO #T
   EXEC ('SELECT ProductID , ProductName FROM Products WHERE CategoryID = 1')

SELECT * FROM #T
