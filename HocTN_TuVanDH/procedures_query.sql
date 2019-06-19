USE DiemA
GO

CREATE PROCEDURE Pro_DemSoNguoiDung
AS
BEGIN
SELECT COUNT(Id) AS N'Tống người dùng' FROM NguoiDung
END
GO

CREATE PROCEDURE Pro_DemSoGiangVien
AS
BEGIN
SELECT COUNT(Id) AS N'Tống giảng viên' FROM GiangVien
END
GO

CREATE PROCEDURE Pro_DemSoKhoaHoc
AS
BEGIN
SELECT COUNT(Id) AS N'Tống khóa học' FROM KhoaHoc
END
GO

CREATE PROCEDURE Pro_DemSoBaiHoc
AS
BEGIN
SELECT COUNT(Id) AS N'Tống bài học' FROM BaiHoc
END
GO

CREATE PROCEDURE Pro_CountTypeHv
AS
BEGIN
SELECT COUNT(Id) FROM TypeHv
END
GO

CREATE PROCEDURE Pro_GetListTypeHv
AS
BEGIN
SELECT * FROM TypeHv
END
GO

CREATE PROCEDURE Proc_GetTypeHvById
@Id INT
AS
BEGIN
SELECT Name FROM TypeHv WHERE Id = @Id
END
GO

-- EXEC Proc_GetTypeHvById 1
-- GO SELECT * FROM GiangVien

CREATE PROCEDURE Proc_GetNguoiDungWhenLogin 
@Email VARCHAR(255), 
@Password VARCHAR(255) 
AS 
BEGIN 
SELECT COUNT(Id) FROM NguoiDung 
WHERE Email = @Email AND Password = @Password 
END 
GO 

-- EXEC Proc_GetNguoiDungWhenLogin "ly@gmail.com", "c4ca4238a0b923820dcc509a6f75849b"
-- GO

-- ALTER PROCEDURE Proc_GetCourseWhenSearch 
-- @Name VARCHAR(255) 
-- AS 
-- BEGIN 
-- SELECT KhoaHoc.ImageLink, KhoaHoc.Id, KhoaHoc.Name, [Level].Name AS N'Cấp độ', GiangVien.Name AS N'Giảng viên', KhoaHoc.HocPhi, KhoaHoc.NgayBatDau, KhoaHoc.Ghichu  
-- FROM KhoaHoc INNER JOIN [Level] ON KhoaHoc.[Level] = [Level].Id 
-- INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
-- WHERE KhoaHoc.Name LIKE '%' + @Name + '%' 
-- END 
-- GO 
-- 
--EXEC Proc_GetCourseWhenSearch 'nhật'
-- SELECT KhoaHoc.ImageLink, KhoaHoc.Id, KhoaHoc.Name, [Level].Name AS N'Cấp độ', GiangVien.Name AS N'Giảng viên', KhoaHoc.HocPhi, KhoaHoc.NgayBatDau, KhoaHoc.Ghichu  
-- FROM KhoaHoc INNER JOIN [Level] ON KhoaHoc.[Level] = [Level].Id 
-- INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
-- WHERE KhoaHoc.Name LIKE N'%' + N'e' + '%' 

-- ALTER PROCEDURE Proc_GetCourseWhenSearch(@Name VARCHAR(255)) 
-- AS 
-- BEGIN 
-- 	SELECT * FROM KhoaHoc WHERE KhoaHoc.Name LIKE N'%quen' + @Name + N'%' 
-- END
-- GO

CREATE PROCEDURE Proc_GetListCourses 
AS 
BEGIN 
SELECT KhoaHoc.ImageLink, KhoaHoc.Id, KhoaHoc.Name, [Level].Name AS N'Cấp độ', GiangVien.Name AS N'Giảng viên', KhoaHoc.HocPhi, KhoaHoc.NgayBatDau, KhoaHoc.Ghichu  
FROM KhoaHoc INNER JOIN [Level] ON KhoaHoc.[Level] = [Level].Id 
INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
END 
GO

CREATE PROCEDURE Proc_GetCoursesTheoCap  
@Cap INT 
AS 
BEGIN 
SELECT KhoaHoc.ImageLink, KhoaHoc.Id, KhoaHoc.Name, [Level].Name AS N'Cấp độ', GiangVien.Name AS N'Giảng viên', KhoaHoc.HocPhi, KhoaHoc.NgayBatDau, KhoaHoc.Ghichu  
FROM KhoaHoc INNER JOIN [Level] ON KhoaHoc.[Level] = [Level].Id 
INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
WHERE KhoaHoc.[Level] = @Cap 
END 
GO 

--EXEC Proc_GetCoursesTheoCap 1
 
-- EXEC Proc_GetCourseWhenSearch N'%với%'
-- GO
	
CREATE PROCEDURE Proc_GetListDuHoc
AS
BEGIN
	SELECT Truong.ImageLink AS N'Link ảnh', 
	Truong.Name AS N'Tên trường', 
	Truong.GiaTien AS N'Giá tiền', 
	NganhDaoTao.Name AS N'Ngành đào tạo', 
	Truong.GhiChu AS N'Ghi chú', 
	Truong.Id, Truong.ThongTinCoBan AS N'Thông tin cơ bản'
	FROM Truong 
	INNER JOIN NganhDaoTao ON Truong.NganhDaoTao = NganhDaoTao.Id
-- 	INNER JOIN DuHoc ON Truong.Id = DuHoc.SchoolId 
-- 	INNER JOIN PhanLoaiDh ON DuHoc.PhanLoaiDh = PhanLoaiDh.Id
END
GO

