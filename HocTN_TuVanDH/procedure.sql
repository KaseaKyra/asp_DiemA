USE HocTN
GO

CREATE PROCEDURE Proc_InsertNguoiDung
@name nvarchar(255),
@dob DATE,
@gender INT,
@phone VARCHAR(11),
@email VARCHAR(255),
@pass VARCHAR(255),
@type INT,
@note nvarchar(255)
as
BEGIN
	INSERT INTO NguoiDung
	VALUES(@name, @dob, @gender, @phone, @email, @pass, @type, @note)
END
GO