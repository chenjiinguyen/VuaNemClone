/*
 Navicat Premium Data Transfer

 Source Server         : SQL Server
 Source Server Type    : SQL Server
 Source Server Version : 14003048
 Source Host           : localhost:1433
 Source Catalog        : dbQuanLiNem
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003048
 File Encoding         : 65001

 Date: 11/08/2020 17:21:45
*/

-- ----------------------------
-- Create DATABASE dbQuanLiNem
-- ----------------------------
CREATE DATABASE dbQuanLiNem
GO
USE dbQuanLiNem
GO
-- ----------------------------
-- Table structure for CHITIETHOADON
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[CHITIETHOADON]') AND type IN ('U'))
	DROP TABLE [dbo].[CHITIETHOADON]
GO

CREATE TABLE [dbo].[CHITIETHOADON] (
  [MAHD] int  NOT NULL,
  [MASANPHAM] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SOLUONG] int  NULL
)
GO

ALTER TABLE [dbo].[CHITIETHOADON] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of CHITIETHOADON
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for HOADON
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[HOADON]') AND type IN ('U'))
	DROP TABLE [dbo].[HOADON]
GO

CREATE TABLE [dbo].[HOADON] (
  [MAHD] int  IDENTITY(1,1) NOT NULL,
  [USERNAME] char(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [NGAYTAO] datetime  NOT NULL
)
GO

ALTER TABLE [dbo].[HOADON] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of HOADON
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[HOADON] ON
GO

SET IDENTITY_INSERT [dbo].[HOADON] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for KHACHHANG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[KHACHHANG]') AND type IN ('U'))
	DROP TABLE [dbo].[KHACHHANG]
GO

CREATE TABLE [dbo].[KHACHHANG] (
  [USERNAME] char(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [HOTEN] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [EMAIL] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MATKHAU] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SDT] varchar(11) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[KHACHHANG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of KHACHHANG
-- ----------------------------
BEGIN TRANSACTION
GO

COMMIT
GO


-- ----------------------------
-- Table structure for LOAI
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAI]') AND type IN ('U'))
	DROP TABLE [dbo].[LOAI]
GO

CREATE TABLE [dbo].[LOAI] (
  [MALOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENLOAI] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[LOAI] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of LOAI
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[LOAI] VALUES (N'CGG  ', N'Chăn Ga Gối')
GO

INSERT INTO [dbo].[LOAI] VALUES (N'G    ', N'Giường')
GO

INSERT INTO [dbo].[LOAI] VALUES (N'N    ', N'Nệm')
GO

INSERT INTO [dbo].[LOAI] VALUES (N'PK   ', N'Phụ Kiện')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_CHATLIEU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_CHATLIEU]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_CHATLIEU]
GO

CREATE TABLE [dbo].[NEM_CHATLIEU] (
  [MACHATLIEU] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENCHATLIEU] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_CHATLIEU] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_CHATLIEU
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL001', N'Cao su')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL002', N'Cao su tự nhiên')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL003', N'Foam')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL004', N'Foam Tổng hợp')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL005', N'Gel Memory Foam')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL006', N'Lò xo giàn')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL007', N'Lò xo túi')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL008', N'Memory Foam')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL009', N'Polyester')
GO

INSERT INTO [dbo].[NEM_CHATLIEU] VALUES (N'CL010', N'Polyester kháng khuẩn')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_CHUNGLOAI
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_CHUNGLOAI]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_CHUNGLOAI]
GO

CREATE TABLE [dbo].[NEM_CHUNGLOAI] (
  [MACHUNGLOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENCHUNGLOAI] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_CHUNGLOAI] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_CHUNGLOAI
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_CHUNGLOAI] VALUES (N'CL001', N'Nệm Bông Ép')
GO

INSERT INTO [dbo].[NEM_CHUNGLOAI] VALUES (N'CL002', N'Nệm Foam')
GO

INSERT INTO [dbo].[NEM_CHUNGLOAI] VALUES (N'CL003', N'Nệm Cao Su')
GO

