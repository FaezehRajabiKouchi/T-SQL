CREATE PROC usp_Test @P1 int , @P2 int , @P3 int OUTPUT
AS
BEGIN
   SET NOCOUNT ON

   SET @P1 = @P1*2
   SET @P2 = @P2*3

   SET @P3 = @P3 + @P2 + @P1

   RETURN 999
END