USE LargeNorthwind
GO


CREATE FUNCTION fn_Zarb(@x int , @y money)
RETURNS MONEY
AS
BEGIN
   RETURN (@x*@y)
END

GO

SELECT dbo.fn_Zarb(5,6)