INSERT INTO [dbo].[NEM_CHUNGLOAI] VALUES (N'CL004', N'Nệm Lò Xo')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_DACDIEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_DACDIEM]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_DACDIEM]
GO

CREATE TABLE [dbo].[NEM_DACDIEM] (
  [MASANPHAM] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [DACDIEM01] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DACDIEM02] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [DACDIEM03] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_DACDIEM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_DACDIEM
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP001', N'Lò xo túi phân bổ trọng lượng tốt', N'Lớp mút hộp gia tăng hỗ trợ cạnh nệm', N'Mặt vải dệt kim sang trọng')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP002', N'Lớp pillow-top, mút nệm gia tăng sự êm ái', N'Vỏ nệm làm từ vải dệt kim cao cấp', N'Lò xo túi phân bổ áp lực lên điểm tiếp xúc')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP003', N'Cấu tạo 4 lớp Foam công nghệ tiên tiến', N'Cooling Gel giúp bề mặt nệm thoáng mát', N'Vải nệm dây kéo ẩn ôm sát, dễ tháo rời vệ sinh')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP036', N'Hệ thống lò xo túi ngăn chặn vấn đề cột sống', N'Mút lót lượn sóng lưu thông khí dễ dàng', N'Mặt vải dệt kim kết hợp sợi gòn công nghiệp')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP037', N'Hệ thống lò xo túi độc lập', N'Nâng đỡ 7 vùng cơ thể', N'Mặt vải dệt kim sang trọng')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP038', N'Cấu tạo 3 lớp nệm', N'Vải Cooling thoáng mát', N'Trọng lượng nhẹ')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP039', N'Công nghệ kháng khuẩn Talasilver', N'Loại bỏ nguy cơ dị ứng da', N'Áo nệm phủ sinh học Nanobionic')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP040', N'Hệ thống lò xo túi', N'Hỗ trợ nâng đỡ cơ thể', N'Kháng khuẩn tối ưu')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP041', N'Công nghệ thoáng khí Airtech', N'Lớp viền Bodyfit liền mạch', N'Nano Silver - ion bạc ức chế vi khuẩn')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP042', N'Nguyên liệu thép nhập khẩu bền bỉ', N'Bảo vệ cột sống toàn diện', N'Ứng dụng công nghệ kháng khuẩn Silvadur')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP043', N'Nổi bật với họa tiết khóa Sol cách điệu', N'Lớp cao su latexco® có độ bền hoàn hảo', N'Kết hợp 3 lớp mút với tính năng vượt trội')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP044', N'Bảo vệ tối ưu cột sống', N'Kháng khuẩn, thoáng khí', N'Lớp Plush Top hỗ trợ nâng đỡ hoàn hảo')
GO

INSERT INTO [dbo].[NEM_DACDIEM] VALUES (N'SP045', N'Hỗ trợ thêm 3 vùng trọng điểm của cơ thể', N'Công nghệ HourGlass Support® độc quyền', N'Lớp Memory Foam có độ bền cao')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_DOCUNG
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_DOCUNG]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_DOCUNG]
GO

CREATE TABLE [dbo].[NEM_DOCUNG] (
  [MADOCUNG] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENDOCUNG] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_DOCUNG] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_DOCUNG
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_DOCUNG] VALUES (N'DC001', N'Cứng')
GO

INSERT INTO [dbo].[NEM_DOCUNG] VALUES (N'DC002', N'Mềm')
GO

INSERT INTO [dbo].[NEM_DOCUNG] VALUES (N'DC003', N'Trung Bình')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_THIETKE
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_THIETKE]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_THIETKE]
GO

CREATE TABLE [dbo].[NEM_THIETKE] (
  [MATHIETKE] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENTHIETKE] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_THIETKE] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_THIETKE
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK001', N'Nệm gấp 2')
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK002', N'Nệm gấp 3')
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK003', N'Nệm thẳng')
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK004', N'Nệm trong hộp')
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK005', N'Nệm thẳng Bé trai')
GO

