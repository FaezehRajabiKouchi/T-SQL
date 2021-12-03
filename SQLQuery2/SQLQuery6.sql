CREATE PROC usp_InsertEmployee @FirstName nvarchar(10) , @LastName nvarchar(20) , @EmployeeID int OUTPUT
AS
BEGIN
    SET NOCOUNT ON

	INSERT INTO Employees(FirstName , LastName)
	   VALUES (@FirstName , @LastName)

    SET @EmployeeID = SCOPE_IDENTITY()
END

GO

-----------------------------
DECLARE @EmpID int
EXEC usp_InsertEmployee N'Alireza' , N'Alizadeh' , @EmpID OUTPUT
SELECT @EmpID AS EmployeeID
