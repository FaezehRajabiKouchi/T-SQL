
DECLARE @T TABLE(ProductID int , ProductName nvarchar(50) , CategoryID int , UnitPrice MONEY)

--INSERT INTO @T
--   EXEC usp_ProductList 1

INSERT INTO @T
   EXEC ('SELECT ProductID , ProductName , CategoryID , UnitPrice
          FROM Products
	     WHERE CategoryID= 1'
		)



SELECT SUM(UnitPrice) FROM @T