INSERT INTO [dbo].[NEM_THIETKE] VALUES (N'TK006', N'Nệm thẳng Bé gái')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for NEM_THONGTINTHEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[NEM_THONGTINTHEM]') AND type IN ('U'))
	DROP TABLE [dbo].[NEM_THONGTINTHEM]
GO

CREATE TABLE [dbo].[NEM_THONGTINTHEM] (
  [MASANPHAM] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MADOCUNG] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MATHIETKE] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MACHUNGLOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MACHATLIEU] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[NEM_THONGTINTHEM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of NEM_THONGTINTHEM
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP001', N'DC001', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP002', N'DC001', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP003', N'DC002', N'TK003', N'CL002', N'CL003')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP036', N'DC003', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP037', N'DC001', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP038', N'DC001', N'TK003', N'CL002', N'CL003')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP039', N'DC003', N'TK003', N'CL003', N'CL001')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP040', N'DC003', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP041', N'DC003', N'TK003', N'CL003', N'CL001')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP042', N'DC003', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP043', N'DC002', N'TK003', N'CL004', N'CL007')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP044', N'DC003', N'TK003', N'CL004', N'CL006')
GO

INSERT INTO [dbo].[NEM_THONGTINTHEM] VALUES (N'SP045', N'DC001', N'TK003', N'CL004', N'CL007')
GO

COMMIT
GO


-- ----------------------------
-- Table structure for SANPHAM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[SANPHAM]') AND type IN ('U'))
	DROP TABLE [dbo].[SANPHAM]
GO

