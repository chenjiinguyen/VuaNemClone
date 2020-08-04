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

 Date: 04/08/2020 04:16:00
*/


-- ----------------------------
-- Table structure for KICHTHUOC
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[KICHTHUOC]') AND type IN ('U'))
	DROP TABLE [dbo].[KICHTHUOC]
GO

CREATE TABLE [dbo].[KICHTHUOC] (
  [MAKICHTHUOC] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [MALOAI] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [TENKICHTHUOC] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[KICHTHUOC] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of KICHTHUOC
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT001', N'N    ', N'120x190cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT002', N'N    ', N'120x200cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT003', N'N    ', N'150x190cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT004', N'N    ', N'160x200cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT005', N'N    ', N'180x200cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT006', N'N    ', N'200x200cm')
GO

INSERT INTO [dbo].[KICHTHUOC] VALUES (N'KT007', N'N    ', N'200x220cm')
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
  [MAKICHTHUOC] char(5) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [GIA] float(53)  NULL,
  [THONGTIN] ntext COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [HINHMINHHOA] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[SANPHAM] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of SANPHAM
-- ----------------------------
BEGIN TRANSACTION
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP001', N'Nệm lò xo Lady Americana Oklahoma', N'N    ', N'TH010', N'KT007', N'21868330', N'Chất lượng vượt trội bên trong, kết cấu tinh tế bên ngoài, đó là những gì chúng tôi tìm thấy ở chiếc nệm lò xo Lady Americana Oklahoma. Là sản phẩm tiên phong trong seri nệm Lady Americana, Oklahoma được xem như đứa con tinh thần của bộ sưu tập Sleep Better Live Better.</br></br>Nệm Oklahoma cấu tạo bởi hệ thống lò xo túi độc lập hình ống trụ ứng dụng công nghệ tiên tiến đạt chuẩn quốc tế. Mỗi cuộn lò xo bọc trong từng túi vải riêng biệt bằng máy chuyên dụng tự động, kết nối với nhau nhờ lớp keo dính siêu chặt chẽ, các cuộn lò xo chỉ tiếp xúc với nhau thông qua hai lớp túi vải.', N'lady_americana_oklahoma_4_.jpg')
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP002', N'Nệm lò xo Lady Americana New Mexico', N'N    ', N'TH010', N'KT007', N'9251000', N'AA', N'lady_americana_new_mexico_2_.jpg')
GO

INSERT INTO [dbo].[SANPHAM] VALUES (N'SP003', N'Nệm Foam Amando Comodo Luxury', N'N    ', N'TH001', N'KT007', N'15050000', N'AAA', N'thumb-roll-mattress_3_.jpg')
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
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Primary Key structure for table KICHTHUOC
-- ----------------------------
ALTER TABLE [dbo].[KICHTHUOC] ADD CONSTRAINT [PK__KICHTHUO__CACE02660E3D47BF] PRIMARY KEY CLUSTERED ([MAKICHTHUOC])
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
-- Foreign Keys structure for table KICHTHUOC
-- ----------------------------
ALTER TABLE [dbo].[KICHTHUOC] ADD CONSTRAINT [FK__KICHTHUOC__MALOA__4BAC3F29] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAI] ([MALOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
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
ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [FK__SANPHAM__MAKICHT__5165187F] FOREIGN KEY ([MAKICHTHUOC]) REFERENCES [dbo].[KICHTHUOC] ([MAKICHTHUOC]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [FK__SANPHAM__MATHUON__52593CB8] FOREIGN KEY ([MATHUONGHIEU]) REFERENCES [dbo].[THUONGHIEU] ([MATHUONGHIEU]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[SANPHAM] ADD CONSTRAINT [FK__SANPHAM__MALOAI__5441852A] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAI] ([MALOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table THUONGHIEU
-- ----------------------------
ALTER TABLE [dbo].[THUONGHIEU] ADD CONSTRAINT [FK__THUONGHIE__MALOA__4E88ABD4] FOREIGN KEY ([MALOAI]) REFERENCES [dbo].[LOAI] ([MALOAI]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

