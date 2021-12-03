
SELECT dbo.fn_OrderCount(1,1996)

GO

SELECT EmployeeID , LastName , dbo.fn_OrderCount(EmployeeID , 1996) AS [1996] , 
                               dbo.fn_OrderCount(EmployeeID , 1997) AS [1997] , 
                               dbo.fn_OrderCount(EmployeeID , 1998) AS [1998] ,
							   dbo.fn_OrderCount(EmployeeID , 0) AS Total 
FROM Employees
ORDER BY 1


