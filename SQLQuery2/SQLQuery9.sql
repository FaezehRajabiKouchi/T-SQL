ALTER PROC usp_InsertEmployee2 @FirstName nvarchar(10) , @LastName nvarchar(20)
AS
BEGIN
    SET NOCOUNT ON
	SET XACT_ABORT ON

	INSERT INTO Employees(FirstName , LastName)
	   VALUES (@FirstName , @LastName)

    SELECT SCOPE_IDENTITY() AS EmployeeID
END

GO

DECLARE @T TABLE (EmpId int)

INSERT INTO @T 
    EXEC usp_InsertEmployee2 N'Maryam' , N'Javadi'

DECLARE @EmployeeID int
SELECT @EmployeeID = EmpID FROM @T

SELECT @EmployeeID AS 'My EmployeeID'