CREATE TABLE [dbo].[SANPHAM] (
  [MASANPHAM] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [TENSANPHAM] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MALOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [MATHUONGHIEU] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GIA] float(53)  NULL,
  [HINHMINHHOA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [NGAYTAO] date  NULL,
  [THONGTIN] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SANPHAM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SANPHAM
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP001', N'Nệm lò xo Lady Americana Oklahoma', N'N    ', N'TH010', N'21868330', N'lady_americana_oklahoma_4_.jpg', N'2020-07-01', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP002', N'Nệm lò xo Lady Americana New Mexico', N'N    ', N'TH010', N'9251000', N'lady_americana_new_mexico_2_.jpg', N'2020-07-01', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP003', N'Nệm Foam Amando Comodo Luxury', N'N    ', N'TH001', N'15050000', N'thumb-roll-mattress_3_.jpg', N'2020-07-01', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP004', N'Bộ phủ Dreamland nhủ nhung 5CT', N'CGG  ', N'TH011', N'999001', N'b_ph_dreamland_nh_nhung_5ct_1_.jpg', N'2020-07-01', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP005', N'Chăn chần Amando Promo Microfiber', N'CGG  ', N'TH012', N'299000', N'ch_n_ch_n_amd_promo_microfiber_9_.jpg', N'2020-08-01', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP006', N'Bộ ga chun Sleeping Comfort Tencel 4CT', N'CGG  ', N'TH013', N'799000', N'2492_b_ga_chun_spcf_tencel_4ct_2_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP007', N'Chăn chần Amando Promo Microfiber', N'CGG  ', N'TH001', N'299000', N'ch_n_ch_n_amd_promo_microfiber_9_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP008', N'Bộ ga chun Arena Microfiber Promo', N'CGG  ', N'TH014', N'299000', N'2452_arena_promo_microfiber_5_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP009', N'Bộ chăn ga Amando Microfiber', N'CGG  ', N'TH012', N'934800', N'amd-microfiber-thumb.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP010', N'Bộ ga chun Arena cotton 4 chi tiết', N'CGG  ', N'TH014', N'1358000', N'24520014_7_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP011', N'Bộ ga bọc vỏ chăn chần Amando Tencel 5CT', N'CGG  ', N'TH012', N'2320801', N'amd-tencel-5ct_2.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP012', N'Bộ ga chun Canada Cotton Ai Cập', N'CGG  ', N'TH015', N'1445000', N'24420027.28_3.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP013', N'Bộ chăn ga phủ Canada cotton Ai Cập', N'CGG  ', N'TH015', N'12750000', N'22910013.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP014', N'Bộ ga gối ROYAL Ngọc Hạnh cotton 4CT', N'CGG  ', N'TH016', N'552500', N'24720054-ngochanh_3.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP015', N'Chăn chần hè Canada', N'CGG  ', N'TH015', N'2210000', N'28410017.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP016', N'Gối tựa lông cừu Sleeping Comfort', N'PK   ', N'TH017', N'199000', N'goi-long-cuu.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP017', N'Gối trang trí Arena', N'PK   ', N'TH018', N'126400', N'g_i_trang_tr_arena_1__1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP018', N'Gối Aeroflow iCool', N'PK   ', N'TH019', N'809100', N'aeroflow_icool_3__1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP019', N'Nệm đa năng Aeroflow Topper', N'PK   ', N'TH019', N'3700800', N'603cee00497fb421ed6e.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP020', N'Bảo vệ nệm chống trượt Sleeping Comfort', N'PK   ', N'TH017', N'380800', N'3183-m.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP021', N'Ruột gối nằm Doona Microfiber CC', N'PK   ', N'TH020', N'318400', N'3213-0002-2_2.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP022', N'Gối massage Sleeping Comfort', N'PK   ', N'TH017', N'245000', N'massage-spcf.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP023', N'Ruột gối bông xơ Doona', N'PK   ', N'TH020', N'124000', N'15f5a0f8b952430c1a43.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP024', N'Bảo vệ đệm Doona Bamboo chống thấm', N'PK   ', N'TH020', N'550400', N'3314-bamboo-doona.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP025', N'Gối MYM bông xơ (kèm vỏ)', N'PK   ', N'TH018', N'99000', N'3197-mym-40x60_2_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP026', N'Giường gỗ Baya Albany', N'G    ', N'TH021', N'6490000', N'giuong-albany-1089127_2.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP027', N'Giường gỗ Baya Harris', N'G    ', N'TH021', N'5990000', N'harris_bed_oak_oak_mdf_oak_veneer_baya_1026580_front.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP028', N'Giường gỗ Baya Ali', N'G    ', N'TH021', N'3490000', N'ali_bed_pinewood_baya_1000412_front.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP029', N'Giường Da Cao Cấp Amando Torino', N'G    ', N'TH022', N'6000004', N'torino-41.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP030', N'Giường Cao Cấp Amando Milan', N'G    ', N'TH022', N'5999997', N'd8664536aac1529f0bd0.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP031', N'Giường sắt Amando', N'G    ', N'TH022', N'4599000', N'simple-bed-frame-white-c_1_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP032', N'Giường gỗ Baya Rally', N'G    ', N'TH021', N'4490000', N'rally_bed_rubber_wood_plywood_white_baya_1035537_corner.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP033', N'Giường Goby', N'G    ', N'TH022', N'10625000', N'goby-web-3-10.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP034', N'Giường gỗ Baya Kitka', N'G    ', N'TH021', N'5490000', N'kitka_bed_rubber_wood_plywood_walnut_uma_1064292_front.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP036', N'Nệm lò xo Lady Americana Florida', N'N    ', N'TH010', N'14760790', N'10.florida_1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP037', N'Nệm lò xo Lady Americana Align', N'N    ', N'TH010', N'49610000', N'lady_americana_align_3_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP038', N'Nệm Foam Amando LAmore', N'N    ', N'TH001', N'6710001', N'l_amore_2_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP039', N'Nệm cao su Dunlopillo World Pure', N'N    ', N'TH003', N'36951750', N'dunlopillo_latex_world_pure_2_.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP040', N'Nệm lò xo Dunlopillo Diamond Grande', N'N    ', N'TH003', N'7356750', N'19.diamond_1_1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP041', N'Nệm cao su Dunlopillo World Relax', N'N    ', N'TH003', N'20474250', N'14.relax.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP042', N'Nệm lò xo Dunlopillo Grimsby', N'N    ', N'TH003', N'14745000', N'16.grimsby_1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP043', N'Nệm lò xo Therapedic Rhapsody in Blue', N'N    ', N'TH003', N'57890000', N'7._rhapsody_in_blue.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP044', N'Nệm lò xo Dunlopillo Spine O Master', N'N    ', N'TH003', N'20147000', N'15.spine_o_master_1.jpg', N'2020-08-09', NULL)
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP045', N'Nệm lò xo Therapedic Elite Tight Top', N'N    ', N'TH009', N'19490000', N'12.elite_tight_top.jpg', N'2020-08-09', NULL)
GO

