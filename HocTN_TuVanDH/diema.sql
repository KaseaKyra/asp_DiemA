/*
 Navicat Premium Data Transfer

 Source Server         : sql server
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : DESKTOP-T0EMI63\SQLEXPRESS:1433
 Source Catalog        : DiemA
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 28/05/2019 11:35:51
*/


-- ----------------------------
-- Table structure for BaiHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[BaiHoc]') AND type IN ('U'))
	DROP TABLE [dbo].[BaiHoc]
GO

CREATE TABLE [dbo].[BaiHoc] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL,
  [KhoaHocId] int  NULL,
  [Link] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [Ghichu] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[BaiHoc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of BaiHoc
-- ----------------------------
INSERT INTO [dbo].[BaiHoc] VALUES (N'1', N'Giới thiệu về khóa học', N'1', N'e-ORhEE9VVg', N'Làm quen với tiếng Nhật')
GO


-- ----------------------------
-- Table structure for DuHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DuHoc]') AND type IN ('U'))
	DROP TABLE [dbo].[DuHoc]
GO

CREATE TABLE [dbo].[DuHoc] (
  [Id] int  NOT NULL,
  [SchoolId] int  NULL,
  [PhanLoaiDh] int DEFAULT ((1)) NULL,
  [GhiChu] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[DuHoc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Table structure for Gender
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Gender]') AND type IN ('U'))
	DROP TABLE [dbo].[Gender]
GO

CREATE TABLE [dbo].[Gender] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Gender] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Gender
-- ----------------------------
INSERT INTO [dbo].[Gender] VALUES (N'1', N'Nam')
GO

INSERT INTO [dbo].[Gender] VALUES (N'2', N'Nữ')
GO

INSERT INTO [dbo].[Gender] VALUES (N'3', N'Người dùng')
GO

INSERT INTO [dbo].[Gender] VALUES (N'4', N'Giảng viên')
GO

INSERT INTO [dbo].[Gender] VALUES (N'5', N'Học viên')
GO


-- ----------------------------
-- Table structure for GiangVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GiangVien]') AND type IN ('U'))
	DROP TABLE [dbo].[GiangVien]
GO

CREATE TABLE [dbo].[GiangVien] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL,
  [DateOfBirth] date  NOT NULL,
  [Gender] int DEFAULT ((1)) NOT NULL,
  [Phone] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TypeHv] int DEFAULT ((2)) NOT NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[GiangVien] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of GiangVien
-- ----------------------------
INSERT INTO [dbo].[GiangVien] VALUES (N'1', N'Đinh Thị Hải Yến', N'1998-04-14', N'2', N'0395582430', N'yen@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'1', N'giảng viên')
GO


-- ----------------------------
-- Table structure for KhoaHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[KhoaHoc]') AND type IN ('U'))
	DROP TABLE [dbo].[KhoaHoc]
GO

CREATE TABLE [dbo].[KhoaHoc] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL,
  [Level] int DEFAULT ((1)) NOT NULL,
  [GiangVien] int  NOT NULL,
  [HocPhi] float(53) DEFAULT ((0)) NOT NULL,
  [NgayBatDau] date  NULL,
  [Ghichu] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[KhoaHoc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of KhoaHoc
-- ----------------------------
INSERT INTO [dbo].[KhoaHoc] VALUES (N'1', N'Làm quen với tiếng Nhật', N'1', N'1', N'0', N'2019-01-01', N'miễn phí')
GO


-- ----------------------------
-- Table structure for Level
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Level]') AND type IN ('U'))
	DROP TABLE [dbo].[Level]
GO

CREATE TABLE [dbo].[Level] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL
)
GO

ALTER TABLE [dbo].[Level] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Level
-- ----------------------------
INSERT INTO [dbo].[Level] VALUES (N'1', N'N5')
GO

INSERT INTO [dbo].[Level] VALUES (N'2', N'N4')
GO

INSERT INTO [dbo].[Level] VALUES (N'3', N'N3')
GO


-- ----------------------------
-- Table structure for NganhDaoTao
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NganhDaoTao]') AND type IN ('U'))
	DROP TABLE [dbo].[NganhDaoTao]
GO

CREATE TABLE [dbo].[NganhDaoTao] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL
)
GO

ALTER TABLE [dbo].[NganhDaoTao] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NganhDaoTao
-- ----------------------------
INSERT INTO [dbo].[NganhDaoTao] VALUES (N'1', N'Đào tạo Nhật ngữ')
GO

INSERT INTO [dbo].[NganhDaoTao] VALUES (N'2', N'Đào tạo kỹ sư')
GO


