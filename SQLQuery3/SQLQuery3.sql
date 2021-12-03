SELECT OrderID , EmployeeID , Freight
        FROM Orders
        WHERE CustomerID = N'BOLID' --AND YEAR(OrderDate) = 2017

/*
OrderID	EmployeeID	Freight
10643	6	29.46
10692	4	61.02
10702	4	23.94
*/

SELECT * FROM Orders
WHERE CustomerID = N'ALFKI' AND YEAR(OrderDate) = 2017

SELECT *
FROM [Order Details]
WHERE OrderID IN (10643 , 11078)