COMMIT
GO


-- ----------------------------
-- Table structure for THUONGHIEU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[THUONGHIEU]') AND type IN ('U'))
	DROP TABLE [dbo].[THUONGHIEU]
GO

CREATE TABLE [dbo].[THUONGHIEU] (
  [MATHUONGHIEU] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MALOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TENTHUONGHIEU] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[THUONGHIEU] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of THUONGHIEU
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH001', N'N    ', N'Amando')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH002', N'N    ', N'Aeroflow')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH003', N'N    ', N'Dunlopillo')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH004', N'N    ', N'Kim Cương')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH005', N'N    ', N'Liên Á')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH006', N'N    ', N'Goodnight')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH007', N'N    ', N'Cao su Gummi')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH008', N'N    ', N'Tempur')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH009', N'N    ', N'Therapedic')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH010', N'N    ', N'Lady Americana')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH011', N'CGG  ', N'Dreamland')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH012', N'CGG  ', N'Amando')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH013', N'CGG  ', N'Others')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH014', N'CGG  ', N'Arena')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH015', N'CGG  ', N'Canada')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH016', N'CGG  ', N'Royal')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH017', N'PK   ', N'Sleeping Comfort')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH018', N'PK   ', N'Arena')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH019', N'PK   ', N'Aeroflow')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH020', N'PK   ', N'Doona')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH021', N'G    ', N'Baya')
GO

INSERT INTO [dbo].[THUONGHIEU] VALUES (N'TH022', N'G    ', N'Amando')
GO

COMMIT
GO


-- ----------------------------
-- function structure for GET_NEM_TT
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GET_NEM_TT]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[GET_NEM_TT]
GO

CREATE FUNCTION [dbo].[GET_NEM_TT] (
)
RETURNS TABLE
AS
	RETURN(
		SELECT TT.MASANPHAM, TENCHUNGLOAI, TENDOCUNG, TENTHIETKE, TENCHATLIEU, DACDIEM01, DACDIEM02, DACDIEM03
		FROM NEM_THONGTINTHEM TT, NEM_DOCUNG DC,NEM_THIETKE TK, NEM_CHATLIEU CL, NEM_CHUNGLOAI CHL, NEM_DACDIEM DD
		WHERE TT.MACHUNGLOAI = CHL.MACHUNGLOAI
		AND TT.MATHIETKE = TK.MATHIETKE
		AND TT.MADOCUNG = DC.MADOCUNG
		AND TT.MACHATLIEU = CL.MACHATLIEU
		AND TT.MASANPHAM = DD.MASANPHAM
	)
GO


-- ----------------------------
-- function structure for GET_LIST_NEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GET_LIST_NEM]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[GET_LIST_NEM]
GO

CREATE FUNCTION [dbo].[GET_LIST_NEM] (
)
RETURNS TABLE
AS
RETURN(
			SELECT SP.MASANPHAM, TENSANPHAM, TENTHUONGHIEU, GIA, HINHMINHHOA, TENCHUNGLOAI, TENDOCUNG, TENTHIETKE, TENCHATLIEU, DACDIEM01, DACDIEM02, DACDIEM03
			FROM SANPHAM SP, DBO.GET_NEM_TT() TT, THUONGHIEU TH
			WHERE SP.MASANPHAM = TT.MASANPHAM
			AND SP.MATHUONGHIEU = TH.MATHUONGHIEU
			AND SP.MALOAI = 'N'			
			)