-- ----------------------------
-- Table structure for NguoiDung
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NguoiDung]') AND type IN ('U'))
	DROP TABLE [dbo].[NguoiDung]
GO

CREATE TABLE [dbo].[NguoiDung] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL,
  [DateOfBirth] date  NOT NULL,
  [Gender] int DEFAULT ((1)) NOT NULL,
  [Phone] varchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TypeHv] int DEFAULT ((1)) NOT NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[NguoiDung] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NguoiDung
-- ----------------------------
INSERT INTO [dbo].[NguoiDung] VALUES (N'1', N'Đinh Thị Cẩm Ly', N'2000-08-03', N'2', N'0964440749', N'ly@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'1', N'first user')
GO

INSERT INTO [dbo].[NguoiDung] VALUES (N'2', N'Đinh Thị Cẩm Ly', N'2000-08-03', N'2', N'0964440740', N'ly2@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'1', N'first user')
GO

INSERT INTO [dbo].[NguoiDung] VALUES (N'3', N'nguyễn văn thắng', N'1960-01-01', N'1', N'1', N't@gmail.com', N'c4ca4238a0b923820dcc509a6f75849b', N'1', N'người dùng')
GO


-- ----------------------------
-- Table structure for PhanLoaiDh
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[PhanLoaiDh]') AND type IN ('U'))
	DROP TABLE [dbo].[PhanLoaiDh]
GO

CREATE TABLE [dbo].[PhanLoaiDh] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL
)
GO

ALTER TABLE [dbo].[PhanLoaiDh] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of PhanLoaiDh
-- ----------------------------
INSERT INTO [dbo].[PhanLoaiDh] VALUES (N'1', N'Du học tự túc')
GO

INSERT INTO [dbo].[PhanLoaiDh] VALUES (N'2', N'Du học học bổng')
GO

INSERT INTO [dbo].[PhanLoaiDh] VALUES (N'3', N'Kỹ sư')
GO


-- ----------------------------
-- Table structure for Truong
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Truong]') AND type IN ('U'))
	DROP TABLE [dbo].[Truong]
GO

CREATE TABLE [dbo].[Truong] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NOT NULL,
  [Address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [Website] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL,
  [ThongTinChiTiet] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [ThongTinCoBan] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GiaTien] float(53) DEFAULT ((0)) NULL,
  [NganhDaoTao] int DEFAULT ((1)) NULL
)
GO

ALTER TABLE [dbo].[Truong] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Truong
-- ----------------------------
INSERT INTO [dbo].[Truong] VALUES (N'1', N'Trường Nhật ngữ Kyosin', N'3-9-15, Kozojicho-kita, Kasugai city, Aichi 487-0016', N'https://www.kla.ac/', N'Thông tin chi tiết', N'thông tin cơ bản', N'7000000', N'1')
GO


-- ----------------------------
-- Table structure for TypeHv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[TypeHv]') AND type IN ('U'))
	DROP TABLE [dbo].[TypeHv]
GO

CREATE TABLE [dbo].[TypeHv] (
  [Id] int  NOT NULL,
  [Name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[TypeHv] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of TypeHv
-- ----------------------------
INSERT INTO [dbo].[TypeHv] VALUES (N'1', N'Người dùng fjfdjfj')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'2', N'Giảng viên')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'3', N'Học viên')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'4', N'giám đốc')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'5', N'quản lý')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'6', N'Người dùng fjfdjfjbhhhkjkl')
GO


-- ----------------------------
-- Procedure structure for Proc_InsertLevel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertLevel]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertLevel]
GO

CREATE PROCEDURE [dbo].[Proc_InsertLevel]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [Level]) + 1
	
	INSERT INTO [Level]
	VALUES (@Id, @name)
END
GO


-- ----------------------------
-- Procedure structure for Proc_InsertLoaiDuHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertLoaiDuHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertLoaiDuHoc]
GO

CREATE PROCEDURE [dbo].[Proc_InsertLoaiDuHoc]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [PhanLoaiDh]) + 1
	
	INSERT INTO [PhanLoaiDh]
	VALUES (@Id, @name)
END
GO


-- ----------------------------
-- Procedure structure for Proc_InsertNganhDT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertNganhDT]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertNganhDT]
GO

CREATE PROCEDURE [dbo].[Proc_InsertNganhDT]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM [NganhDaoTao]) + 1
	
	INSERT INTO [NganhDaoTao]
	VALUES (@Id, @name)
END
GO


-- ----------------------------
-- Procedure structure for Proc_InsertNguoiDung
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertNguoiDung]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertNguoiDung]
GO

