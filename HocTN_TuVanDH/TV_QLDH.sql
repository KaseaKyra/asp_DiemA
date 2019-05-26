create database HocTN
go

use HocTN
go

CREATE TABLE TypeHv(
	Id INT IDENTITY(1,1),
	Name nvarchar(255) NOT NULL,
	
	PRIMARY KEY(Id)
)
GO

create table Gender (
	Id int IDENTITY(1,1),
	Name nvarchar(255) not null,

	primary key(Id)
)
go

CREATE TABLE NguoiDung (
    Id int IDENTITY(1,1),
    Name nvarchar(255) not null default null,
    DateOfBirth date not null,
    Gender int not null default 1, --nam
	Phone varchar(11) unique not null,
    Email varchar(255) not null unique,
    Password varchar(255) not null,
	TypeHv int not null default 1,
	Note Nvarchar(255) default null,

	primary key(Id),
	FOREIGN KEY (TypeHv) REFERENCES TypeHv(Id),
	FOREIGN KEY (Gender) REFERENCES Gender(Id)
)
go


CREATE TABLE GiangVien (
    Id int IDENTITY(1,1),
    Name nvarchar(255) not null default null,
    DateOfBirth date not null,
    Gender int not null default 1, --nam
	Phone varchar(11) unique not null,
    Email varchar(255) not null unique,
    Password varchar(255) not null,
	TypeHv int not null default 2,
	Note Nvarchar(255) default null,

	primary key(Id),
	FOREIGN KEY (TypeHv) REFERENCES TypeHv(Id),
	FOREIGN KEY (Gender) REFERENCES Gender(Id)
)
go

create table Level(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,

	primary key(Id),
)
go

create table KhoaHoc(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,
	Level int not null default 1,
	GiangVien int not null,
	HocPhi float not null default 0,
	NgayBatDau date,
	NgayKetThuc date,
	Ghichu nvarchar(255),

	primary key(Id),
	FOREIGN KEY (Level) REFERENCES Level(Id),
	FOREIGN KEY (GiangVien) REFERENCES GiangVien(Id)
)
go

create table BaiHoc(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,
	KhoaHocId int,
	Ghichu nvarchar(255),

	primary key(Id),
	FOREIGN KEY (KhoaHocId) REFERENCES KhoaHoc(Id)
)
go

create table HocVien(
	NguoiDungId int,
	KhoaHocId int,
	Ghichu nvarchar(255),

	primary key(NguoiDungId, KhoaHocId),
	FOREIGN KEY (KhoaHocId) REFERENCES KhoaHoc(Id),
	FOREIGN KEY (NguoiDungId) REFERENCES NguoiDung(Id),
)
go

create table PhanLoaiDh(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,

	primary key(Id)
)
go

create table NganhDaoTao(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,

	primary key(Id),
)
go

create table Truong(
	Id int IDENTITY(1,1),
	Name Nvarchar(255) not null default null,
	Address nvarchar(255) default null,
	Website nvarchar(255) default null,
	ThongTinChiTiet nvarchar(255),
	ThongTinCoBan nvarchar(255),
	GiaTien float default 0,
	NganhDaoTao int default 1,

	primary key(Id),
	FOREIGN KEY (NganhDaoTao) REFERENCES NganhDaoTao(Id),
)
go

create table DuHoc(
	Id int IDENTITY(1,1),
	SchoolId int,
	PhanLoaiDh int default 1,
	GhiChu nvarchar(255),

	primary key(Id),
	FOREIGN KEY (SchoolId) REFERENCES Truong(Id),
	FOREIGN KEY (PhanLoaiDh) REFERENCES PhanLoaiDh(Id),
)
go

-- bảng [Level]
INSERT INTO [Level] (Name)
VALUES (N'N5')
GO

INSERT INTO [Level]
VALUES (N'N4')
GO

INSERT INTO [Level]
VALUES (N'N3')
GO

-- bảng [TypeHv]
INSERT INTO [TypeHv] (Name)
VALUES (N'Người dùng')
GO

INSERT INTO [TypeHv]
VALUES (N'Giảng viên')
GO

INSERT INTO [TypeHv]
VALUES (N'Học viên')
GO

-- bảng [PhanLoaiDh]
INSERT INTO [PhanLoaiDh]
VALUES (N'Du học tự túc')
GO

INSERT INTO [PhanLoaiDh]
VALUES (N'Du học học bổng')
GO

INSERT INTO [PhanLoaiDh]
VALUES (N'Kỹ sư')
GO

-- bảng [PhanLoaiDh]
INSERT INTO [Gender]
VALUES (N'Nam')
GO

INSERT INTO [Gender]
VALUES (N'Nữ')
GO

-- bảng [NganhDaoTao]
INSERT INTO [NganhDaoTao]
VALUES (N'Đào tạo Nhật ngữ')
GO

INSERT INTO [NganhDaoTao]
VALUES (N'Đào tạo kỹ sư')
GO

-- bảng HocVien
--INSERT INTO [HocVien]

--ALTER PROCEDURE Proc_InsertNguoiDung
--@name nvarchar(255),
--@dob DATE,
--@gender INT,
--@phone INT,
--@email nvarchar(255),
--@pass VARCHAR(255),
--@type int,
--@note nvarchar(255)
--as
--BEGIN
--	INSERT INTO HocVien
--	VALUES(@name, @dob, @gender, @phone, @email, @pass, @type, @note)
--END
--GO

select * from NguoiDung
go

SET IDENTITY_INSERT HocVien ON
go

EXEC Proc_InsertNguoiDung(N'Đinh Ly', "2000-08-01", 2, 0964440740, "dinhly@gmail.com", "c4ca4238a0b923820dcc509a6f75849b", 1, "null")
go