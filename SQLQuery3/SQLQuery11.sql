DECLARE @R1 int = 5
DECLARE @R2 int = 6
DECLARE @R3 int = 7

DECLARE @Result int
EXEC @Result = usp_Test @R1 , @R2 , @R3 OUTPUT

SELECT @R1 , @R2 , @R3 , @Result 
