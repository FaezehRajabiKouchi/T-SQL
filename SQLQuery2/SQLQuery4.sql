
DECLARE @Result int = 0

--EXEC usp_Test 5 , 6 , @Result OUTPUT

-- Call by Name:
--EXEC usp_Test @P1=5 , @P2 = 6 , @P3=@Result OUTPUT
--EXEC usp_Test  @P3=@Result OUTPUT , @P1= 5 , @P2 = 6
--EXEC usp_Test @P1=5 , @P3=@Result OUTPUT

EXEC usp_Test  @P3=@Result OUTPUT




SELECT @Result