GO


-- ----------------------------
-- function structure for GET_NEM
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GET_NEM]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[GET_NEM]
GO

CREATE FUNCTION [dbo].[GET_NEM] (
@MASANPHAM CHAR(5)
)
RETURNS TABLE
AS
RETURN(
			SELECT SP.MASANPHAM, TENSANPHAM, TENTHUONGHIEU, GIA, HINHMINHHOA, TENCHUNGLOAI, TENDOCUNG, TENTHIETKE, TENCHATLIEU, DACDIEM01, DACDIEM02, DACDIEM03
			FROM SANPHAM SP, DBO.GET_NEM_TT() TT, THUONGHIEU TH
			WHERE SP.MASANPHAM = TT.MASANPHAM
			AND SP.MATHUONGHIEU = TH.MATHUONGHIEU
			AND SP.MASANPHAM = @MASANPHAM

			)
GO


-- ----------------------------
-- function structure for GET_NEM_BY_TH
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[GET_NEM_BY_TH]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[GET_NEM_BY_TH]
GO

CREATE FUNCTION [dbo].[GET_NEM_BY_TH] (
@MATHUONGHIEU CHAR(5)
)
RETURNS TABLE
AS
RETURN(
			SELECT SP.MASANPHAM, TENSANPHAM, TENTHUONGHIEU, GIA, HINHMINHHOA, TENCHUNGLOAI, TENDOCUNG, TENTHIETKE, TENCHATLIEU, DACDIEM01, DACDIEM02, DACDIEM03
			FROM SANPHAM SP, DBO.GET_NEM_TT() TT, THUONGHIEU TH
			WHERE SP.MASANPHAM = TT.MASANPHAM
			AND SP.MATHUONGHIEU = TH.MATHUONGHIEU
			AND SP.MATHUONGHIEU = @MATHUONGHIEU
			)
GO


