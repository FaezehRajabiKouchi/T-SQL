SET NOCOUNT ON

DECLARE @CustomerID nchar(5) = N'BOLID'

DECLARE Ords SCROLL CURSOR
    FOR SELECT OrderID , EmployeeID , Freight
        FROM Orders
        WHERE CustomerID = @CustomerID 
		ORDER BY OrderID
   FOR READ ONLY;

OPEN Ords

DECLARE @OrderID INT , 
        @EmployeeID int, 
		@Freight MONEY;

DECLARE @NewOrderID int;

FETCH LAST FROM Ords INTO @OrderID  , @EmployeeID , @Freight;

WHILE @@FETCH_STATUS <> -1
   BEGIN
      IF @@FETCH_STATUS = -2
	      BEGIN
		     FETCH PRIOR FROM Ords INTO @OrderID  , @EmployeeID , @Freight;
			 CONTINUE;
		  END

      INSERT INTO Orders (OrderDate , EmployeeID , CustomerID , Freight)
	     VALUES ('2017-01-01' , @EmployeeID , @CustomerID , @Freight)

      SET @NewOrderID = SCOPE_IDENTITY();

      -- ردیف های فاکتور با شماره قبلی برای شماره فاکتور جدید دوباره درج شوند

	  INSERT INTO [Order Details] 
	     SELECT @NewOrderID , ProductID , UnitPrice , Quantity , Discount
		 FROM [Order Details]
		 WHERE OrderID = @OrderID

      FETCH PRIOR FROM Ords INTO @OrderID  , @EmployeeID , @Freight;
   END

   CLOSE Ords
   DEALLOCATE ORds



