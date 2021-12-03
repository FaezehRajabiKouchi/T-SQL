USE LargeNorthwind

SELECT SUM(Quantity*UnitPrice)
FROM [Order Details]


-- 819 ms

SELECT SUM(dbo.fn_Zarb(Quantity,UnitPrice))
FROM [Order Details]

-- 24000 ms

SELECT SUM(dbo.CLRZarb(Quantity,UnitPrice))
FROM [Order Details]

-- 6704 ms

