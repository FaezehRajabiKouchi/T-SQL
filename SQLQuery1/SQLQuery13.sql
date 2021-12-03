SELECT dbo.CLRZarb(5,6)

GO

EXEC sp_Configure 'clr enabled' , 1
GO

RECONFIGURE
GO