CREATE PROCEDURE [dbo].[Proc_InsertNguoiDung]
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


-- ----------------------------
-- Procedure structure for Proc_InsertGiangVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertGiangVien]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertGiangVien]
GO

CREATE PROCEDURE [dbo].[Proc_InsertGiangVien]
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


-- ----------------------------
-- Procedure structure for Proc_InsertKhoaHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertKhoaHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertKhoaHoc]
GO

CREATE PROCEDURE [dbo].[Proc_InsertKhoaHoc]
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


-- ----------------------------
-- Procedure structure for Proc_InsertBaiHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertBaiHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertBaiHoc]
GO

CREATE PROCEDURE [dbo].[Proc_InsertBaiHoc]
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


-- ----------------------------
-- Procedure structure for Proc_InsertTruongHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertTruongHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertTruongHoc]
GO

CREATE PROCEDURE [dbo].[Proc_InsertTruongHoc]
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


-- ----------------------------
-- Procedure structure for Pro_DemSoNguoiDung
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_DemSoNguoiDung]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_DemSoNguoiDung]
GO

CREATE PROCEDURE [dbo].[Pro_DemSoNguoiDung]
AS
BEGIN
SELECT COUNT(Id) AS N'Tống người dùng' FROM NguoiDung
END
GO


-- ----------------------------
-- Procedure structure for Pro_DemSoGiangVien
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_DemSoGiangVien]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_DemSoGiangVien]
GO

CREATE PROCEDURE [dbo].[Pro_DemSoGiangVien]
AS
BEGIN
SELECT COUNT(Id) AS N'Tống giảng viên' FROM GiangVien
END
GO


-- ----------------------------
-- Procedure structure for Pro_DemSoKhoaHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_DemSoKhoaHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_DemSoKhoaHoc]
GO

CREATE PROCEDURE [dbo].[Pro_DemSoKhoaHoc]
AS
BEGIN
SELECT COUNT(Id) AS N'Tống khóa học' FROM KhoaHoc
END
GO


-- ----------------------------
-- Procedure structure for Pro_DemSoBaiHoc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_DemSoBaiHoc]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_DemSoBaiHoc]
GO

CREATE PROCEDURE [dbo].[Pro_DemSoBaiHoc]
AS
BEGIN
SELECT COUNT(Id) AS N'Tống bài học' FROM BaiHoc
END
GO


-- ----------------------------
-- Procedure structure for Pro_CountTypeHv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_CountTypeHv]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_CountTypeHv]
GO

CREATE PROCEDURE [dbo].[Pro_CountTypeHv]
AS
BEGIN
SELECT COUNT(Id) FROM TypeHv
END
GO


-- ----------------------------
-- Procedure structure for Pro_GetListTypeHv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Pro_GetListTypeHv]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Pro_GetListTypeHv]
GO

CREATE PROCEDURE [dbo].[Pro_GetListTypeHv]
AS
BEGIN
SELECT * FROM TypeHv
END
GO


-- ----------------------------
-- Procedure structure for Proc_GetTypeHvById
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_GetTypeHvById]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_GetTypeHvById]
GO

CREATE PROCEDURE [dbo].[Proc_GetTypeHvById]
@Id INT
AS
BEGIN
SELECT Name FROM TypeHv WHERE Id = @Id
END
GO


-- ----------------------------
-- Procedure structure for Proc_UpdateTypeHv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_UpdateTypeHv]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_UpdateTypeHv]
GO

CREATE PROCEDURE [dbo].[Proc_UpdateTypeHv] @Id INT, 
@name NVARCHAR(255) 
AS
BEGIN
	UPDATE TypeHv
	SET Name = @name
	WHERE Id = @Id	
END
GO


-- ----------------------------
-- Procedure structure for Proc_GetNguoiDungWhenLogin
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_GetNguoiDungWhenLogin]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_GetNguoiDungWhenLogin]
GO

CREATE PROCEDURE [dbo].[Proc_GetNguoiDungWhenLogin]
@Email VARCHAR(255)
AS
BEGIN
SELECT * FROM GiangVien 
WHERE Email = @Email OR Password = @Email
END
GO


-- ----------------------------
-- Procedure structure for Proc_GetCourseWhenSearch
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_GetCourseWhenSearch]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_GetCourseWhenSearch]
GO

CREATE PROCEDURE [dbo].[Proc_GetCourseWhenSearch] 
@Name VARCHAR(255)
AS
BEGIN
-- 	DECLARE @course NVARCHAR(255) =  
	
	SELECT * FROM KhoaHoc 
	WHERE Name LIKE N'%' + @Name + '%'
