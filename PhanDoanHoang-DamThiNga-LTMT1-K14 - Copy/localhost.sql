-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 11, 2024 lúc 07:40 PM
-- Phiên bản máy phục vụ: 5.7.41-cll-lve
-- Phiên bản PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vswpxxhz_erm`
--
CREATE DATABASE IF NOT EXISTS `vswpxxhz_erm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `vswpxxhz_erm`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohiem`
--

CREATE TABLE `baohiem` (
  `ID` int(11) NOT NULL,
  `TenBaoHiem` varchar(50) NOT NULL,
  `NhaCungCap` varchar(50) NOT NULL,
  `NoiDangKi` varchar(50) NOT NULL,
  `TyLePhi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `baohiem`
--

INSERT INTO `baohiem` (`ID`, `TenBaoHiem`, `NhaCungCap`, `NoiDangKi`, `TyLePhi`) VALUES
(6, 'Bảo hiểm Y Tế', 'Công ty ABC', 'Hà Nội', 2),
(7, 'Bảo hiểm Ô tô', 'Công ty XYZ', 'Hồ Chí Minh', 1),
(8, 'Bảo hiểm Nhân thọ', 'Công ty DEF', 'Đà Nẵng', 3),
(9, 'Bảo hiểm Nhà ở', 'Công ty GHI', 'Hải Phòng', 2),
(10, 'Bảo hiểm Du lịch', 'Công ty JKL', 'Nha Trang', 1),
(11, 'Bảo hiểm Tai nạn', 'Công ty MNO', 'Cần Thơ', 3),
(12, 'Bảo hiểm Sức khỏe', 'ông ty PQR', 'Quảng Ninh', 2),
(13, 'Bảo hiểm Học sinh', 'Công ty STU', 'Bắc Ninh', 2),
(14, 'Bảo hiểm Doanh nghiệp', 'Công ty VWX', 'Bình Dương', 3),
(15, 'Bảo hiểm Nông nghiệp', 'Công ty YZA', 'Lâm Đồng', 1),
(16, 'Bảo hiểm Đường bộ', 'Công ty BCD', 'Bình Thuận', 2),
(17, 'Bảo hiểm Hàng hóa', 'Công ty EFG', 'Thanh Hóa', 3),
(18, 'Bảo hiểm Máy móc', 'Công ty HIJ', 'Nghệ An', 1),
(19, 'Bảo hiểm Xây dựng', 'Công ty KLM', 'Thái Nguyên', 3),
(20, 'Bảo hiểm Nghề nghiệp', 'Công ty NOP', 'Hưng Yên', 1),
(21, 'Bảo hiểm Tài sản', 'Công ty QRS', 'Nam Định', 2),
(22, 'Bảo hiểm Môi trường', 'Công ty TUV', 'Hà Giang', 3),
(23, 'Bảo hiểm Trách nhiệm', 'Công ty WXY', 'Sơn La', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `calam`
--

CREATE TABLE `calam` (
  `ID` int(11) NOT NULL,
  `TenCa` varchar(50) NOT NULL,
  `GioBatDau` time NOT NULL,
  `GioKetThuc` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `capbac`
--

CREATE TABLE `capbac` (
  `ID` int(11) NOT NULL,
  `TenCapBac` varchar(50) NOT NULL,
  `CauTrucLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `capbac`
--

INSERT INTO `capbac` (`ID`, `TenCapBac`, `CauTrucLuong`) VALUES
(1, 'Nhân Viên', 123),
(16, 'Thực Tập Sinh', 5),
(18, 'Nhân Viên Chính Thức', 10),
(19, 'Nhân Viên Kinh Nghiệm', 12),
(20, 'Trưởng Nhóm', 15),
(21, 'Trợ Lý', 18),
(22, 'Giám Sát', 20),
(23, 'Quản Lý', 25),
(24, 'Phó Phòng', 30),
(25, 'Trưởng Phòng', 35),
(26, 'Phó Giám Đốc', 40),
(27, 'Giám Đốc', 50),
(28, 'Phó Tổng Giám Đốc', 60),
(29, 'Tổng Giám Đốc', 80),
(30, 'Chủ Tịch', 100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chamcong`
--

CREATE TABLE `chamcong` (
  `IDNhanVien` int(11) NOT NULL,
  `IDCaLam` int(11) NOT NULL,
  `Ngay` date NOT NULL,
  `BatDau` time NOT NULL,
  `KetThuc` time NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `ID` int(11) NOT NULL,
  `ChiNhanh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chinhanh`
--

INSERT INTO `chinhanh` (`ID`, `ChiNhanh`) VALUES
(62, 'Chi Nhánh Cần Thơ'),
(18, 'Chi Nhánh Hà Nội'),
(61, 'Chi Nhánh Hải Phòng'),
(59, 'Chi nhánh Hồ Chí Minh'),
(63, 'Chi Nhánh Huế'),
(16, 'Chi Nhánh Hưng Yên'),
(3, 'Chi Nhánh Nghệ An'),
(64, 'Chi Nhánh Vĩnh Phúc'),
(60, 'Chi nhánh Đà Nẵng ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucdanh`
--

CREATE TABLE `chucdanh` (
  `ID` int(11) NOT NULL,
  `TenChucDanh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chucdanh`
--

INSERT INTO `chucdanh` (`ID`, `TenChucDanh`) VALUES
(32, 'Giám Sát Sản Xuất'),
(36, 'Giám Đốc Kinh Doanh'),
(3, 'Nhân viên'),
(28, 'Nhân viên hành chính'),
(23, 'Nhân Viên Hỗ Trợ Khách Hàng'),
(24, 'Nhân Viên IT'),
(21, 'Nhân Viên Kế Toán'),
(25, 'Nhân Viên Kinh Doanh'),
(19, 'Nhân Viên Kinh Nghiệm'),
(18, 'Nhân Viên Marketing'),
(26, 'Nhân Viên Nhân Sự'),
(22, 'Nhân Viên Pháp Lý'),
(34, 'Phó Phòng Tài Chính'),
(33, 'Quản Lý Dự Án'),
(17, 'Thực Tập Sinh'),
(37, 'Tổng'),
(27, 'Trợ Lý Giám Đốc'),
(29, 'Trưởng Nhóm IT'),
(20, 'Trưởng Nhóm Kinh Doanh'),
(5, 'Trưởng phòng'),
(35, 'Trưởng Phòng Kế Toán'),
(30, 'Trưởng Phòng Marketing'),
(31, 'Trưởng Phòng Nhân Sự');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucdanh_vaitro`
--

CREATE TABLE `chucdanh_vaitro` (
  `IDChucDanh` int(11) NOT NULL,
  `IDVaiTro` int(11) NOT NULL,
  `Xem` tinyint(1) NOT NULL DEFAULT '0',
  `Them` tinyint(1) NOT NULL DEFAULT '0',
  `Sua` tinyint(1) NOT NULL DEFAULT '0',
  `Xoa` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chucdanh_vaitro`
--

INSERT INTO `chucdanh_vaitro` (`IDChucDanh`, `IDVaiTro`, `Xem`, `Them`, `Sua`, `Xoa`) VALUES
(3, 2, 1, 0, 0, 0),
(5, 1, 1, 1, 1, 1),
(5, 2, 1, 1, 1, 1),
(5, 3, 1, 1, 1, 1),
(5, 4, 1, 1, 1, 1),
(24, 2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `congty`
--

CREATE TABLE `congty` (
  `ID` int(11) NOT NULL,
  `TenMien` varchar(50) NOT NULL,
  `VietTat` varchar(50) NOT NULL,
  `CongTyMe` int(11) NOT NULL,
  `TienTe` varchar(50) NOT NULL,
  `QuocGia` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kynang`
--

CREATE TABLE `kynang` (
  `ID` int(11) NOT NULL,
  `TenKyNang` varchar(50) NOT NULL,
  `MoTa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `kynang`
--

INSERT INTO `kynang` (`ID`, `TenKyNang`, `MoTa`) VALUES
(9, 'Kỹ Năng Giao Tiếp', 'Khả năng trao đổi thông tin rõ ràng và hiệu quả với đồng nghiệp, khách hàng và các bên liên quan.'),
(10, 'Kỹ Năng Lãnh Đạo', 'Khả năng dẫn dắt, quản lý đội nhóm, đưa ra quyết định và động viên nhân viên.'),
(11, 'Kỹ Năng Giải Quyết Vấn Đề', 'Khả năng nhận diện vấn đề, phân tích và tìm ra giải pháp hiệu quả.'),
(12, 'Kỹ Năng Quản Lý Thời Gian', 'Khả năng ưu tiên công việc, quản lý thời gian và hoàn thành nhiệm vụ đúng hạn.'),
(13, 'Kỹ Năng Làm Việc Nhóm', 'Khả năng hợp tác, phối hợp với các thành viên khác để đạt được mục tiêu chung.'),
(14, 'Kỹ Năng Quản Lý Dự Án', 'Khả năng lên kế hoạch, giám sát và hoàn thành dự án đúng tiến độ và ngân sách.'),
(15, 'Kỹ Năng Tổ Chức', 'Khả năng tổ chức công việc, tài liệu và các nguồn lực một cách có hệ thống và hiệu quả.'),
(16, 'Kỹ Năng Tư Duy Phân Tích', 'Khả năng phân tích thông tin, dữ liệu và đưa ra các quyết định hợp lý dựa trên những phân tích đó.'),
(17, 'Kỹ Năng Đàm Phán', 'Khả năng thương thảo và đạt được các thỏa thuận có lợi cho cả hai bên trong các tình huống kinh doanh.'),
(18, 'Kỹ Năng Quản Lý Xung Đột', 'Khả năng giải quyết mâu thuẫn, xung đột trong nhóm hoặc với khách hàng một cách hiệu quả.'),
(19, 'Kỹ Năng Tin Học Văn Phòng', 'Thành thạo các phần mềm văn phòng như Word, Excel, PowerPoint, Outlook và các công cụ quản lý công việc.'),
(20, 'Kỹ Năng Phân Tích Dữ Liệu', 'Khả năng thu thập, xử lý và phân tích dữ liệu để đưa ra các báo cáo và dự báo.'),
(21, 'Kỹ Năng Viết Báo Cáo', 'Khả năng viết báo cáo, tài liệu một cách chính xác, rõ ràng và có tổ chức.'),
(22, 'Kỹ Năng Quản Lý Ngân Sách', 'Khả năng lập kế hoạch, theo dõi và kiểm soát ngân sách, đặc biệt là trong các phòng ban như tài chính hoặc dự án.'),
(23, 'Kỹ Năng Bán Hàng', 'Khả năng thuyết phục và bán sản phẩm/dịch vụ cho khách hàng, bao gồm việc xây dựng mối quan hệ với khách hàng.'),
(24, 'Kỹ Năng Marketing', 'Khả năng phát triển chiến lược tiếp thị, quảng bá thương hiệu và sản phẩm, từ nghiên cứu thị trường đến chiến dịch quảng cáo.'),
(25, 'Kỹ Năng Công Nghệ Thông Tin', 'Thành thạo các công nghệ và phần mềm liên quan đến công việc, bao gồm lập trình, thiết kế web, phát triển phần mềm, và bảo mật mạng.'),
(26, 'Kỹ Năng Sáng Tạo', 'Khả năng nghĩ ra các ý tưởng mới, sáng tạo trong công việc và giải quyết vấn đề.'),
(27, 'Kỹ Năng Quản Lý Mối Quan Hệ Khách Hàng (CRM)', 'Khả năng xây dựng và duy trì mối quan hệ lâu dài với khách hàng thông qua các chiến lược chăm sóc khách hàng.'),
(28, 'Kỹ Năng Đào Tạo', 'Khả năng giảng dạy, hướng dẫn và đào tạo nhân viên mới hoặc nâng cao kỹ năng cho đồng nghiệp.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaikhieunai`
--

CREATE TABLE `loaikhieunai` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `MoTa` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loainhanvien`
--

CREATE TABLE `loainhanvien` (
  `ID` int(11) NOT NULL,
  `LoaiNhanVien` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loainhanvien`
--

INSERT INTO `loainhanvien` (`ID`, `LoaiNhanVien`) VALUES
(1, 'Nhân Viên Chính Thức'),
(58, 'Nhân Viên Dịch Vụ Khách Hàng'),
(48, 'Nhân Viên Dự Án'),
(57, 'Nhân Viên Hành Chính'),
(53, 'Nhân Viên Hỗ Trợ Kỹ Thuật'),
(46, 'Nhân Viên Hợp Đồng Dài Hạn'),
(45, 'Nhân Viên Hợp Đồng Ngắn Hạn'),
(51, 'Nhân Viên Khoán Việc'),
(52, 'Nhân Viên Kinh Doanh'),
(56, 'Nhân Viên Marketing'),
(43, 'Nhân Viên Part-time'),
(55, 'Nhân Viên Phát Triển Sản Phẩm'),
(54, 'Nhân Viên Quản Lý'),
(49, 'Nhân Viên Tạm Thời'),
(42, 'Nhân Viên Thời Vụ'),
(47, 'Nhân Viên Thời Vụ Hè'),
(41, 'Nhân Viên Thử Việc'),
(50, 'Nhân Viên Tư Vấn'),
(44, 'Thực Tập Sinh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL,
  `Dem` varchar(50) NOT NULL,
  `Ho` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `GioiTinh` varchar(50) NOT NULL,
  `SDT` varchar(50) NOT NULL,
  `NgaySinh` datetime NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `CCCD` varchar(50) NOT NULL,
  `IDLoaiNhanVien` int(11) NOT NULL,
  `IDCapBac` int(11) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `MatKhau` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`ID`, `Ten`, `Dem`, `Ho`, `Email`, `GioiTinh`, `SDT`, `NgaySinh`, `DiaChi`, `CCCD`, `IDLoaiNhanVien`, `IDCapBac`, `NgayBatDau`, `NgayKetThuc`, `MatKhau`) VALUES
(44, '	M', 'Thị', 'Hồ', 'tk1@gmail.com', 'nữ', '23423423', '1997-12-02 00:00:00', '102 Võ Văn Kiệt, Đà Nẵng', '890123456789', 1, 23, '2024-11-05', '0000-00-00', '$2a$10$bCb9RYxjzGlK6EuxU1hVD.2oKL5w41I9H5r8UdPFKq4ZjAtNL5QZu'),
(46, 'A', 'Văn', 'Nguyễn', 'tk2@gmail.com', 'Nam', '0901234567', '1994-05-19 00:00:00', '123 Nguyễn Văn Cừ, HCM', '123456789012', 1, 1, '2020-01-09', '0000-00-00', '$2a$10$bCb9RYxjzGlK6EuxU1hVD.2oKL5w41I9H5r8UdPFKq4ZjAtNL5QZu'),
(57, 'B', 'Thị', 'Trần', 'tranthib@gmail.com', 'Nữ', '0912345678', '1994-03-19 00:00:00', '456 Lê Lợi, Hà Nội', '234567890123', 58, 16, '2021-10-16', '0000-00-00', '$2a$10$HFDZDUyqXk9aC2q8Y46SHexiDn7zluMWZNSmqNvwwA5nhFm5dtkuq'),
(58, 'C', 'Minh', 'Lê', 'leminhc@gmail.com', 'Nam', '0923456789', '1997-11-04 00:00:00', '101 Trần Hưng Đạo, Đà Nẵng', '456789012345', 48, 20, '2023-02-18', '0000-00-00', '$2a$10$H0mMqLJbgukOmH70mgetvOOaOC9OcW2Gpd77gvuLonnyiNxSe0WH.'),
(59, 'D', 'Thu', 'Phạm', 'phamthud@gmail.com', 'Nữ', '0934567890', '1994-02-26 00:00:00', '101 Trần Hưng Đạo, Đà Nẵng', '456789012345', 57, 20, '2020-04-15', '0000-00-00', '$2a$10$7DylZiv6tPup3b0w4I0iieqfjr267B7wIhJkb9Bzt3YNV1WxM4t7y'),
(60, 'E', 'Anh', 'Vũ', 'uange@gmail.com', 'Nam', '0945678901', '1989-11-02 00:00:00', '102 Võ Văn Kiệt, HCM', '567890123456', 53, 21, '2023-01-29', '0000-00-00', '$2a$10$6qtmA9YAQk/y0ZvKyaPNcuX/3TR0cbT8MljhP3mg7NX88A1HY/K4.'),
(61, 'F', 'Thị', 'Đoàn', 'doanthif@gmail.com', 'Nữ', '0956789012', '1990-10-13 00:00:00', '345 Phan Đình Phùng, HN', '678901234567', 46, 22, '2021-05-03', '0000-00-00', '$2a$10$Ih0tZqP5eSgKUQgalNg2Aun6IcL.7MsIKOxpI9DzfisWoPCpdui6W'),
(63, 'G', 'Mạnh', 'Hoàng', 'hoangblytna2@gmail.com', 'Nam', '098765432', '1997-05-31 00:00:00', '345 Phan Đình Phùng, HN', '789012345678', 45, 16, '2020-09-17', '0000-00-00', '$2a$10$B0/1U2W990js/1lRVV3YOO6oNzf6ZDi/Lm8OsmQcTaUyqzvt4xZ66'),
(64, 'H', 'Thu', 'Lý', 'lythuh@gmail.com', 'Nữ	', '0978901234', '1998-02-19 00:00:00', '678 Đường Tôn Đức Thắng, HCM', '890123456789', 51, 24, '2022-02-25', '0000-00-00', '$2a$10$c5FcWI9y9uZgHEbocIjmNO1f8O/idQkpeNCE00fBIaHU1AHE/eICm'),
(65, 'I', 'Minh', 'Bùi', 'l@gmail.com', 'Nữ	', '0978901234', '2024-11-06 00:00:00', '678 Đường Tôn Đức Thắng, HCM', '901234567890', 48, 25, '2024-11-01', '0000-00-00', '$2a$10$RNV.tvIYDKe3XNIzOBB36e9eS0QKcK1cdDYRsSXfK569.1dK5zn5G'),
(66, 'K', 'Thị', 'Nguyễn', 'nguyenthik@gmail.com', 'Nữ', '0990123456', '1994-07-24 00:00:00', '890 Trần Cao Vân, Đà Nẵng', '123456789012', 50, 22, '2022-09-07', '0000-00-00', '$2a$10$o50UQRKhlkUXNj7HR.j1puRDclr3qA6PzCukuamQUyVBYn47/Ly1W'),
(67, 'L', 'Bảo', 'Phan', 'phanbaol@gmail.com', 'Nam', '0909876543', '1996-12-02 00:00:00', '23 Nguyễn Văn Cừ, Bình Dương', '123456789012', 55, 19, '2022-01-12', '0000-00-00', '$2a$10$NMPKM0V0zr7yUPvu6FM8wukfvCbeteEjpHXJtzg.WiciKhEMjEo2W');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_baohiem`
--

CREATE TABLE `nhanvien_baohiem` (
  `IDNhanVien` int(11) NOT NULL,
  `IDBaoHiem` int(11) NOT NULL,
  `NgayDong` datetime NOT NULL,
  `NgayHetHan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_baohiem`
--

INSERT INTO `nhanvien_baohiem` (`IDNhanVien`, `IDBaoHiem`, `NgayDong`, `NgayHetHan`) VALUES
(44, 8, '2024-11-14 00:00:00', '2024-11-20 00:00:00'),
(44, 11, '2024-01-04 00:00:00', '2024-12-31 00:00:00'),
(60, 6, '2024-01-02 00:00:00', '2024-11-20 00:00:00'),
(60, 12, '2024-01-01 00:00:00', '2024-11-30 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_chucdanh`
--

CREATE TABLE `nhanvien_chucdanh` (
  `IDNhanVien` int(11) NOT NULL,
  `IDChucDanh` int(11) NOT NULL,
  `NgayBatDau` datetime NOT NULL,
  `NgayKetThuc` datetime NOT NULL,
  `IDPhongBan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_chucdanh`
--

INSERT INTO `nhanvien_chucdanh` (`IDNhanVien`, `IDChucDanh`, `NgayBatDau`, `NgayKetThuc`, `IDPhongBan`) VALUES
(44, 3, '2024-11-07 00:00:00', '0000-00-00 00:00:00', 8),
(44, 5, '2024-11-13 00:00:00', '0000-00-00 00:00:00', 29),
(44, 28, '2024-11-20 00:00:00', '2024-11-29 00:00:00', 29),
(44, 33, '2024-11-21 00:00:00', '2024-11-29 00:00:00', 26),
(44, 36, '2024-11-01 00:00:00', '0000-00-00 00:00:00', 26),
(46, 32, '2024-11-14 00:00:00', '0000-00-00 00:00:00', 8),
(60, 5, '2024-11-13 00:00:00', '0000-00-00 00:00:00', 34),
(60, 36, '2024-11-14 00:00:00', '0000-00-00 00:00:00', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_hocvan`
--

CREATE TABLE `nhanvien_hocvan` (
  `ID` int(11) NOT NULL,
  `IDNhanVien` int(11) NOT NULL,
  `Truong` varchar(50) NOT NULL,
  `BangCap` varchar(50) NOT NULL,
  `CapHoc` varchar(50) NOT NULL,
  `NamTotNghiep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_hocvan`
--

INSERT INTO `nhanvien_hocvan` (`ID`, `IDNhanVien`, `Truong`, `BangCap`, `CapHoc`, `NamTotNghiep`) VALUES
(11, 57, 'Cao dăng nghe bk', 'ki si thuc hanh', 'cao dang', '2024'),
(12, 44, 'Cao dăng nghe bk', 'ki si thuc hanh', 'cao dang', '2022');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_kynang`
--

CREATE TABLE `nhanvien_kynang` (
  `IDNhanVien` int(11) NOT NULL,
  `IDKyNang` int(11) NOT NULL,
  `MucDo` int(11) NOT NULL,
  `NgayDanhGia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_kynang`
--

INSERT INTO `nhanvien_kynang` (`IDNhanVien`, `IDKyNang`, `MucDo`, `NgayDanhGia`) VALUES
(44, 9, 5, '2024-11-19'),
(44, 13, 4, '2024-11-11'),
(44, 15, 3, '2024-11-11'),
(44, 16, 3, '2024-11-14'),
(44, 25, 3, '2024-11-21'),
(46, 10, 4, '2024-11-08'),
(46, 11, 3, '2024-11-20'),
(46, 12, 4, '2024-11-19'),
(57, 21, 3, '2024-11-01'),
(58, 10, 3, '2024-11-13'),
(58, 13, 3, '2024-06-02'),
(58, 15, 3, '2024-09-20'),
(59, 10, 4, '2024-11-08'),
(59, 23, 5, '2024-11-21'),
(60, 9, 5, '2024-11-10'),
(60, 10, 3, '2024-11-07'),
(61, 10, 3, '2024-11-12'),
(61, 27, 5, '2024-11-19'),
(63, 27, 3, '2024-11-21'),
(64, 12, 3, '2024-11-21'),
(65, 10, 2, '2024-11-05'),
(65, 16, 4, '2024-11-02'),
(66, 11, 4, '2024-11-02'),
(66, 19, 5, '2024-10-11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_nguoithan`
--

CREATE TABLE `nhanvien_nguoithan` (
  `IDNhanVien` int(11) NOT NULL,
  `TenNguoiThan` varchar(50) NOT NULL,
  `SDTNguoiThan` varchar(50) NOT NULL,
  `QuanHe` varchar(50) NOT NULL,
  `DiaChiNguoiThan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_nguoithan`
--

INSERT INTO `nhanvien_nguoithan` (`IDNhanVien`, `TenNguoiThan`, `SDTNguoiThan`, `QuanHe`, `DiaChiNguoiThan`) VALUES
(44, 'Hồ Văn Kho', '0925747867', 'Cha con', '102 Võ Văn Kiệt, Đà Nẵng'),
(46, 'Hoàng thị thu', '0298205564', 'Vợ ', '123 Nguyễn Văn Cừ, HCM'),
(60, 'Trần Thị Hoa', '0963462625', 'Vợ', '102 Võ Văn Kiệt, HCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_nhom`
--

CREATE TABLE `nhanvien_nhom` (
  `IDNhanVien` int(11) NOT NULL,
  `IDNhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhanvien_nhom`
--

INSERT INTO `nhanvien_nhom` (`IDNhanVien`, `IDNhom`) VALUES
(59, 27),
(61, 27);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien_thongtin`
--

CREATE TABLE `nhanvien_thongtin` (
  `IDNhanVien` int(11) NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL DEFAULT '1',
  `SDT` varchar(50) NOT NULL,
  `EmailCaNhan` int(11) NOT NULL,
  `DiaChiThuongTru` varchar(100) NOT NULL,
  `DiaChiTamTru` varchar(100) NOT NULL,
  `CCCD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomnhanvien`
--

CREATE TABLE `nhomnhanvien` (
  `ID` int(11) NOT NULL,
  `TenNhom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nhomnhanvien`
--

INSERT INTO `nhomnhanvien` (`ID`, `TenNhom`) VALUES
(27, 'Nhóm An Ninh Mạng'),
(24, 'Nhóm Chăm Sóc Sức Khỏe'),
(13, 'Nhóm Hỗ Trợ Khách Hàng'),
(25, 'Nhóm IT Hỗ Trợ'),
(10, 'Nhóm Kế Toán'),
(30, 'Nhóm Kiểm Định Chất Lượng'),
(11, 'Nhóm Kinh Doanh'),
(19, 'Nhóm Kỹ Thuật'),
(31, 'Nhóm Logistics'),
(15, 'Nhóm Marketing'),
(16, 'Nhóm Nghiên Cứu & Phát Triển'),
(14, 'Nhóm Nhân Sự'),
(20, 'Nhóm Pháp Lý'),
(12, 'Nhóm Phát Triển Phần Mềm'),
(17, 'Nhóm Quản Lý Dự Án'),
(29, 'Nhóm Quản Lý Sản Xuất'),
(21, 'Nhóm Tài Chính'),
(18, 'Nhóm Thiết Kế Đồ Họa'),
(23, 'Nhóm Vận Hành'),
(22, 'Nhóm Đào Tạo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomphongban`
--

CREATE TABLE `nhomphongban` (
  `ID` int(11) NOT NULL,
  `TenNhom` varchar(50) NOT NULL,
  `IDChiNhanh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `ID` int(11) NOT NULL,
  `TenPhongBan` varchar(50) NOT NULL,
  `IDChiNhanh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`ID`, `TenPhongBan`, `IDChiNhanh`) VALUES
(35, 'Phòng An Ninh Mạng', 3),
(26, 'Phòng Chăm Sóc Khách Hàng', 62),
(8, 'Phòng Hành Chính - Nhân Sự', 18),
(22, 'Phòng IT (Công Nghệ Thông Tin)', 18),
(36, 'Phòng Kiểm Toán Nội Bộ', 3),
(20, 'Phòng Kinh Doanh', 18),
(34, 'Phòng Logistic', 16),
(21, 'Phòng Marketing', 18),
(27, 'Phòng Mua Hàng', 62),
(24, 'Phòng Nghiên Cứu và Phát Triển (R&D)', 59),
(23, 'Phòng Pháp Lý', 59),
(37, 'Phòng Quan Hệ Công Chúng (PR)', 60),
(28, 'Phòng Quản Lý Chất Lượng', 62),
(32, 'Phòng Quản Lý Dự Án', 63),
(25, 'Phòng Sản Xuất', 59),
(1, 'Phòng Tài Chính - Kế Toán', 18),
(31, 'Phòng Thiết Kế', 61),
(30, 'Phòng Truyền Thông', 61),
(33, 'Phòng Vận Hành', 63),
(29, 'Phòng Đào Tạo', 61);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `ID` int(4) NOT NULL,
  `MaSV` varchar(10) NOT NULL,
  `HoTen` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Anh` varchar(50) NOT NULL,
  `Lop` varchar(10) NOT NULL,
  `Tinh` varchar(10) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SoThich` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`ID`, `MaSV`, `HoTen`, `email`, `Anh`, `Lop`, `Tinh`, `GioiTinh`, `SoThich`) VALUES
(115, 'CD240115', 'Dam Thi Nga', 'Damthinga1953@gmail.com', 'CD240115.jpg', 'LTMT2', 'Nghe An', 'Nam', 'Nhay, '),
(118, 'CD240116', 'Lê Văn Luyện', 'hoangblytna2422001@gmail.com', 'CD240116.png', 'LTMT3', 'Nghe An', 'Nam', ''),
(119, 'CD240119', 'Nguyen Van AAA', 'hoangblytnaadu@gmail.com', 'CD240119.jpg', 'LTMT2', 'HaNoi', 'Nam', 'Mua, Nhay, ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `ID` int(11) NOT NULL,
  `MaSV` varchar(10) NOT NULL,
  `TK` varchar(10) NOT NULL,
  `MK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vaitro`
--

CREATE TABLE `vaitro` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `vaitro`
--

INSERT INTO `vaitro` (`ID`, `Ten`) VALUES
(1, 'Quản lí Phân Quyền'),
(2, 'Quản lí Nhân Viên'),
(3, 'Quản lí tổ chức'),
(4, 'Quản Lí Đào Tạo');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenBaoHiem` (`TenBaoHiem`),
  ADD KEY `IDNhanVien` (`ID`);

--
-- Chỉ mục cho bảng `calam`
--
ALTER TABLE `calam`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `capbac`
--
ALTER TABLE `capbac`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenCapBac` (`TenCapBac`),
  ADD KEY `CauTrucLuong` (`CauTrucLuong`);

--
-- Chỉ mục cho bảng `chamcong`
--
ALTER TABLE `chamcong`
  ADD PRIMARY KEY (`IDNhanVien`,`Ngay`),
  ADD KEY `IDNhanVien` (`IDNhanVien`,`IDCaLam`),
  ADD KEY `IDCaLam` (`IDCaLam`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ChiNhanh` (`ChiNhanh`);

--
-- Chỉ mục cho bảng `chucdanh`
--
ALTER TABLE `chucdanh`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenChucDanh` (`TenChucDanh`);

--
-- Chỉ mục cho bảng `chucdanh_vaitro`
--
ALTER TABLE `chucdanh_vaitro`
  ADD PRIMARY KEY (`IDChucDanh`,`IDVaiTro`),
  ADD UNIQUE KEY `IDChucDanh` (`IDChucDanh`,`IDVaiTro`),
  ADD KEY `IDVaiTro` (`IDVaiTro`);

--
-- Chỉ mục cho bảng `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `kynang`
--
ALTER TABLE `kynang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenKyNang` (`TenKyNang`);

--
-- Chỉ mục cho bảng `loaikhieunai`
--
ALTER TABLE `loaikhieunai`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `loainhanvien`
--
ALTER TABLE `loainhanvien`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `LoaiNhanVien` (`LoaiNhanVien`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `LoaiNhanVien` (`IDLoaiNhanVien`,`IDCapBac`),
  ADD KEY `CapBac` (`IDCapBac`);

--
-- Chỉ mục cho bảng `nhanvien_baohiem`
--
ALTER TABLE `nhanvien_baohiem`
  ADD PRIMARY KEY (`IDNhanVien`,`IDBaoHiem`),
  ADD UNIQUE KEY `IDNhanVien_2` (`IDNhanVien`,`IDBaoHiem`),
  ADD KEY `IDNhanVien` (`IDNhanVien`,`IDBaoHiem`),
  ADD KEY `IDBaoHiem` (`IDBaoHiem`);

--
-- Chỉ mục cho bảng `nhanvien_chucdanh`
--
ALTER TABLE `nhanvien_chucdanh`
  ADD PRIMARY KEY (`IDNhanVien`,`IDChucDanh`,`IDPhongBan`),
  ADD KEY `IDNhanVien` (`IDNhanVien`,`IDChucDanh`,`IDPhongBan`),
  ADD KEY `IDChucDanh` (`IDChucDanh`),
  ADD KEY `PhongBan` (`IDPhongBan`);

--
-- Chỉ mục cho bảng `nhanvien_hocvan`
--
ALTER TABLE `nhanvien_hocvan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDNhanVien` (`IDNhanVien`);

--
-- Chỉ mục cho bảng `nhanvien_kynang`
--
ALTER TABLE `nhanvien_kynang`
  ADD PRIMARY KEY (`IDNhanVien`,`IDKyNang`),
  ADD KEY `IDKyNang` (`IDKyNang`),
  ADD KEY `IDNhanVien` (`IDNhanVien`,`IDKyNang`);

--
-- Chỉ mục cho bảng `nhanvien_nguoithan`
--
ALTER TABLE `nhanvien_nguoithan`
  ADD PRIMARY KEY (`IDNhanVien`),
  ADD KEY `IDNhanVien` (`IDNhanVien`);

--
-- Chỉ mục cho bảng `nhanvien_nhom`
--
ALTER TABLE `nhanvien_nhom`
  ADD PRIMARY KEY (`IDNhanVien`,`IDNhom`),
  ADD KEY `IDNhanVien` (`IDNhanVien`,`IDNhom`),
  ADD KEY `IDNhom` (`IDNhom`);

--
-- Chỉ mục cho bảng `nhanvien_thongtin`
--
ALTER TABLE `nhanvien_thongtin`
  ADD PRIMARY KEY (`IDNhanVien`),
  ADD KEY `IDNhanVien` (`IDNhanVien`);

--
-- Chỉ mục cho bảng `nhomnhanvien`
--
ALTER TABLE `nhomnhanvien`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenNhom` (`TenNhom`);

--
-- Chỉ mục cho bảng `nhomphongban`
--
ALTER TABLE `nhomphongban`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDCongTy` (`IDChiNhanh`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `TenPhongBan` (`TenPhongBan`,`IDChiNhanh`),
  ADD KEY `IDChiNhanh` (`IDChiNhanh`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_group` (`MaSV`);

--
-- Chỉ mục cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `calam`
--
ALTER TABLE `calam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `capbac`
--
ALTER TABLE `capbac`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `chucdanh`
--
ALTER TABLE `chucdanh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `congty`
--
ALTER TABLE `congty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `kynang`
--
ALTER TABLE `kynang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `loaikhieunai`
--
ALTER TABLE `loaikhieunai`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loainhanvien`
--
ALTER TABLE `loainhanvien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `nhanvien_hocvan`
--
ALTER TABLE `nhanvien_hocvan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhomnhanvien`
--
ALTER TABLE `nhomnhanvien`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `nhomphongban`
--
ALTER TABLE `nhomphongban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phongban`
--
ALTER TABLE `phongban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `vaitro`
--
ALTER TABLE `vaitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chamcong`
--
ALTER TABLE `chamcong`
  ADD CONSTRAINT `chamcong_ibfk_2` FOREIGN KEY (`IDCaLam`) REFERENCES `calam` (`ID`);

--
-- Các ràng buộc cho bảng `chucdanh_vaitro`
--
ALTER TABLE `chucdanh_vaitro`
  ADD CONSTRAINT `chucdanh_vaitro_ibfk_1` FOREIGN KEY (`IDVaiTro`) REFERENCES `vaitro` (`ID`),
  ADD CONSTRAINT `chucdanh_vaitro_ibfk_2` FOREIGN KEY (`IDChucDanh`) REFERENCES `chucdanh` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`IDCapBac`) REFERENCES `capbac` (`ID`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`IDLoaiNhanVien`) REFERENCES `loainhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_baohiem`
--
ALTER TABLE `nhanvien_baohiem`
  ADD CONSTRAINT `nhanvien_baohiem_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`),
  ADD CONSTRAINT `nhanvien_baohiem_ibfk_2` FOREIGN KEY (`IDBaoHiem`) REFERENCES `baohiem` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_chucdanh`
--
ALTER TABLE `nhanvien_chucdanh`
  ADD CONSTRAINT `nhanvien_chucdanh_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`),
  ADD CONSTRAINT `nhanvien_chucdanh_ibfk_2` FOREIGN KEY (`IDChucDanh`) REFERENCES `chucdanh` (`ID`),
  ADD CONSTRAINT `nhanvien_chucdanh_ibfk_3` FOREIGN KEY (`IDPhongBan`) REFERENCES `phongban` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_hocvan`
--
ALTER TABLE `nhanvien_hocvan`
  ADD CONSTRAINT `nhanvien_hocvan_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_kynang`
--
ALTER TABLE `nhanvien_kynang`
  ADD CONSTRAINT `nhanvien_kynang_ibfk_1` FOREIGN KEY (`IDKyNang`) REFERENCES `kynang` (`ID`),
  ADD CONSTRAINT `nhanvien_kynang_ibfk_2` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_nguoithan`
--
ALTER TABLE `nhanvien_nguoithan`
  ADD CONSTRAINT `nhanvien_nguoithan_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_nhom`
--
ALTER TABLE `nhanvien_nhom`
  ADD CONSTRAINT `nhanvien_nhom_ibfk_1` FOREIGN KEY (`IDNhom`) REFERENCES `nhomnhanvien` (`ID`),
  ADD CONSTRAINT `nhanvien_nhom_ibfk_2` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `nhanvien_thongtin`
--
ALTER TABLE `nhanvien_thongtin`
  ADD CONSTRAINT `nhanvien_thongtin_ibfk_1` FOREIGN KEY (`IDNhanVien`) REFERENCES `nhanvien` (`ID`);

--
-- Các ràng buộc cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD CONSTRAINT `phongban_ibfk_1` FOREIGN KEY (`IDChiNhanh`) REFERENCES `chinhanh` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