-- EXEC Proc_GetListDuHoc
-- GO

CREATE PROCEDURE Proc_GetFullListDuHoc
@Id INT
AS
BEGIN
	SELECT Truong.Name, Address, Website, ThongTinChiTiet, GiaTien, ImageLink, NganhDaoTao.Name AS "Ndt"
	FROM Truong 
	INNER JOIN NganhDaoTao ON Truong.NganhDaoTao = NganhDaoTao.Id
	WHERE Truong.Id = @Id
END
GO

-- EXEC Proc_GetFullListDuHoc 5

CREATE PROCEDURE Proc_GetSchoolWhenSearch
@Name NVARCHAR(255)
AS
BEGIN
	SELECT Truong.ImageLink AS N'Link ảnh', 
	Truong.Name AS N'Tên trường', 
	Truong.GiaTien AS N'Giá tiền', 
	NganhDaoTao.Name AS N'Ngành đào tạo', 
	Truong.GhiChu AS N'Ghi chú', 
	Truong.Id, Truong.ThongTinCoBan AS N'Thông tin cơ bản'
	FROM Truong 
	INNER JOIN NganhDaoTao ON Truong.NganhDaoTao = NganhDaoTao.Id WHERE Truong.Name LIKE '%' + @Name + '%'
END

-- Proc_GetSchoolWhenSearch N'%1%'
-- GO

CREATE PROCEDURE Proc_GetListDuHocByHocPhi_0 
AS 
BEGIN SELECT Truong.Name, Address, Website, ThongTinChiTiet, GiaTien, ImageLink, NganhDaoTao.Name AS "Ndt" 
FROM Truong INNER JOIN NganhDaoTao ON Truong.NganhDaoTao = NganhDaoTao.Id WHERE Truong.GiaTien < 600000 
END 
GO

CREATE PROCEDURE Proc_GetCoursesByName 
@Name NVARCHAR(255) 
AS 
BEGIN 
	SELECT KhoaHoc.ImageLink, KhoaHoc.Id, KhoaHoc.Name, [Level].Name AS N'Cấp độ', GiangVien.Name AS N'Giảng viên', KhoaHoc.HocPhi, KhoaHoc.NgayBatDau, KhoaHoc.Ghichu   
	FROM KhoaHoc INNER JOIN [Level] ON KhoaHoc.[Level] = [Level].Id 
	INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
	WHERE KhoaHoc.Name LIKE '%' + @Name + '%'
END 
GO 

-- Proc_GetCoursesByName N'cấp'

CREATE PROCEDURE Proc_GetCourseDetail 
@Id INT 
AS 
BEGIN 
	SELECT KhoaHoc.Id, KhoaHoc.Name, GiangVien.Name AS N'GiangVien', GiangVien.GioiThieu, KhoaHoc.GioiThieu AS N'GTKH', BaiHoc.Link   
	FROM KhoaHoc INNER JOIN GiangVien ON KhoaHoc.GiangVien = GiangVien.Id 
	INNER JOIN BaiHoc ON KhoaHoc.Id = BaiHoc.KhoaHocId 
	WHERE BaiHoc.ThuTuBaiHoc = (SELECT MIN(BaiHoc.ThuTuBaiHoc) FROM BaiHoc) AND KhoaHoc.Id = @Id 
 END 

-- EXEC Proc_GetCourseDetail 1

CREATE PROCEDURE Proc_GetListBaiHoc 
@Id INT 
AS 
BEGIN 
	SELECT BaiHoc.Id, BaiHoc.Name, BaiHoc.KhoaHocId, BaiHoc.Link, BaiHoc.ThuTuBaiHoc, KhoaHoc.ImageLink 
	FROM BaiHoc INNER JOIN KhoaHoc ON BaiHoc.KhoaHocId = KhoaHoc.Id 
	WHERE BaiHoc.KhoaHocId = @Id 
	ORDER BY BaiHoc.ThuTuBaiHoc 
END 
GO 

-- Proc_GetListBaiHoc 1

CREATE PROCEDURE Proc_GetBaiHocById 
@Id INT 
AS 
BEGIN 
	SELECT * FROM BaiHoc WHERE Id = @Id 
END 
GO 

-- Proc_GetBaiHocById 1

CREATE PROCEDURE Proc_findPreBaiHoc	
@KhoaHocId INT, 
@ThuTuBaiHoc INT 
AS 
BEGIN 
	SELECT * FROM BaiHoc WHERE KhoaHocId = @KhoaHocId AND ThuTuBaiHoc = @ThuTuBaiHoc 
END 
GO 

-- Proc_findPreBaiHoc 2, 1

CREATE PROCEDURE Proc_FindMaxThuTu	
@KhoaHocId INT 
AS 
BEGIN 
	SELECT * FROM BaiHoc WHERE KhoaHocId = @KhoaHocId AND ThuTuBaiHoc = (SELECT MAX(ThuTuBaiHoc) FROM BaiHoc WHERE KhoaHocId = @KhoaHocId) 
END 
GO 

-- Proc_FindMaxThuTu 4 SELECT * FROM BaiHoc WHERE KhoaHocId = 1

CREATE PROCEDURE Proc_GetUserByEmail 
@Email VARCHAR(255) 
AS 
BEGIN 
	SELECT * FROM NguoiDung WHERE Email = @Email 
END 
GO 

-- Proc_GetUserByEmail "ly@gmail.com"