END
GO


-- ----------------------------
-- Procedure structure for Proc_InsertGender
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertGender]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertGender]
GO

CREATE PROCEDURE [dbo].[Proc_InsertGender]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM Gender) + 1
	
	INSERT INTO Gender
	VALUES (@Id, @name)
END
GO


-- ----------------------------
-- Procedure structure for Proc_InsertTypeHv
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertTypeHv]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertTypeHv]
GO

CREATE PROCEDURE [dbo].[Proc_InsertTypeHv]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @Id int = (SELECT ISNULL(MAX(Id), 0) FROM TypeHv) + 1
	
	INSERT INTO TypeHv
	VALUES (@Id, @name)
END
GO


-- ----------------------------
-- Primary Key structure for table BaiHoc
-- ----------------------------
ALTER TABLE [dbo].[BaiHoc] ADD CONSTRAINT [PK__BaiHoc__3214EC0749AB3853] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DuHoc
-- ----------------------------
ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [PK__DuHoc__3214EC07DBC88FA7] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Gender
-- ----------------------------
ALTER TABLE [dbo].[Gender] ADD CONSTRAINT [PK__Gender__3214EC07DF97BE01] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [UQ__GiangVie__5C7E359EBE39D226] UNIQUE NONCLUSTERED ([Phone] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [UQ__GiangVie__A9D10534A5DF3D28] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [PK__GiangVie__3214EC077F25B64A] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table KhoaHoc
-- ----------------------------
ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [PK__KhoaHoc__3214EC07C26CB870] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Level
-- ----------------------------
ALTER TABLE [dbo].[Level] ADD CONSTRAINT [PK__Level__3214EC07E249C912] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NganhDaoTao
-- ----------------------------
ALTER TABLE [dbo].[NganhDaoTao] ADD CONSTRAINT [PK__NganhDao__3214EC07372CB3D9] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [UQ__NguoiDun__5C7E359E14D19DA1] UNIQUE NONCLUSTERED ([Phone] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [UQ__NguoiDun__A9D10534FBEF6C3F] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [PK__NguoiDun__3214EC07F29881A4] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PhanLoaiDh
-- ----------------------------
ALTER TABLE [dbo].[PhanLoaiDh] ADD CONSTRAINT [PK__PhanLoai__3214EC0707799271] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Truong
-- ----------------------------
ALTER TABLE [dbo].[Truong] ADD CONSTRAINT [PK__Truong__3214EC07FBBAF9E7] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TypeHv
-- ----------------------------
ALTER TABLE [dbo].[TypeHv] ADD CONSTRAINT [PK__TypeHv__3214EC07EB9F17EE] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table BaiHoc
-- ----------------------------
ALTER TABLE [dbo].[BaiHoc] ADD CONSTRAINT [FK__BaiHoc__KhoaHocI__6B24EA82] FOREIGN KEY ([KhoaHocId]) REFERENCES [dbo].[KhoaHoc] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DuHoc
-- ----------------------------
ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [FK__DuHoc__SchoolId__7C4F7684] FOREIGN KEY ([SchoolId]) REFERENCES [dbo].[Truong] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [FK__DuHoc__PhanLoaiD__7D439ABD] FOREIGN KEY ([PhanLoaiDh]) REFERENCES [dbo].[PhanLoaiDh] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [FK__GiangVien__TypeH__5CD6CB2B] FOREIGN KEY ([TypeHv]) REFERENCES [dbo].[TypeHv] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [FK__GiangVien__Gende__5DCAEF64] FOREIGN KEY ([Gender]) REFERENCES [dbo].[Gender] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table KhoaHoc
-- ----------------------------
ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [FK__KhoaHoc__Level__66603565] FOREIGN KEY ([Level]) REFERENCES [dbo].[Level] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [FK__KhoaHoc__GiangVi__6754599E] FOREIGN KEY ([GiangVien]) REFERENCES [dbo].[GiangVien] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [FK__NguoiDung__TypeH__534D60F1] FOREIGN KEY ([TypeHv]) REFERENCES [dbo].[TypeHv] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [FK__NguoiDung__Gende__5441852A] FOREIGN KEY ([Gender]) REFERENCES [dbo].[Gender] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Truong
-- ----------------------------
ALTER TABLE [dbo].[Truong] ADD CONSTRAINT [FK__Truong__NganhDao__787EE5A0] FOREIGN KEY ([NganhDaoTao]) REFERENCES [dbo].[NganhDaoTao] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