-- ----------------------------
-- Primary Key structure for table CHITIETHOADON
-- ----------------------------
ALTER TABLE [dbo].[CHITIETHOADON] ADD CONSTRAINT [PK__CHITIETS__596C6C478560A0A4] PRIMARY KEY CLUSTERED ([MAHD], [MASANPHAM])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for HOADON
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[HOADON]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table HOADON
-- ----------------------------
ALTER TABLE [dbo].[HOADON] ADD CONSTRAINT [PK__HOADON__603F20CE2A1286FD] PRIMARY KEY CLUSTERED ([MAHD])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table KHACHHANG
-- ----------------------------
ALTER TABLE [dbo].[KHACHHANG] ADD CONSTRAINT [PK__KHACHHAN__B15BE12F5BA91133] PRIMARY KEY CLUSTERED ([USERNAME])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table LOAI
-- ----------------------------
ALTER TABLE [dbo].[LOAI] ADD CONSTRAINT [PK__LOAI__2F633F23E9D56F38] PRIMARY KEY CLUSTERED ([MALOAI])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_CHATLIEU
-- ----------------------------
ALTER TABLE [dbo].[NEM_CHATLIEU] ADD CONSTRAINT [PK__NEM_CHAT__80F939F88DE96A76] PRIMARY KEY CLUSTERED ([MACHATLIEU])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_CHUNGLOAI
-- ----------------------------
ALTER TABLE [dbo].[NEM_CHUNGLOAI] ADD CONSTRAINT [PK__CHUNGLOA__125148AB7D758AE3] PRIMARY KEY CLUSTERED ([MACHUNGLOAI])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_DACDIEM
-- ----------------------------
ALTER TABLE [dbo].[NEM_DACDIEM] ADD CONSTRAINT [PK__NEM_DACD__9534C892C157046B] PRIMARY KEY CLUSTERED ([MASANPHAM])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_DOCUNG
-- ----------------------------
ALTER TABLE [dbo].[NEM_DOCUNG] ADD CONSTRAINT [PK__CHUNGLOA__125148AB7D758AE3_copy1] PRIMARY KEY CLUSTERED ([MADOCUNG])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_THIETKE
-- ----------------------------
ALTER TABLE [dbo].[NEM_THIETKE] ADD CONSTRAINT [PK__NEM_THIE__AF996DE4EFE52CF2] PRIMARY KEY CLUSTERED ([MATHIETKE])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table NEM_THONGTINTHEM
-- ----------------------------
ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [PK__THONGTIN__9534C892CDDC1A3E] PRIMARY KEY CLUSTERED ([MASANPHAM])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table SANPHAM
-- ----------------------------
ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [PK__SANPHAM__9534C892E9F10A62] PRIMARY KEY CLUSTERED ([MASANPHAM])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table THUONGHIEU
-- ----------------------------
ALTER TABLE [dbo].[THUONGHIEU] ADD CONSTRAINT [PK__THUONGHI__B319F638644C3102] PRIMARY KEY CLUSTERED ([MATHUONGHIEU])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table CHITIETHOADON
-- ----------------------------
ALTER TABLE [dbo].[CHITIETHOADON] ADD CONSTRAINT [FK__CHITIETSAN__MAHD__208CD6FA] FOREIGN KEY ([MAHD]) REFERENCES [dbo].[HOADON] ([MAHD]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[CHITIETHOADON] ADD CONSTRAINT [FK__CHITIETSA__MASAN__2180FB33] FOREIGN KEY ([MASANPHAM]) REFERENCES [dbo].[SANPHAM] ([MASANPHAM]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table HOADON
-- ----------------------------
ALTER TABLE [dbo].[HOADON] ADD CONSTRAINT [FK__HOADON__USERNAME__1DB06A4F] FOREIGN KEY ([USERNAME]) REFERENCES [dbo].[KHACHHANG] ([USERNAME]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NEM_DACDIEM
-- ----------------------------
ALTER TABLE [dbo].[NEM_DACDIEM] ADD CONSTRAINT [FK__NEM_DACDI__MASAN__03F0984C] FOREIGN KEY ([MASANPHAM]) REFERENCES [dbo].[SANPHAM] ([MASANPHAM]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table NEM_THONGTINTHEM
-- ----------------------------
ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [FK__NEM_THONG__MADOC__00200768] FOREIGN KEY ([MADOCUNG]) REFERENCES [dbo].[NEM_DOCUNG] ([MADOCUNG]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [FK__NEM_THONG__MACHA__01142BA1] FOREIGN KEY ([MACHATLIEU]) REFERENCES [dbo].[NEM_CHATLIEU] ([MACHATLIEU]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [FK__THONGTINN__MASAN__6FE99F9F] FOREIGN KEY ([MASANPHAM]) REFERENCES [dbo].[SANPHAM] ([MASANPHAM]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [FK__NEM_THONG__MACHU__797309D9] FOREIGN KEY ([MACHUNGLOAI]) REFERENCES [dbo].[NEM_CHUNGLOAI] ([MACHUNGLOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[NEM_THONGTINTHEM] ADD CONSTRAINT [FK__NEM_THONG__MATHI__7A672E12] FOREIGN KEY ([MATHIETKE]) REFERENCES [dbo].[NEM_THIETKE] ([MATHIETKE]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table SANPHAM
-- ----------------------------
ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [FK__SANPHAM__MATHUON__52593CB8] FOREIGN KEY ([MATHUONGHIEU]) REFERENCES [dbo].[THUONGHIEU] ([MATHUONGHIEU]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [FK__SANPHAM__MALOAI__5441852A] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAI] ([MALOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table THUONGHIEU
-- ----------------------------
ALTER TABLE [dbo].[THUONGHIEU] ADD CONSTRAINT [FK__THUONGHIE__MALOA__4E88ABD4] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAI] ([MALOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

