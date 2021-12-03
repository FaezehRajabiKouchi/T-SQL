ALTER TABLE Orders
   ADD PaidAmount MONEY NOT NULL DEFAULT (0);

GO

ALTER TABLE Customers
   ADD Bestankari MONEY NOT NULL DEFAULT (0);

GO

SELECT O.OrderID , CONVERT(MONEY ,SUM(OD.Quantity*OD.UnitPrice*(1-OD.Discount))) AS OrderPrice , O.PaidAmount
			    FROM Orders O INNER JOIN [Order Details] OD
			       ON O.OrderID = OD.OrderID
			    WHERE O.CustomerID =N'ALFKI'
			    GROUP BY O.OrderID , O.PaidAmount
			    ORDER BY O.OrderID
GO


SELECT * FROM Payments


CREATE TABLE Payments (PaymentId int NOT NULL IDENTITY PRIMARY KEY ,
                       CustomerID nchar(5) NOT NULL ,
					   PaymentDate DateTime NOT NULL ,
					   Amount MONEY NOT NULL ,
					   Result nvarchar(100) NOT NULL
                      );

UPDATE Orders
   SET PaidAmount = 0
   WHERE CustomerID = N'ALFKI'

TRUNCATE TABLE Payments


UPDATE Customers
   SET Bestankari = 0
   WHERE CustomerID = N'ALFKI'



