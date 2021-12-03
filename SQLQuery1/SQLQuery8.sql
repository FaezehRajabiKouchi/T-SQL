USE Northwind
GO

ALTER FUNCTION fn_OrderCount(@EmployeeID int , @Year int)
RETURNS int
AS
BEGIN
  
  DECLARE @Retval int
  SELECT @Retval = COUNT(OrderID)
     FROM Orders
	 WHERE EmployeeID = @EmployeeID AND (YEAR(OrderDate) = @Year OR @Year = 0)

  RETURN @Retval
END

GO
