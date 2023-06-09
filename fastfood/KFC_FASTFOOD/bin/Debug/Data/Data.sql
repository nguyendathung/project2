USE [master]
GO
/****** Object:  Database [qlthucan]    Script Date: 12/23/2019 23:23:40 ******/
CREATE DATABASE [qlthucan]
 CONTAINMENT = NONE
 
ALTER DATABASE [qlthucan] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [qlthucan].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [qlthucan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [qlthucan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [qlthucan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [qlthucan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [qlthucan] SET ARITHABORT OFF 
GO
ALTER DATABASE [qlthucan] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [qlthucan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [qlthucan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [qlthucan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [qlthucan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [qlthucan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [qlthucan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [qlthucan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [qlthucan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [qlthucan] SET  DISABLE_BROKER 
GO
ALTER DATABASE [qlthucan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [qlthucan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [qlthucan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [qlthucan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [qlthucan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [qlthucan] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [qlthucan] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [qlthucan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [qlthucan] SET  MULTI_USER 
GO
ALTER DATABASE [qlthucan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [qlthucan] SET DB_CHAINING OFF 
GO
ALTER DATABASE [qlthucan] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [qlthucan] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [qlthucan] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [qlthucan] SET QUERY_STORE = OFF
GO
USE [qlthucan]
GO
/****** Object:  Table [dbo].[tbl_BangCap]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BangCap](
	[BangCapID] [int] IDENTITY(1,1) NOT NULL,
	[TenBangCap] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BangCapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_BoPhan]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_BoPhan](
	[BoPhanID] [int] IDENTITY(1,1) NOT NULL,
	[TenBoPhan] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[BoPhanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChamCong]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChamCong](
	[ChamCongID] [int] IDENTITY(1,1) NOT NULL,
	[Thang] [char](10) NULL,
	[NgayCongChuan] [int] NULL,
	[BoPhanID] [int] NULL,
	[NhanVienID] [int] NULL,
	[NgayDiLam] [int] NULL,
	[NgayNghi] [int] NULL,
	[NgayTinhLuong] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChamCongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChiTietBanKeLuong]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChiTietBanKeLuong](
	[ChiTietBanKeLuongID] [int] IDENTITY(1,1) NOT NULL,
	[ThangKeLuong] [char](10) NULL,
	[NhanVienID] [int] NULL,
	[TienLuongCung] [float] NULL,
	[NgayCongChuan] [int] NULL,
	[NgayTinhLuong] [int] NULL,
	[PhuCap] [float] NULL,
	[TongLuong] [float] NULL,
	[ThucLinh] [float] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK__tbl_ChiT__F93653E302BB2421] PRIMARY KEY CLUSTERED 
(
	[ChiTietBanKeLuongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ChucDanh]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ChucDanh](
	[ChucDanhID] [int] IDENTITY(1,1) NOT NULL,
	[TenChucDanh] [nvarchar](50) NULL,
	[TienLuong] [float] NULL,
	[PhuCap] [float] NULL,
 CONSTRAINT [PK_tbl_ChucDanh] PRIMARY KEY CLUSTERED 
(
	[ChucDanhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CTHD]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CTHD](
	[MaHD] [nvarchar](100) NOT NULL,
	[MaSP] [nvarchar](100) NULL,
	[SLMua] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DanToc]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DanToc](
	[DanTocID] [int] IDENTITY(1,1) NOT NULL,
	[TenDanToc] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[DanTocID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_GioiTinh]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_GioiTinh](
	[GioiTinhID] [bit] NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GioiTinhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoaDon]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoaDon](
	[MaHD] [nvarchar](100) NOT NULL,
	[TenKhach] [nvarchar](100) NULL,
	[NhanVienID] [int] NULL,
	[NgayLapHD] [date] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HoSoNhanVien]    Script Date: 12/23/2019 23:23:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HoSoNhanVien](
	[NhanVienID] [int] NOT NULL,
	[NgayVaoLam] [date] NULL,
	[DanTocID] [int] NULL,
	[TonGiaoID] [int] NULL,
	[TinhThanhID] [int] NULL,
	[BangCapID] [int] NULL,
	[GhiChu] [nvarchar](100) NULL,
	[ImagePath] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_LoaiSP]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_LoaiSP](
	[LoaiSPID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSP] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoaiSPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NghiepVu]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NghiepVu](
	[NghiepVuID] [int] IDENTITY(1,1) NOT NULL,
	[TenNghiepVu] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[NghiepVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NguoiDung]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NguoiDung](
	[NguoiDungID] [int] IDENTITY(1,1) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[QuanTri] [bit] NULL,
	[NhanVienID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[NguoiDungID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhaCungCap]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhaCungCap](
	[NCCID] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaCungCap] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[NCCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVien]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVien](
	[NhanVienID] [int] IDENTITY(1,1) NOT NULL,
	[MaNV] [nvarchar](10) NOT NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgaySinh] [date] NULL,
	[GioiTinhID] [bit] NULL,
	[DiaChi] [nvarchar](255) NULL,
	[SDT] [nvarchar](11) NULL,
	[Email] [nvarchar](150) NULL,
	[CMND] [nvarchar](10) NULL,
	[TrangThaiID] [bit] NULL,
 CONSTRAINT [PK__tbl_Nhan__E27FD7EA9D3B8CF5] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVienBoPhan]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVienBoPhan](
	[NhanVienID] [int] NOT NULL,
	[BoPhanID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_NhanVienBoPhan] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_NhanVienChucDanh]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_NhanVienChucDanh](
	[NhanVienID] [int] NOT NULL,
	[ChucDanhID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_NhanVienChucDanh] PRIMARY KEY CLUSTERED 
(
	[NhanVienID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_QuyenNguoiDung]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QuyenNguoiDung](
	[NguoiDungID] [int] NOT NULL,
	[NghiepVuID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[NguoiDungID] ASC,
	[NghiepVuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SanPham]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SanPham](
	[MaSP] [nvarchar](100) NOT NULL,
	[TenSP] [nvarchar](100) NULL,
	[NCCID] [int] NULL,
	[GiaTien] [float] NULL,
	[GiamGia] [int] NULL,
	[SoLuong] [int] NULL,
	[LoaiSPID] [int] NULL,
 CONSTRAINT [PK__tbl_SanP__2725081C878FB524] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThongTinCH]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThongTinCH](
	[StoreID] [int] NOT NULL,
	[CuaHang] [nvarchar](500) NULL,
	[DiaChiCH] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ThongTinCty]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ThongTinCty](
	[TenCTy] [nvarchar](500) NULL,
	[DiaChiCTy] [nvarchar](500) NULL,
	[MaSoThue] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TinhThanh]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TinhThanh](
	[TinhThanhID] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhThanh] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TinhThanhID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TonGiao]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TonGiao](
	[TonGiaoID] [int] IDENTITY(1,1) NOT NULL,
	[TenTonGiao] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[TonGiaoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_BangCap] ON 

INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (1, N'Đại học chính quy')
INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (2, N'Cao đẳng')
INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (3, N'Thạc sĩ')
INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (4, N'Tiến sĩ')
INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (5, N'Trung cấp')
INSERT [dbo].[tbl_BangCap] ([BangCapID], [TenBangCap]) VALUES (6, N'Tại chức')
SET IDENTITY_INSERT [dbo].[tbl_BangCap] OFF
SET IDENTITY_INSERT [dbo].[tbl_BoPhan] ON 

INSERT [dbo].[tbl_BoPhan] ([BoPhanID], [TenBoPhan]) VALUES (2, N'Văn phòng')
INSERT [dbo].[tbl_BoPhan] ([BoPhanID], [TenBoPhan]) VALUES (4, N'Cửa hàng')
SET IDENTITY_INSERT [dbo].[tbl_BoPhan] OFF
SET IDENTITY_INSERT [dbo].[tbl_ChamCong] ON 

INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (1, N'201912    ', 26, 2, 1, 0, 0, 0, N'', 1)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (2, N'201912    ', 26, 2, 2, 0, 0, 0, N'', 1)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (3, N'201912    ', 26, 2, 3, 0, 0, 0, N'', 1)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (4, N'201911    ', 26, 2, 1, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (5, N'201911    ', 26, 2, 2, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (6, N'201911    ', 26, 2, 3, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (7, N'201910    ', 26, 2, 1, 0, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (8, N'201910    ', 26, 2, 2, 0, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (9, N'201910    ', 25, 2, 3, 0, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (10, N'201910    ', 26, 4, 4, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (11, N'201910    ', 26, 4, 5, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (12, N'201910    ', 26, 4, 7, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (13, N'201909    ', 26, 2, 1, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (14, N'201909    ', 26, 2, 2, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (15, N'201909    ', 26, 2, 3, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (16, N'201909    ', 26, 4, 4, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (17, N'201909    ', 26, 4, 5, 24, 2, 24, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (18, N'201909    ', 26, 4, 7, 20, 6, 20, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (19, N'201911    ', 26, 2, 6, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (20, N'201911    ', 26, 2, 7, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (21, N'201911    ', 0, 2, 10, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (22, N'201911    ', 26, 4, 4, 24, 2, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (23, N'201911    ', 26, 4, 5, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (24, N'201911    ', 26, 4, 8, 22, 4, 22, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (25, N'201911    ', 26, 4, 9, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (26, N'201911    ', 26, 4, 11, 25, 1, 25, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (27, N'201911    ', 26, 4, 12, 26, 0, 26, N'', 2)
INSERT [dbo].[tbl_ChamCong] ([ChamCongID], [Thang], [NgayCongChuan], [BoPhanID], [NhanVienID], [NgayDiLam], [NgayNghi], [NgayTinhLuong], [GhiChu], [TrangThai]) VALUES (28, N'201911    ', 26, 4, 13, 23, 3, 23, N'', 2)
SET IDENTITY_INSERT [dbo].[tbl_ChamCong] OFF
SET IDENTITY_INSERT [dbo].[tbl_ChiTietBanKeLuong] ON 

INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (1, N'201911    ', 1, 20000000, 26, 26, 100000, 20000000, 20100000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (2, N'201911    ', 2, 6000000, 26, 26, 24000, 6000000, 6024000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (3, N'201911    ', 3, 15000000, 26, 26, 105000, 15000000, 15105000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (4, N'201910    ', 1, 20000000, 26, 26, 100000, 20000000, 20100000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (5, N'201910    ', 2, 6000000, 26, 26, 24000, 6000000, 6024000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (6, N'201910    ', 3, 7000000, 25, 26, 35000, 7280000, 7315000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (10, N'201910    ', 4, 15000000, 26, 26, 105000, 15000000, 15105000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (11, N'201910    ', 5, 4000000, 26, 26, 20000, 4000000, 4020000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (12, N'201910    ', 7, 4000000, 26, 26, 20000, 4000000, 4020000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (13, N'201909    ', 1, NULL, 26, 26, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (14, N'201909    ', 2, NULL, 26, 26, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (15, N'201909    ', 3, NULL, 26, 26, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (16, N'201909    ', 4, NULL, 26, 26, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (17, N'201909    ', 5, NULL, 26, 24, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (18, N'201909    ', 7, NULL, 26, 20, NULL, NULL, NULL, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (19, N'201911    ', 6, NULL, 26, 26, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (20, N'201911    ', 7, NULL, 26, 26, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (21, N'201911    ', 10, NULL, 0, 26, NULL, NULL, NULL, 1)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (22, N'201911    ', 4, 6000000, 26, 26, 24000, 6000000, 6024000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (23, N'201911    ', 5, 4000000, 26, 26, 20000, 4000000, 4020000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (24, N'201911    ', 8, 4000000, 26, 22, 20000, 3400000, 3420000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (25, N'201911    ', 9, 6000000, 26, 26, 24000, 6000000, 6024000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (26, N'201911    ', 11, 6000000, 26, 25, 24000, 5760000, 5784000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (27, N'201911    ', 12, 15000000, 26, 26, 105000, 15000000, 15105000, 2)
INSERT [dbo].[tbl_ChiTietBanKeLuong] ([ChiTietBanKeLuongID], [ThangKeLuong], [NhanVienID], [TienLuongCung], [NgayCongChuan], [NgayTinhLuong], [PhuCap], [TongLuong], [ThucLinh], [TrangThai]) VALUES (28, N'201911    ', 13, 6000000, 26, 23, 24000, 5280000, 5304000, 2)
SET IDENTITY_INSERT [dbo].[tbl_ChiTietBanKeLuong] OFF
SET IDENTITY_INSERT [dbo].[tbl_ChucDanh] ON 

INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (1, N'Lập trình viên', 20000000, 0.5)
INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (2, N'Nhân viên', 6000000, 0.4)
INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (3, N'Quản lý', 15000000, 0.7)
INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (4, N'IT Help Desk', 6000000, 0.4)
INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (5, N'Kế toán', 7000000, 0.5)
INSERT [dbo].[tbl_ChucDanh] ([ChucDanhID], [TenChucDanh], [TienLuong], [PhuCap]) VALUES (6, N'Bảo vệ', 4000000, 0.5)
SET IDENTITY_INSERT [dbo].[tbl_ChucDanh] OFF
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD001', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD002', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD001', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD001', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD003', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD003', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD003', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD002', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD004', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD005', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD006', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD006', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD007', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD008', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD008', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD009', N'SP001', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD009', N'SP004', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD009', N'SP002', 1)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD010', N'SP001', 3)
INSERT [dbo].[tbl_CTHD] ([MaHD], [MaSP], [SLMua]) VALUES (N'HD011', N'SP004', 2)
SET IDENTITY_INSERT [dbo].[tbl_DanToc] ON 

INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (1, N'Kinh')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (2, N'Thái')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (3, N'Ê Đê')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (4, N'Ba Na')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (5, N'Nùng')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (6, N'Tày')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (7, N'Mường')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (8, N'Gia Rai')
INSERT [dbo].[tbl_DanToc] ([DanTocID], [TenDanToc]) VALUES (10, N'Khơ me')
SET IDENTITY_INSERT [dbo].[tbl_DanToc] OFF
INSERT [dbo].[tbl_GioiTinh] ([GioiTinhID], [GioiTinh]) VALUES (0, N'Nữ')
INSERT [dbo].[tbl_GioiTinh] ([GioiTinhID], [GioiTinh]) VALUES (1, N'Nam')
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD001', N'Anh Hùng', 1, CAST(N'2019-11-27' AS Date), 128000)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD002', N'Anh Minh', 1, CAST(N'2019-11-27' AS Date), 114960)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD003', N'Hùng Đẹp Trai', 1, CAST(N'2018-11-27' AS Date), 128000)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD004', N'ádasd', 1, CAST(N'2019-11-27' AS Date), 12000)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD005', N'klljkljkl', 1, CAST(N'2019-11-27' AS Date), 12000)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD006', N'Hùng', 1, CAST(N'2019-12-04' AS Date), 78640)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD007', N'Công', 1, CAST(N'2019-12-05' AS Date), 12000)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD008', N'Cường', 1, CAST(N'2019-12-06' AS Date), 78640)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD009', N'Anh Hùng', 1, CAST(N'2019-12-16' AS Date), 90640)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD010', N'Thy', 1, CAST(N'2019-12-17' AS Date), 35640)
INSERT [dbo].[tbl_HoaDon] ([MaHD], [TenKhach], [NhanVienID], [NgayLapHD], [TongTien]) VALUES (N'HD011', N'Anh hùng', 1, CAST(N'2019-12-18' AS Date), 131920)
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (1, CAST(N'2019-11-30' AS Date), 1, 9, 10, 3, N'', N'\AnhNV\Anh2.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (2, CAST(N'2019-11-30' AS Date), 1, 4, 10, 1, N'', N'\AnhNV\Anh1025.JPG')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (3, CAST(N'2019-11-30' AS Date), 1, 4, 56, 1, N'', N'\AnhNV\Anh1027.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (4, CAST(N'2019-11-30' AS Date), 1, 4, 29, 1, N'', N'\AnhNV\Anh1022.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (5, CAST(N'2019-11-30' AS Date), 1, 9, 7, 1, N'', N'\AnhNV\Anh1029.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (6, CAST(N'2019-11-30' AS Date), 1, 1, 2, 1, N'', N'\AnhNV\Anh1028.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (7, CAST(N'2019-11-30' AS Date), 1, 1, 5, 2, N'', N'\AnhNV\Anh1024.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (8, CAST(N'2019-11-30' AS Date), 1, 1, 29, 5, N'', N'\AnhNV\Anh1037.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (9, CAST(N'2019-11-30' AS Date), 1, 4, 29, 1, N'', N'\AnhNV\Anh1034.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (10, CAST(N'2019-11-30' AS Date), 1, 1, 11, 2, N'', N'\AnhNV\kich-thuoc-anh-3x4.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (11, CAST(N'2019-11-30' AS Date), 1, 4, 29, 2, N'', N'\AnhNV\1506410915_anhthe.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (12, CAST(N'2019-11-30' AS Date), 1, 1, 29, 2, N'', N'\AnhNV\anh-the-di-xkld-nhat-ban.jpg')
INSERT [dbo].[tbl_HoSoNhanVien] ([NhanVienID], [NgayVaoLam], [DanTocID], [TonGiaoID], [TinhThanhID], [BangCapID], [GhiChu], [ImagePath]) VALUES (13, CAST(N'2019-11-30' AS Date), 1, 4, 13, 2, N'', N'\AnhNV\DSC_1199.JPG')
SET IDENTITY_INSERT [dbo].[tbl_LoaiSP] ON 

INSERT [dbo].[tbl_LoaiSP] ([LoaiSPID], [TenLoaiSP]) VALUES (1, N'Món ăn')
INSERT [dbo].[tbl_LoaiSP] ([LoaiSPID], [TenLoaiSP]) VALUES (2, N'Thức uống')
SET IDENTITY_INSERT [dbo].[tbl_LoaiSP] OFF
SET IDENTITY_INSERT [dbo].[tbl_NghiepVu] ON 

INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (1, N'Quản lý hệ thống', N'SystemManager')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (2, N'Quản lý nhân sự', N'EmployessManager')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (3, N'Quản lý tiền lương', N'SalaryManager')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (4, N'Thống kê - Báo cáo', N'ReportManager')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (5, N'Quản lý sản phẩm', N'ProductManager')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (6, N'Gọi món', N'Order')
INSERT [dbo].[tbl_NghiepVu] ([NghiepVuID], [TenNghiepVu], [URL]) VALUES (7, N'Quản lý danh mục', N'CategoryManager')
SET IDENTITY_INSERT [dbo].[tbl_NghiepVu] OFF
SET IDENTITY_INSERT [dbo].[tbl_NguoiDung] ON 

INSERT [dbo].[tbl_NguoiDung] ([NguoiDungID], [TenDangNhap], [MatKhau], [QuanTri], [NhanVienID]) VALUES (1, N'admin', N'ynmBNWanNb/lHyVvA35l7A==', 1, 1)
INSERT [dbo].[tbl_NguoiDung] ([NguoiDungID], [TenDangNhap], [MatKhau], [QuanTri], [NhanVienID]) VALUES (2, N'anhthy', N'ynmBNWanNb/lHyVvA35l7A==', 0, 2)
INSERT [dbo].[tbl_NguoiDung] ([NguoiDungID], [TenDangNhap], [MatKhau], [QuanTri], [NhanVienID]) VALUES (3, N'phuongtien', N'ynmBNWanNb/lHyVvA35l7A==', 0, 3)
SET IDENTITY_INSERT [dbo].[tbl_NguoiDung] OFF
SET IDENTITY_INSERT [dbo].[tbl_NhaCungCap] ON 

INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (1, N'Công Ty TNHH Nước Giải Khát Suntory PepsiCo Việt Nam')
INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (2, N'Công Ty TNHH Nước Giải Khát Coca-Cola Việt Nam')
INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (3, N'Công Ty Liên Doanh TNHH KFC Việt Nam')
INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (4, N'Tập đoàn Nước giải khát Tân Hiệp Phát (THP)')
INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (5, N'Công ty TNHH Lavie')
INSERT [dbo].[tbl_NhaCungCap] ([NCCID], [TenNhaCungCap]) VALUES (6, N'Công ty TNHH Red Bull')
SET IDENTITY_INSERT [dbo].[tbl_NhaCungCap] OFF
SET IDENTITY_INSERT [dbo].[tbl_NhanVien] ON 

INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (1, N'NV001', N'Nguyễn Hoàng Minh Hùng', CAST(N'1999-02-04' AS Date), 1, N'77/7 Tân lập 2, P.Hiệp Phú, Q.9, TP.HCM', N'868466497', N'me@17dtha2.com', N'846455789', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (2, N'NV002', N'Nguyễn Anh Thy', CAST(N'1999-06-03' AS Date), 1, N'132 Lê Văn Việt, Q.9, TP.HCM', N'0868466499', N'anhthy@17dtha2.com', N'261547355', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (3, N'NV003', N'Nguyễn Thị Phương Tiền', CAST(N'1999-04-11' AS Date), 0, N'66 Đường số 2, Q.9, TP.HCM', N'0911564449', N'phuongtien@17dtha2.com', N'364577755', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (4, N'NV004', N'Nguyễn Châu Thanh Hậu', CAST(N'1999-11-03' AS Date), 1, N'11 Trần Não, Q.2, TP.HCM', N'0968564499', N'thanhhau@17dtha2.com', N'361547355', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (5, N'NV005', N'Nguyễn Thanh Phong', CAST(N'1999-11-07' AS Date), 1, N'Q.7, TP.HCM', N'0354867892', N'thanhphong@17dtha2.com', N'457894561', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (6, N'NV006', N'Phạm Phương Thảo', CAST(N'1996-11-04' AS Date), 0, N'Tòa nhà Parkson', N'031356765', N'phuongthao96@gmail.com', N'033476278', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (7, N'NV007', N'Đỗ Mạnh Cường', CAST(N'1996-11-04' AS Date), 1, N'Số 5/167 Lê Lợi', N'058258257', N'manhcuong@gmail.com', N'456789555', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (8, N'NV008', N'Phạm Văn Tùng', CAST(N'1990-11-04' AS Date), 1, N'161 Nguyễn Cư Trinh, Quận 1', N'0779281224', N'vangtung@gmail.com', N'147826555', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (9, N'NV009', N'Đặng Vĩnh Trường', CAST(N'1994-02-15' AS Date), 1, N'173 Phạm Vĩnh Chu, Quận 10', N'0335677182', N'vinhtruong@17dtha2.com', N'862789182', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (10, N'NV010', N'Nguyễn Thị Bích Châu', CAST(N'1995-07-15' AS Date), 0, N'467 Tô Vĩnh Diện, Quận 4', N'0867355371', N'bichchau728@gmail.com', N'762819273', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (11, N'NV011', N'Cao Thị Mỹ Duyên', CAST(N'1995-07-20' AS Date), 0, N'67 Tôn Đản, Quận 4', N'0862777182', N'myduyen1995@gmail.com', N'716382718', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (12, N'NV012', N'Tống Vĩnh Trung', CAST(N'1996-06-20' AS Date), 1, N'56 Trần Hưng Đạo, Quận 1', N'0856377138', N'vinhtrung1996@gmail.com', N'5162781627', 1)
INSERT [dbo].[tbl_NhanVien] ([NhanVienID], [MaNV], [TenNV], [NgaySinh], [GioiTinhID], [DiaChi], [SDT], [Email], [CMND], [TrangThaiID]) VALUES (13, N'NV013', N'Trương Chí Vĩnh', CAST(N'1990-10-23' AS Date), 1, N'65 Tần Vĩnh', N'0725166287', N'chivinh2390@gmail.com', N'673618367', 1)
SET IDENTITY_INSERT [dbo].[tbl_NhanVien] OFF
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (1, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (2, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (3, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (4, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (5, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (6, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (7, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (8, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (9, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (10, 2)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (11, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (12, 4)
INSERT [dbo].[tbl_NhanVienBoPhan] ([NhanVienID], [BoPhanID]) VALUES (13, 4)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (1, 1)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (2, 5)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (3, 3)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (4, 2)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (5, 6)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (6, 5)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (7, 6)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (8, 6)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (9, 2)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (10, 3)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (11, 2)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (12, 3)
INSERT [dbo].[tbl_NhanVienChucDanh] ([NhanVienID], [ChucDanhID]) VALUES (13, 2)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 1)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 2)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 3)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 4)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 5)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 6)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (1, 7)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (2, 3)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (3, 2)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (3, 4)
INSERT [dbo].[tbl_QuyenNguoiDung] ([NguoiDungID], [NghiepVuID]) VALUES (3, 5)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP001', N'Pepsi (Lon)', 1, 12000, 1, 494, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP002', N'Coca-Cola (Lon)', 2, 12000, 0, 498, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP003', N'Hot Wings (3 miếng)', 3, 49000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP004', N'Gà quay (1 miếng)', 3, 68000, 3, 495, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP005', N'Gà rán (1 miếng)', 3, 36000, 2, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP006', N'Hot Wings (5 miếng)', 3, 71000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP007', N'Burger Tôm', 3, 42000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP008', N'Burger Zinger (1 phần)', 3, 51000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP009', N'Popcorn (Vừa)', 3, 37000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP010', N'Popcorn (Lớn)', 3, 57000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP011', N'Phô mai viên (4 viên)', 3, 29000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP012', N'Phô mai viên (6 viên)', 3, 39000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP013', N'Mashies nhân Gravy (3 viên)', 3, 19000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP014', N'Mashies nhân Gravy (5 viên)', 3, 29000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP015', N'Mashies nhân Rau Củ (3 viên)', 3, 25000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP016', N'Cá Thanh (3 thanh)', 3, 41000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP017', N'Gà Xiên Que ( 2 thanh)', 3, 31000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP018', N'Khoai Tây Chiên (vừa)', 3, 14000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP019', N'Khoai Tây Chiên (lớn)', 3, 27000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP020', N'Bắp cải trộn (vừa)', 3, 12000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP021', N'Bắp cải trộn (lớn)', 3, 22000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP022', N'Combo Gà Rán A', 3, 79000, 0, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP023', N'Combo Gà Rán B', 3, 85000, 2, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP024', N'Combo Nhóm A', 3, 129000, 2, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP025', N'Combo Gia Đình A', 3, 359000, 2, 500, 1)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP026', N'Milo (Hộp)', 1, 19000, 0, 500, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP027', N'Aquafina', 5, 15000, 0, 500, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP028', N'Bò Húc (Lon)', 6, 15000, 0, 500, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP029', N'Number One', 4, 14000, 0, 500, 2)
INSERT [dbo].[tbl_SanPham] ([MaSP], [TenSP], [NCCID], [GiaTien], [GiamGia], [SoLuong], [LoaiSPID]) VALUES (N'SP030', N'Nước ép cam', 1, 15000, 0, 500, 2)
INSERT [dbo].[tbl_ThongTinCH] ([StoreID], [CuaHang], [DiaChiCH]) VALUES (111, N'KFC LÊ VĂN VIỆT', N'193 Lê Văn Việt, P.Hiệp Phú, Q.9, TPHCM')
INSERT [dbo].[tbl_ThongTinCty] ([TenCTy], [DiaChiCTy], [MaSoThue]) VALUES (N'CN Cty LD TNHH KFC Việt Nam', N'1 Bạch Đằng, P2, Tân Bình', N'0100773885001')
SET IDENTITY_INSERT [dbo].[tbl_TinhThanh] ON 

INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (1, N'Bà Rịa – Vũng Tàu')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (2, N'Bắc Giang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (3, N'Bắc Kạn')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (5, N'Bắc Ninh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (6, N'Bến Tre')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (7, N'Bình Định')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (8, N'Bình Dương')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (9, N'Bình Phước')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (10, N'Bình Thuận')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (11, N'Cà Mau')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (12, N'Cao Bằng')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (13, N'Cần Thơ')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (14, N'Đà Nẵng')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (15, N'Đắk Lắk')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (16, N'Đắk Nông')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (17, N'Điện Biên')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (18, N'Đồng Nai')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (19, N'Đồng Tháp')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (20, N'Gia Lai')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (21, N'Hà Giang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (22, N'Hải Dương')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (23, N'Hà Nam')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (24, N'Hà Nội')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (25, N'Hà Tĩnh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (26, N'Hậu Giang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (27, N'Hòa Bình')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (28, N'Hưng Yên')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (29, N'Hồ Chí Minh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (30, N'Khánh Hòa')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (31, N'Kiên Giang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (32, N'Kon Tom')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (33, N'Lai Châu')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (34, N'Lâm Đồng')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (35, N'Lạng Sơn')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (36, N'Lào Cai')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (37, N'Long An')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (38, N'Nam Định')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (39, N'Nghệ An')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (40, N'Ninh Thuận')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (41, N'Ninh Bình')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (42, N'Phú Thọ')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (43, N'Phú Yên')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (44, N'Quảng Bình')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (45, N'Quảng Nam')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (46, N'Quảng Ngãi')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (47, N'Quảng Ninh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (48, N'Quảng Trị')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (49, N'Sóc Trăng')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (50, N'Sơn La')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (51, N'Tây Ninh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (52, N'Thái Bình')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (53, N'Thái Nguyên')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (54, N'Thanh Hóa')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (55, N'Thừa Thiên Huê')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (56, N'Tiền Giang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (57, N'Trà Vinh')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (58, N'Tuyên Quang')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (59, N'Vĩnh Long')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (60, N'Vĩnh Phúc')
INSERT [dbo].[tbl_TinhThanh] ([TinhThanhID], [TenTinhThanh]) VALUES (63, N'Yên Bái')
SET IDENTITY_INSERT [dbo].[tbl_TinhThanh] OFF
SET IDENTITY_INSERT [dbo].[tbl_TonGiao] ON 

INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (1, N'Thiên chúa giáo')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (2, N'Kito giáo')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (3, N'Tin lành')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (4, N'Phật giáo')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (5, N'Hồi giáo')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (6, N'Đạo giáo')
INSERT [dbo].[tbl_TonGiao] ([TonGiaoID], [TenTonGiao]) VALUES (9, N'Không')
SET IDENTITY_INSERT [dbo].[tbl_TonGiao] OFF
ALTER TABLE [dbo].[tbl_ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_BoPhan] FOREIGN KEY([BoPhanID])
REFERENCES [dbo].[tbl_BoPhan] ([BoPhanID])
GO
ALTER TABLE [dbo].[tbl_ChamCong] CHECK CONSTRAINT [FK_ChamCong_BoPhan]
GO
ALTER TABLE [dbo].[tbl_ChamCong]  WITH CHECK ADD  CONSTRAINT [FK_ChamCong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_ChamCong] CHECK CONSTRAINT [FK_ChamCong_NhanVien]
GO
ALTER TABLE [dbo].[tbl_ChiTietBanKeLuong]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietBanKeLuong_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_ChiTietBanKeLuong] CHECK CONSTRAINT [FK_ChiTietBanKeLuong_NhanVien]
GO
ALTER TABLE [dbo].[tbl_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tbl_HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[tbl_CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
ALTER TABLE [dbo].[tbl_CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[tbl_SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[tbl_CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO
ALTER TABLE [dbo].[tbl_HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_HoaDon] CHECK CONSTRAINT [FK_HoaDon_NhanVien]
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoNhanVien_BangCap] FOREIGN KEY([BangCapID])
REFERENCES [dbo].[tbl_BangCap] ([BangCapID])
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien] CHECK CONSTRAINT [FK_HoSoNhanVien_BangCap]
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoNhanVien_DanToc] FOREIGN KEY([DanTocID])
REFERENCES [dbo].[tbl_DanToc] ([DanTocID])
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien] CHECK CONSTRAINT [FK_HoSoNhanVien_DanToc]
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoNhanVien_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien] CHECK CONSTRAINT [FK_HoSoNhanVien_NhanVien]
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoNhanVien_TinhThanh] FOREIGN KEY([TinhThanhID])
REFERENCES [dbo].[tbl_TinhThanh] ([TinhThanhID])
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien] CHECK CONSTRAINT [FK_HoSoNhanVien_TinhThanh]
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien]  WITH CHECK ADD  CONSTRAINT [FK_HoSoNhanVien_TonGiao] FOREIGN KEY([TonGiaoID])
REFERENCES [dbo].[tbl_TonGiao] ([TonGiaoID])
GO
ALTER TABLE [dbo].[tbl_HoSoNhanVien] CHECK CONSTRAINT [FK_HoSoNhanVien_TonGiao]
GO
ALTER TABLE [dbo].[tbl_NguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_NguoiDung_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_NguoiDung] CHECK CONSTRAINT [FK_NguoiDung_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVien]  WITH CHECK ADD  CONSTRAINT [FK_NhanVien_GioiTinh] FOREIGN KEY([GioiTinhID])
REFERENCES [dbo].[tbl_GioiTinh] ([GioiTinhID])
GO
ALTER TABLE [dbo].[tbl_NhanVien] CHECK CONSTRAINT [FK_NhanVien_GioiTinh]
GO
ALTER TABLE [dbo].[tbl_NhanVienBoPhan]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienBoPhan_BoPhan] FOREIGN KEY([BoPhanID])
REFERENCES [dbo].[tbl_BoPhan] ([BoPhanID])
GO
ALTER TABLE [dbo].[tbl_NhanVienBoPhan] CHECK CONSTRAINT [FK_NhanVienBoPhan_BoPhan]
GO
ALTER TABLE [dbo].[tbl_NhanVienBoPhan]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienBoPhan_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_NhanVienBoPhan] CHECK CONSTRAINT [FK_NhanVienBoPhan_NhanVien]
GO
ALTER TABLE [dbo].[tbl_NhanVienChucDanh]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienChucDanh_ChucDanh] FOREIGN KEY([ChucDanhID])
REFERENCES [dbo].[tbl_ChucDanh] ([ChucDanhID])
GO
ALTER TABLE [dbo].[tbl_NhanVienChucDanh] CHECK CONSTRAINT [FK_NhanVienChucDanh_ChucDanh]
GO
ALTER TABLE [dbo].[tbl_NhanVienChucDanh]  WITH CHECK ADD  CONSTRAINT [FK_NhanVienChucDanh_NhanVien] FOREIGN KEY([NhanVienID])
REFERENCES [dbo].[tbl_NhanVien] ([NhanVienID])
GO
ALTER TABLE [dbo].[tbl_NhanVienChucDanh] CHECK CONSTRAINT [FK_NhanVienChucDanh_NhanVien]
GO
ALTER TABLE [dbo].[tbl_QuyenNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QuyenNguoiDung_NghiepVu] FOREIGN KEY([NghiepVuID])
REFERENCES [dbo].[tbl_NghiepVu] ([NghiepVuID])
GO
ALTER TABLE [dbo].[tbl_QuyenNguoiDung] CHECK CONSTRAINT [FK_QuyenNguoiDung_NghiepVu]
GO
ALTER TABLE [dbo].[tbl_QuyenNguoiDung]  WITH CHECK ADD  CONSTRAINT [FK_QuyenNguoiDung_NguoiDung] FOREIGN KEY([NguoiDungID])
REFERENCES [dbo].[tbl_NguoiDung] ([NguoiDungID])
GO
ALTER TABLE [dbo].[tbl_QuyenNguoiDung] CHECK CONSTRAINT [FK_QuyenNguoiDung_NguoiDung]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([LoaiSPID])
REFERENCES [dbo].[tbl_LoaiSP] ([LoaiSPID])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[tbl_SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NCC] FOREIGN KEY([NCCID])
REFERENCES [dbo].[tbl_NhaCungCap] ([NCCID])
GO
ALTER TABLE [dbo].[tbl_SanPham] CHECK CONSTRAINT [FK_SanPham_NCC]
GO
/****** Object:  StoredProcedure [dbo].[TESTCONNECTION]    Script Date: 12/23/2019 23:23:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[TESTCONNECTION]
AS
BEGIN
	declare @result bit
	set @result=0
	IF object_id('tbl_BangCap') is not null
		if object_id('tbl_BoPhan') is not null
		if object_id('tbl_ChucDanh') is not null
		if object_id('tbl_CTHD') is not null
		if object_id('tbl_DanToc') is not null
		if object_id('tbl_GioiTinh') is not null
		if object_id('tbl_HoaDon') is not null
		if object_id('tbl_HoSoNhanVien') is not null
		if object_id('tbl_LoaiSP') is not null
		if object_id('tbl_NghiepVu') is not null
		if object_id('tbl_NguoiDung') is not null
		if object_id('tbl_NhaCungCap') is not null
		if object_id('tbl_NhanVien') is not null
		if object_id('tbl_NhanVienBoPhan') is not null
		if object_id('tbl_NhanVienChucDanh') is not null
		if object_id('tbl_QuyenNguoiDung') is not null
		if object_id('tbl_SanPham') is not null
		if object_id('tbl_ThongTinCH') is not null
		if object_id('tbl_ThongTinCty') is not null
		if object_id('tbl_TinhThanh') is not null
		if object_id('tbl_TonGiao') is not null
		set @result=1
	select @result
END
GO
USE [master]
GO
ALTER DATABASE [qlthucan] SET  READ_WRITE 
GO
