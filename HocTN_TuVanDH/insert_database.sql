USE HocTN
GO

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