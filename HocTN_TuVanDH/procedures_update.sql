USE DiemA
GO

-- SUA LOẠI NGƯỜI NGUOIDUNG
CREATE PROCEDURE Proc_UpdateTypeHv 
@Id INT, 
@name NVARCHAR(255) 
AS
BEGIN
	UPDATE TypeHv
	SET Name = @name
	WHERE Id = @Id	
END
GO

-- EXEC Proc_UpdateTypeHv 5, N'quản lý cao cấp'
-- GO