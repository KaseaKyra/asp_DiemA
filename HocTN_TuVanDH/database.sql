/*
 Navicat Premium Data Transfer

 Source Server         : sql server
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : DESKTOP-T0EMI63\SQLEXPRESS:1433
 Source Catalog        : HocTN_TVDH
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 27/05/2019 15:07:39
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
  [Ghichu] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[BaiHoc] SET (LOCK_ESCALATION = TABLE)
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
  [Phone] varchar(11) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TypeHv] int DEFAULT ((2)) NOT NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[GiangVien] SET (LOCK_ESCALATION = TABLE)
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
  [NgayKetThuc] date  NULL,
  [Ghichu] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[KhoaHoc] SET (LOCK_ESCALATION = TABLE)
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
  [Phone] varchar(11) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Email] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [Password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TypeHv] int DEFAULT ((1)) NOT NULL,
  [Note] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT NULL NULL
)
GO

ALTER TABLE [dbo].[NguoiDung] SET (LOCK_ESCALATION = TABLE)
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
INSERT INTO [dbo].[TypeHv] VALUES (N'1', N'Người dùng')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'2', N'Giảng viên')
GO

INSERT INTO [dbo].[TypeHv] VALUES (N'3', N'Học viên')
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
	DECLARE @ID int = (SELECT MAX(NguoiDung.Id) From NguoiDung) + 1
-- 	@ID +=1

	INSERT INTO NguoiDung
	VALUES(@ID, @name, @dob, @gender, @phone, @email, @pass, @type, @note)
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
-- Procedure structure for Proc_InsertLevel
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Proc_InsertLevel]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[Proc_InsertLevel]
GO

CREATE PROCEDURE [dbo].[Proc_InsertLevel]
@name NVARCHAR(255)
AS
BEGIN
	DECLARE @ID int = (SELECT MAX([Level].Id) From [Level]) + 1
-- 	PRINT @ID
	INSERT INTO [Level]
	VALUES(@ID, @name)
END
GO


-- ----------------------------
-- Primary Key structure for table BaiHoc
-- ----------------------------
ALTER TABLE [dbo].[BaiHoc] ADD CONSTRAINT [PK__BaiHoc__3214EC070CBF680B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DuHoc
-- ----------------------------
ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [PK__DuHoc__3214EC070AD267E8] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Gender
-- ----------------------------
ALTER TABLE [dbo].[Gender] ADD CONSTRAINT [PK__Gender__3214EC075BAE7C57] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [UQ__GiangVie__5C7E359E9D2EB53C] UNIQUE NONCLUSTERED ([Phone] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [UQ__GiangVie__A9D105344BEA6F9F] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [PK__GiangVie__3214EC070ADF6D95] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table KhoaHoc
-- ----------------------------
ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [PK__KhoaHoc__3214EC071912DF73] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Level
-- ----------------------------
ALTER TABLE [dbo].[Level] ADD CONSTRAINT [PK__Level__3214EC07FE913CE3] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NganhDaoTao
-- ----------------------------
ALTER TABLE [dbo].[NganhDaoTao] ADD CONSTRAINT [PK__NganhDao__3214EC07D9D84345] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Uniques structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [UQ__NguoiDun__5C7E359EC57DEF81] UNIQUE NONCLUSTERED ([Phone] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [UQ__NguoiDun__A9D10534A8B145CE] UNIQUE NONCLUSTERED ([Email] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [PK__NguoiDun__3214EC07038AD673] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table PhanLoaiDh
-- ----------------------------
ALTER TABLE [dbo].[PhanLoaiDh] ADD CONSTRAINT [PK__PhanLoai__3214EC07FE1A522B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Truong
-- ----------------------------
ALTER TABLE [dbo].[Truong] ADD CONSTRAINT [PK__Truong__3214EC073F96540B] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table TypeHv
-- ----------------------------
ALTER TABLE [dbo].[TypeHv] ADD CONSTRAINT [PK__TypeHv__3214EC07E8CF1839] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table BaiHoc
-- ----------------------------
ALTER TABLE [dbo].[BaiHoc] ADD CONSTRAINT [FK__BaiHoc__KhoaHocI__59063A47] FOREIGN KEY ([KhoaHocId]) REFERENCES [dbo].[KhoaHoc] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table DuHoc
-- ----------------------------
ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [FK__DuHoc__SchoolId__6A30C649] FOREIGN KEY ([SchoolId]) REFERENCES [dbo].[Truong] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[DuHoc] ADD CONSTRAINT [FK__DuHoc__PhanLoaiD__6B24EA82] FOREIGN KEY ([PhanLoaiDh]) REFERENCES [dbo].[PhanLoaiDh] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table GiangVien
-- ----------------------------
ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [FK__GiangVien__TypeH__4AB81AF0] FOREIGN KEY ([TypeHv]) REFERENCES [dbo].[TypeHv] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[GiangVien] ADD CONSTRAINT [FK__GiangVien__Gende__4BAC3F29] FOREIGN KEY ([Gender]) REFERENCES [dbo].[Gender] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table KhoaHoc
-- ----------------------------
ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [FK__KhoaHoc__Level__5441852A] FOREIGN KEY ([Level]) REFERENCES [dbo].[Level] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[KhoaHoc] ADD CONSTRAINT [FK__KhoaHoc__GiangVi__5535A963] FOREIGN KEY ([GiangVien]) REFERENCES [dbo].[GiangVien] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NguoiDung
-- ----------------------------
ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [FK__NguoiDung__TypeH__412EB0B6] FOREIGN KEY ([TypeHv]) REFERENCES [dbo].[TypeHv] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NguoiDung] ADD CONSTRAINT [FK__NguoiDung__Gende__4222D4EF] FOREIGN KEY ([Gender]) REFERENCES [dbo].[Gender] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Truong
-- ----------------------------
ALTER TABLE [dbo].[Truong] ADD CONSTRAINT [FK__Truong__NganhDao__66603565] FOREIGN KEY ([NganhDaoTao]) REFERENCES [dbo].[NganhDaoTao] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

