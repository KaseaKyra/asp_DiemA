USE DiemA
GO

-- CHEN GIOI TINH
CREATE PROCEDURE Proc_InsertGender
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM Gender) + 1
	
	INSERT INTO Gender
	VALUES (@Id, @name)
END
GO

EXEC Proc_InsertGender N'Nam'
GO

EXEC Proc_InsertGender N'Nữ'
GO

-- CHEN LOẠI NGƯỜI NGUOIDUNG
CREATE PROCEDURE Proc_InsertTypeHv
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM TypeHv) + 1
	
	INSERT INTO TypeHv
	VALUES (@Id, @name)
END
GO

EXEC Proc_InsertTypeHv N'Người dùng'
GO

EXEC Proc_InsertTypeHv N'Giảng viên'
GO

EXEC Proc_InsertTypeHv N'Học viên'
GO

-- CHEN CẤP ĐỘ KhoaHoc
CREATE PROCEDURE Proc_InsertLevel
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [Level]) + 1
	
	INSERT INTO [Level]
	VALUES (@Id, @name)
END
GO

EXEC Proc_InsertLevel N'N5'
GO

EXEC Proc_InsertLevel N'N4'
GO

EXEC Proc_InsertLevel N'N3'
GO

-- CHEN PHÂN LOẠI DUHOC
CREATE PROCEDURE Proc_InsertLoaiDuHoc
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [PhanLoaiDh]) + 1
	
	INSERT INTO [PhanLoaiDh]
	VALUES (@Id, @name)
END
GO

EXEC Proc_InsertLoaiDuHoc N'Du học tự túc'
GO

EXEC Proc_InsertLoaiDuHoc N'Du học học bổng'
GO

EXEC Proc_InsertLoaiDuHoc N'Kỹ sư'
GO

-- CHEN NGÀNH ĐÀO TẠO NganhDaoTao
CREATE PROCEDURE Proc_InsertNganhDT
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [NganhDaoTao]) + 1
	
	INSERT INTO [NganhDaoTao]
	VALUES (@Id, @name)
END
GO

EXEC Proc_InsertNganhDT N'Đào tạo Nhật ngữ'
GO

EXEC Proc_InsertNganhDT N'Đào tạo kỹ sư'
GO

-- SELECT * FROM TypeHv
-- SELECT * FROM Gender
-- SELECT * FROM [Level]
-- SELECT * FROM [PhanLoaiDh]
-- SELECT * FROM [NganhDaoTao]
-- SELECT * FROM [NguoiDung]
-- SELECT * FROM [GiangVien]

-- CHEN NGUOIDUNG
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
	DECLARE @ID int = (SELECT ISNULL(MAX(Id), 0) From NguoiDung) + 1
-- 	PRINT @ID
-- 
	INSERT INTO NguoiDung
	VALUES(@ID, @name, @dob, @gender, @phone, @email, @pass, @type, @note)
END
GO

EXEC Proc_InsertNguoiDung N'Đinh Thị Cẩm Ly', "2000-08-03", 2, "0964440749", "ly@gmail.com", "c4ca4238a0b923820dcc509a6f75849b", 1, "first user"
GO

EXEC Proc_InsertNguoiDung N'Đinh Thị Cẩm Ly', "2000-08-03", 2, "0964440740", "ly2@gmail.com", "c4ca4238a0b923820dcc509a6f75849b", 1, "first user"
GO

-- CHEN GiangVien
CREATE PROCEDURE Proc_InsertGiangVien
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
	DECLARE @ID int = (SELECT ISNULL(MAX(Id), 0) From GiangVien) + 1
-- 	PRINT @ID
-- 
	INSERT INTO GiangVien
	VALUES(@ID, @name, @dob, @gender, @phone, @email, @pass, @type, @note)
END
GO

EXEC Proc_InsertGiangVien N'Đinh Thị Hải Yến', "1998-04-14", 2, "0395582430", "yen@gmail.com", "c4ca4238a0b923820dcc509a6f75849b", 1, "giảng viên"
GO
-- 
-- EXEC Proc_InsertNguoiDung N'Đinh Thị Cẩm Ly', "2000-08-03", 2, "0964440740", "ly2@gmail.com", "c4ca4238a0b923820dcc509a6f75849b", 1, "first user"
-- GO

-- BẢNG KHÓA HỌC
CREATE PROCEDURE Proc_InsertKhoaHoc
@name NVARCHAR(255),
@level INT,
@teacher INT,
@HocPhi FLOAT,
@NgayBatDau DATE,
@note NVARCHAR(255)
AS
BEGIN
	DECLARE @ID int = (SELECT ISNULL(MAX(Id), 0) From KhoaHoc) + 1
	
	INSERT INTO KhoaHoc
	VALUES(@ID, @name, @level, @teacher, @HocPhi, @NgayBatDau, @note)
END
GO

EXEC Proc_InsertKhoaHoc N'Làm quen với tiếng Nhật', 1, 1, 0, "2019-01-01", N'miễn phí'
GO

-- BẢNG BÀI HỌC
CREATE PROCEDURE Proc_InsertBaiHoc
@name NVARCHAR(255),
@KhoaHocId INT,
@Link VARCHAR(255),
@GhiChu NVARCHAR(255)
AS
BEGIN
	DECLARE @ID int = (SELECT ISNULL(MAX(Id), 0) From BaiHoc) + 1
	
	INSERT INTO BaiHoc
	VALUES(@ID, @name, @KhoaHocId, @Link, @Ghichu)
END
GO

EXEC Proc_InsertBaiHoc N'Giới thiệu về khóa học', 1, "e-ORhEE9VVg", N'Làm quen với tiếng Nhật'
GO

-- BẢNG TRƯỜNG HỌC ĐỂ ĐI DU HỌC
CREATE PROCEDURE Proc_InsertTruongHoc
@name NVARCHAR(255),
@Address NVARCHAR(255),
@Website NVARCHAR(255),
@ThongTinChiTiet NVARCHAR(255),
@ThongTinCoBan NVARCHAR(255),
@GiaTien FLOAT,
@NganhDaoTao INT
AS
BEGIN
	DECLARE @ID int = (SELECT ISNULL(MAX(Id), 0) From Truong) + 1
	
	INSERT INTO Truong 
	VALUES(@ID, @name, @Address, @Website, @ThongTinChiTiet, @ThongTinCoBan, @GiaTien, @NganhDaoTao)
END
GO

EXEC Proc_InsertTruongHoc N'Trường Nhật ngữ Kyosin', N'3-9-15, Kozojicho-kita, Kasugai city, Aichi 487-0016', N'https://www.kla.ac/', 
N'Thông tin chi tiết', N'thông tin cơ bản', 7000000, 1
GO