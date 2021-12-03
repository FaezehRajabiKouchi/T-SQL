ALTER PROC usp_InsertEmployee @FirstName nvarchar(10) , @LastName nvarchar(20) , @EmployeeID int OUTPUT
AS
BEGIN
    SET NOCOUNT ON
	SET XACT_ABORT OFF
	BEGIN TRY
	   BEGIN TRAN

	   INSERT INTO Employees(FirstName , LastName)
	      VALUES (@FirstName , @LastName)
    
	
	   SET @EmployeeID = SCOPE_IDENTITY()
	   COMMIT TRAN
    END TRY
	BEGIN CATCH
	    IF ERROR_MESSAGE() LIKE N'%IX_EmpName%'
		    RAISERROR('کارمند تکراری است',16,1)
        ELSE
           BEGIN
		      DECLARE @ErrMsg nvarchar(1000)
		      SET @ErrMsg = ERROR_MESSAGE() + CHAR(13) + CHAR(10) + N'لطفا با مدیر سیستم تماس بگیرید'
		      RAISERROR(@ErrMsg,16,1)
           END
		   ROLLBACK TRAN
	END CATCH
	
END

GO