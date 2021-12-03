CREATE PROCEDURE usp_Payment @CustomerID nchar(5) , @PaymentDate DateTime , @Amount MONEY , @Result nvarchar(100) OUTPUT
AS
/*
DECLARE @CustomerID nchar(5) = N'ALFKI'
DECLARE @PaymentDate DateTime = GetDate()
DECLARE @Amount MONEY = 2000.00
DECLARE @Result nvarchar(100)
*/

-- Parameter Validations:

IF NOT EXISTS (Select * FROM Customers WHERE CustomerID = @CustomerID)
   BEGIN
      RAISERROR('کد مشتری غلط است',16,1)
	  RETURN
   END

IF @PaymentDate > GetDate()
   BEGIN
      RAISERROR('تاریخ پرداخت معتبر نیست',16,1)
	  RETURN
   END

IF @Amount <= 0
   BEGIN
      RAISERROR('مبلغ پرداختی غلط است',16,1)
	  RETURN
   END

SET XACT_ABORT ON
BEGIN TRAN

DECLARE @Bestankari MONEY
SELECT @Bestankari = Bestankari FROM Customers WHERE CustomerID=@CustomerID  -- بستانکاری قبلی مشتری

DECLARE @TotalAmount MONEY = @Amount+@Bestankari

DECLARE Ords CURSOR
			FOR SELECT O.OrderID , CONVERT(MONEY ,SUM(OD.Quantity*OD.UnitPrice*(1-OD.Discount))) AS OrderPrice , O.PaidAmount
			    FROM Orders O INNER JOIN [Order Details] OD
			       ON O.OrderID = OD.OrderID
			    WHERE O.CustomerID = @CustomerID
			    GROUP BY O.OrderID , O.PaidAmount
			    HAVING O.PaidAmount < CONVERT(MONEY ,SUM(OD.Quantity*OD.UnitPrice*(1-OD.Discount)))
			    ORDER BY O.OrderID
           FOR READ ONLY;

DECLARE @OrderID int , @OrderPrice MONEY , @PaidAmount MONEY
DECLARE @Mandeh MONEY -- مانده بدهی فاکتور

OPEN Ords
FETCH NEXT FROM Ords INTO @OrderID  , @OrderPrice  , @PaidAmount 

WHILE @@FETCH_STATUS <> -1 AND @TotalAmount > 0
   BEGIN
     SET @Mandeh = @OrderPrice - @PaidAmount  

	 IF @TotalAmount >= @Mandeh   
	   BEGIN
	      -- پول کافی برای تسویه این فاکتور داریم
		  UPDATE Orders
		     SET PaidAmount = PaidAmount + @Mandeh   -- فاکتور تسویه می شود
			 WHERE OrderID = @OrderID

        SET @TotalAmount = @TotalAmount - @Mandeh
	  END
    ELSE
	   BEGIN
	      -- پول کافی برای تسویه این فاکتور نداریم
		  UPDATE Orders
		     SET PaidAmount = PaidAmount + @TotalAmount   -- هر چقدر پول باقیمانده است به این فاکتور تخصیص بده
			 WHERE OrderID = @OrderID

         SET @TotalAmount = 0  -- پول تمام شد
	   END

	  FETCH NEXT FROM Ords INTO @OrderID  , @OrderPrice  , @PaidAmount 
   END

   -- نتیجه پردازش را ذخیره کن
  IF @@FETCH_STATUS = -1 
     IF @TotalAmount > 0
           SET @Result = 'همه فاکتورهای مشتری مشتری تسویه شدند و مشتری بستانکار گردید'
     ELSE
	       SET @Result = 'همه فاکتورهای مشتری مشتری تسویه شدند '
  ELSE
      SET @Result = 'همه فاکتورهای مشتری مشتری تسویه نشدند '   

UPDATE Customers
   SET Bestankari = @TotalAmount   -- بستانکاری فعلی مشتری
   WHERE CustomerID = @CustomerID

CLOSE Ords
DEALLOCATE Ords

INSERT INTO Payments (CustomerID , PaymentDate , Amount , Result)
   VALUES (@CustomerID , @PaymentDate , @Amount , @Result)

COMMIT TRAN



