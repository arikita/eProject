USE [master]
GO
/****** Object:  Database [eProject]    Script Date: 05-Sep-20 12:17:52 ******/
CREATE DATABASE [eProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
GO
ALTER DATABASE [eProject] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [eProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [eProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [eProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [eProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [eProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [eProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [eProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [eProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [eProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [eProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [eProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [eProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [eProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [eProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [eProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [eProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [eProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [eProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [eProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [eProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [eProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [eProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [eProject] SET  MULTI_USER 
GO
ALTER DATABASE [eProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [eProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [eProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [eProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [eProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [eProject] SET QUERY_STORE = OFF
GO
USE [eProject]
GO
/****** Object:  Table [dbo].[tblAdmin]    Script Date: 05-Sep-20 12:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdmin](
	[admin_id] [int] IDENTITY(1,1) NOT NULL,
	[admin_name] [nvarchar](100) NULL,
	[admin_email] [nvarchar](150) NULL,
	[admin_username] [varchar](100) NULL,
	[admin_password] [nvarchar](100) NULL,
	[admin_mobile] [varchar](20) NULL,
	[admin_picture] [nvarchar](max) NULL,
	[admin_gender] [int] NULL,
	[admin_birthday] [date] NULL,
	[admin_role] [int] NULL,
	[admin_role_all] [varchar](150) NULL,
	[admin_language] [int] NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[admin_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCart]    Script Date: 05-Sep-20 12:17:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCart](
	[cart_id] [int] IDENTITY(1,1) NOT NULL,
	[cart_quantity] [int] NULL,
	[cart_start_date] [datetime] NULL,
	[cart_warranty_end_date] [int] NULL,
	[warehouse_id] [int] NULL,
	[customer_id] [int] NULL,
	[admin_id] [int] NULL,
 CONSTRAINT [PK_tblCarts] PRIMARY KEY CLUSTERED 
(
	[cart_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblColor]    Script Date: 05-Sep-20 12:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblColor](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblColor] PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 05-Sep-20 12:17:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_first_name] [nvarchar](100) NULL,
	[customer_last_name] [nvarchar](100) NULL,
	[customer_address] [nvarchar](max) NULL,
	[customer_mobile] [varchar](20) NULL,
	[customer_email] [nvarchar](150) NULL,
	[customer_picture] [nvarchar](max) NULL,
	[customer_gender] [int] NULL,
	[customer_birthday] [date] NULL,
	[customer_send_email_auto] [varchar](100) NULL,
	[customer_send_email] [int] NULL,
	[customer_sum_total] [int] NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDiscount]    Script Date: 05-Sep-20 12:17:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiscount](
	[discount_id] [int] IDENTITY(1,1) NOT NULL,
	[discount_price] [decimal](18, 2) NULL,
	[discount_percent] [int] NULL,
	[discount_role] [int] NULL,
	[discount_description] [nvarchar](max) NULL,
	[discount_title] [nvarchar](150) NULL,
	[discount_start_date] [datetime] NULL,
	[discount_end_date] [datetime] NULL,
 CONSTRAINT [PK_tblDiscount] PRIMARY KEY CLUSTERED 
(
	[discount_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDistrict]    Script Date: 05-Sep-20 12:17:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDistrict](
	[district_id] [int] NOT NULL,
	[district_name] [nvarchar](50) NULL,
	[district_type] [nvarchar](50) NULL,
	[province_id] [int] NULL,
 CONSTRAINT [PK_tblDistrict] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImage]    Script Date: 05-Sep-20 12:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImage](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[image_1] [nvarchar](max) NULL,
	[image_2] [nvarchar](max) NULL,
	[image_3] [nvarchar](max) NULL,
	[image_4] [nvarchar](max) NULL,
	[image_5] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblImage] PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImport]    Script Date: 05-Sep-20 12:17:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImport](
	[import_id] [int] IDENTITY(1,1) NOT NULL,
	[import_quantity] [int] NULL,
	[import_price] [int] NULL,
	[import_source] [nvarchar](max) NULL,
	[import_date] [datetime] NULL,
	[import_bill] [nvarchar](50) NULL,
	[import_role] [int] NULL,
	[pcsize_id] [int] NULL,
	[admin_id] [int] NULL,
 CONSTRAINT [PK_tblImport] PRIMARY KEY CLUSTERED 
(
	[import_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblImportCheck]    Script Date: 05-Sep-20 12:17:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblImportCheck](
	[icheck_id] [int] IDENTITY(1,1) NOT NULL,
	[icheck_admin] [int] NULL,
	[icheck_out] [int] NULL,
	[icheck_detail] [nvarchar](50) NULL,
	[import_id] [int] NULL,
 CONSTRAINT [PK_tblImportCheck] PRIMARY KEY CLUSTERED 
(
	[icheck_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMembership]    Script Date: 05-Sep-20 12:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMembership](
	[membership_id] [int] IDENTITY(1,1) NOT NULL,
	[membership_detail] [nvarchar](150) NULL,
	[membership_total] [int] NULL,
	[membership_percent_out] [int] NULL,
 CONSTRAINT [PK_tblMembership] PRIMARY KEY CLUSTERED 
(
	[membership_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 05-Sep-20 12:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrder](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime] NULL,
	[order_total] [decimal](18, 2) NULL,
	[customer_id] [int] NULL,
	[admin_id] [int] NULL,
	[voucher_id] [int] NULL,
 CONSTRAINT [PK_tblOrder] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 05-Sep-20 12:17:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](150) NULL,
	[product_code] [nvarchar](50) NULL,
	[product_price] [decimal](18, 2) NULL,
	[product_style] [nvarchar](50) NULL,
	[product_description] [nvarchar](max) NULL,
	[product_active] [int] NULL,
	[product_season] [nvarchar](50) NULL,
	[product_warranty] [int] NULL,
	[discount_id] [int] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductColor]    Script Date: 05-Sep-20 12:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductColor](
	[pcolor_id] [int] IDENTITY(1,1) NOT NULL,
	[color_id] [int] NULL,
	[product_id] [int] NULL,
	[image_id] [int] NULL,
 CONSTRAINT [PK_tblProductColor] PRIMARY KEY CLUSTERED 
(
	[pcolor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductColorSize]    Script Date: 05-Sep-20 12:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductColorSize](
	[pcsize_id] [int] IDENTITY(1,1) NOT NULL,
	[pcsize_qr_code] [nvarchar](max) NULL,
	[size_id] [int] NULL,
	[pcolor_id] [int] NULL,
 CONSTRAINT [PK_tblProductColorSize] PRIMARY KEY CLUSTERED 
(
	[pcsize_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProvince]    Script Date: 05-Sep-20 12:18:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProvince](
	[province_id] [int] NOT NULL,
	[province_name] [nvarchar](50) NULL,
	[province_type] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblProvince] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRevenue]    Script Date: 05-Sep-20 12:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRevenue](
	[revenue_id] [int] IDENTITY(1,1) NOT NULL,
	[revenue_name] [nvarchar](150) NULL,
	[revenue_detail] [nvarchar](max) NULL,
	[revenue_month] [int] NULL,
	[revenue_year] [int] NULL,
	[revenue_total] [int] NULL,
 CONSTRAINT [PK_tblRevenue] PRIMARY KEY CLUSTERED 
(
	[revenue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalary]    Script Date: 05-Sep-20 12:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalary](
	[salary_id] [int] IDENTITY(1,1) NOT NULL,
	[salary_working_day] [int] NULL,
	[salary_overtime] [int] NULL,
	[salary_day_off] [int] NULL,
	[salary_holiday] [int] NULL,
	[salary_allowance] [int] NULL,
	[salary_bonus] [int] NULL,
	[salary_other] [int] NULL,
	[salary_other_detail] [nvarchar](150) NULL,
	[salary_reduce] [int] NULL,
	[salary_reduce_detail] [nvarchar](150) NULL,
	[admin_id] [int] NULL,
 CONSTRAINT [PK_tblSalary] PRIMARY KEY CLUSTERED 
(
	[salary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSize]    Script Date: 05-Sep-20 12:18:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSize](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_size] [int] NULL,
 CONSTRAINT [PK_tblSize] PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVoucher]    Script Date: 05-Sep-20 12:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVoucher](
	[voucher_id] [int] IDENTITY(1,1) NOT NULL,
	[voucher_name] [nvarchar](50) NULL,
	[voucher_cash] [int] NULL,
	[voucher_start_date] [nchar](10) NULL,
	[voucher_end_date] [datetime] NULL,
	[voucher_min] [int] NULL,
	[voucher_max] [int] NULL,
	[voucher_percent] [int] NULL,
	[voucher_role] [int] NULL,
	[voucher_description] [nvarchar](max) NULL,
	[voucher_limit] [int] NULL,
 CONSTRAINT [PK_tblVoucher] PRIMARY KEY CLUSTERED 
(
	[voucher_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblWarehouse]    Script Date: 05-Sep-20 12:18:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblWarehouse](
	[warehouse_id] [int] IDENTITY(1,1) NOT NULL,
	[warehouse_quantity] [int] NULL,
	[warehouse_date] [datetime] NULL,
	[icheck_id] [int] NOT NULL,
	[discount_id] [int] NULL,
 CONSTRAINT [PK_tblWarehouse] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] ON 
GO
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_email], [admin_username], [admin_password], [admin_mobile], [admin_picture], [admin_gender], [admin_birthday], [admin_role], [admin_role_all], [admin_language]) VALUES (1, N'Nguyen Hai', N'phuocson1781@gmail.com', N'admin', N'admin', N'0912363843', NULL, 1, CAST(N'1988-06-04' AS Date), 1, NULL, NULL)
GO
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_email], [admin_username], [admin_password], [admin_mobile], [admin_picture], [admin_gender], [admin_birthday], [admin_role], [admin_role_all], [admin_language]) VALUES (3, N'Nhân Viên', N'user@gmail.com', N'user', N'user', N'0912363842', N'abc.jpg', 1, CAST(N'2020-07-02' AS Date), 2, N'2', NULL)
GO
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_email], [admin_username], [admin_password], [admin_mobile], [admin_picture], [admin_gender], [admin_birthday], [admin_role], [admin_role_all], [admin_language]) VALUES (5, N'', N'', N'', N'gg', N'', N'', NULL, NULL, 2, N'2', NULL)
GO
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_email], [admin_username], [admin_password], [admin_mobile], [admin_picture], [admin_gender], [admin_birthday], [admin_role], [admin_role_all], [admin_language]) VALUES (7, N'', N'', N'', N'dfd', N'', N'', NULL, NULL, 2, N'2', NULL)
GO
INSERT [dbo].[tblAdmin] ([admin_id], [admin_name], [admin_email], [admin_username], [admin_password], [admin_mobile], [admin_picture], [admin_gender], [admin_birthday], [admin_role], [admin_role_all], [admin_language]) VALUES (1015, N'', N'', N'', N'ha', N'', N'', 5, NULL, 2, N'2', NULL)
GO
SET IDENTITY_INSERT [dbo].[tblAdmin] OFF
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (1, N'Quận Ba Đình', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (2, N'Quận Hoàn Kiếm', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (3, N'Quận Tây Hồ', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (4, N'Quận Long Biên', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (5, N'Quận Cầu Giấy', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (6, N'Quận Đống Đa', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (7, N'Quận Hai Bà Trưng', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (8, N'Quận Hoàng Mai', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (9, N'Quận Thanh Xuân', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (16, N'Huyện Sóc Sơn', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (17, N'Huyện Đông Anh', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (18, N'Huyện Gia Lâm', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (19, N'Quận Nam Từ Liêm', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (20, N'Huyện Thanh Trì', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (21, N'Quận Bắc Từ Liêm', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (24, N'Thành phố Hà Giang', N'Thành phố', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (26, N'Huyện Đồng Văn', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (27, N'Huyện Mèo Vạc', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (28, N'Huyện Yên Minh', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (29, N'Huyện Quản Bạ', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (30, N'Huyện Vị Xuyên', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (31, N'Huyện Bắc Mê', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (32, N'Huyện Hoàng Su Phì', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (33, N'Huyện Xín Mần', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (34, N'Huyện Bắc Quang', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (35, N'Huyện Quang Bình', N'Huyện', 2)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (40, N'Thành phố Cao Bằng', N'Thành phố', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (42, N'Huyện Bảo Lâm', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (43, N'Huyện Bảo Lạc', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (44, N'Huyện Thông Nông', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (45, N'Huyện Hà Quảng', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (46, N'Huyện Trà Lĩnh', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (47, N'Huyện Trùng Khánh', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (48, N'Huyện Hạ Lang', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (49, N'Huyện Quảng Uyên', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (50, N'Huyện Phục Hoà', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (51, N'Huyện Hoà An', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (52, N'Huyện Nguyên Bình', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (53, N'Huyện Thạch An', N'Huyện', 4)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (58, N'Thành Phố Bắc Kạn', N'Thành phố', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (60, N'Huyện Pác Nặm', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (61, N'Huyện Ba Bể', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (62, N'Huyện Ngân Sơn', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (63, N'Huyện Bạch Thông', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (64, N'Huyện Chợ Đồn', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (65, N'Huyện Chợ Mới', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (66, N'Huyện Na Rì', N'Huyện', 6)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (70, N'Thành phố Tuyên Quang', N'Thành phố', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (71, N'Huyện Lâm Bình', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (72, N'Huyện Nà Hang', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (73, N'Huyện Chiêm Hóa', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (74, N'Huyện Hàm Yên', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (75, N'Huyện Yên Sơn', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (76, N'Huyện Sơn Dương', N'Huyện', 8)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (80, N'Thành phố Lào Cai', N'Thành phố', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (82, N'Huyện Bát Xát', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (83, N'Huyện Mường Khương', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (84, N'Huyện Si Ma Cai', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (85, N'Huyện Bắc Hà', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (86, N'Huyện Bảo Thắng', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (87, N'Huyện Bảo Yên', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (88, N'Huyện Sa Pa', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (89, N'Huyện Văn Bàn', N'Huyện', 10)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (94, N'Thành phố Điện Biên Phủ', N'Thành phố', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (95, N'Thị Xã Mường Lay', N'Thị xã', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (96, N'Huyện Mường Nhé', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (97, N'Huyện Mường Chà', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (98, N'Huyện Tủa Chùa', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (99, N'Huyện Tuần Giáo', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (100, N'Huyện Điện Biên', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (101, N'Huyện Điện Biên Đông', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (102, N'Huyện Mường Ảng', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (103, N'Huyện Nậm Pồ', N'Huyện', 11)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (105, N'Thành phố Lai Châu', N'Thành phố', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (106, N'Huyện Tam Đường', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (107, N'Huyện Mường Tè', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (108, N'Huyện Sìn Hồ', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (109, N'Huyện Phong Thổ', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (110, N'Huyện Than Uyên', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (111, N'Huyện Tân Uyên', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (112, N'Huyện Nậm Nhùn', N'Huyện', 12)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (116, N'Thành phố Sơn La', N'Thành phố', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (118, N'Huyện Quỳnh Nhai', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (119, N'Huyện Thuận Châu', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (120, N'Huyện Mường La', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (121, N'Huyện Bắc Yên', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (122, N'Huyện Phù Yên', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (123, N'Huyện Mộc Châu', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (124, N'Huyện Yên Châu', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (125, N'Huyện Mai Sơn', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (126, N'Huyện Sông Mã', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (127, N'Huyện Sốp Cộp', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (128, N'Huyện Vân Hồ', N'Huyện', 14)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (132, N'Thành phố Yên Bái', N'Thành phố', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (133, N'Thị xã Nghĩa Lộ', N'Thị xã', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (135, N'Huyện Lục Yên', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (136, N'Huyện Văn Yên', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (137, N'Huyện Mù Căng Chải', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (138, N'Huyện Trấn Yên', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (139, N'Huyện Trạm Tấu', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (140, N'Huyện Văn Chấn', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (141, N'Huyện Yên Bình', N'Huyện', 15)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (148, N'Thành phố Hòa Bình', N'Thành phố', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (150, N'Huyện Đà Bắc', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (151, N'Huyện Kỳ Sơn', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (152, N'Huyện Lương Sơn', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (153, N'Huyện Kim Bôi', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (154, N'Huyện Cao Phong', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (155, N'Huyện Tân Lạc', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (156, N'Huyện Mai Châu', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (157, N'Huyện Lạc Sơn', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (158, N'Huyện Yên Thủy', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (159, N'Huyện Lạc Thủy', N'Huyện', 17)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (164, N'Thành phố Thái Nguyên', N'Thành phố', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (165, N'Thành phố Sông Công', N'Thành phố', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (167, N'Huyện Định Hóa', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (168, N'Huyện Phú Lương', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (169, N'Huyện Đồng Hỷ', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (170, N'Huyện Võ Nhai', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (171, N'Huyện Đại Từ', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (172, N'Thị xã Phổ Yên', N'Thị xã', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (173, N'Huyện Phú Bình', N'Huyện', 19)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (178, N'Thành phố Lạng Sơn', N'Thành phố', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (180, N'Huyện Tràng Định', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (181, N'Huyện Bình Gia', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (182, N'Huyện Văn Lãng', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (183, N'Huyện Cao Lộc', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (184, N'Huyện Văn Quan', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (185, N'Huyện Bắc Sơn', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (186, N'Huyện Hữu Lũng', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (187, N'Huyện Chi Lăng', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (188, N'Huyện Lộc Bình', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (189, N'Huyện Đình Lập', N'Huyện', 20)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (193, N'Thành phố Hạ Long', N'Thành phố', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (194, N'Thành phố Móng Cái', N'Thành phố', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (195, N'Thành phố Cẩm Phả', N'Thành phố', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (196, N'Thành phố Uông Bí', N'Thành phố', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (198, N'Huyện Bình Liêu', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (199, N'Huyện Tiên Yên', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (200, N'Huyện Đầm Hà', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (201, N'Huyện Hải Hà', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (202, N'Huyện Ba Chẽ', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (203, N'Huyện Vân Đồn', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (204, N'Huyện Hoành Bồ', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (205, N'Thị xã Đông Triều', N'Thị xã', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (206, N'Thị xã Quảng Yên', N'Thị xã', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (207, N'Huyện Cô Tô', N'Huyện', 22)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (213, N'Thành phố Bắc Giang', N'Thành phố', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (215, N'Huyện Yên Thế', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (216, N'Huyện Tân Yên', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (217, N'Huyện Lạng Giang', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (218, N'Huyện Lục Nam', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (219, N'Huyện Lục Ngạn', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (220, N'Huyện Sơn Động', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (221, N'Huyện Yên Dũng', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (222, N'Huyện Việt Yên', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (223, N'Huyện Hiệp Hòa', N'Huyện', 24)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (227, N'Thành phố Việt Trì', N'Thành phố', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (228, N'Thị xã Phú Thọ', N'Thị xã', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (230, N'Huyện Đoan Hùng', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (231, N'Huyện Hạ Hoà', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (232, N'Huyện Thanh Ba', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (233, N'Huyện Phù Ninh', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (234, N'Huyện Yên Lập', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (235, N'Huyện Cẩm Khê', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (236, N'Huyện Tam Nông', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (237, N'Huyện Lâm Thao', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (238, N'Huyện Thanh Sơn', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (239, N'Huyện Thanh Thuỷ', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (240, N'Huyện Tân Sơn', N'Huyện', 25)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (243, N'Thành phố Vĩnh Yên', N'Thành phố', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (244, N'Thị xã Phúc Yên', N'Thị xã', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (246, N'Huyện Lập Thạch', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (247, N'Huyện Tam Dương', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (248, N'Huyện Tam Đảo', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (249, N'Huyện Bình Xuyên', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (250, N'Huyện Mê Linh', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (251, N'Huyện Yên Lạc', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (252, N'Huyện Vĩnh Tường', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (253, N'Huyện Sông Lô', N'Huyện', 26)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (256, N'Thành phố Bắc Ninh', N'Thành phố', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (258, N'Huyện Yên Phong', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (259, N'Huyện Quế Võ', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (260, N'Huyện Tiên Du', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (261, N'Thị xã Từ Sơn', N'Thị xã', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (262, N'Huyện Thuận Thành', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (263, N'Huyện Gia Bình', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (264, N'Huyện Lương Tài', N'Huyện', 27)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (268, N'Quận Hà Đông', N'Quận', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (269, N'Thị xã Sơn Tây', N'Thị xã', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (271, N'Huyện Ba Vì', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (272, N'Huyện Phúc Thọ', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (273, N'Huyện Đan Phượng', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (274, N'Huyện Hoài Đức', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (275, N'Huyện Quốc Oai', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (276, N'Huyện Thạch Thất', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (277, N'Huyện Chương Mỹ', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (278, N'Huyện Thanh Oai', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (279, N'Huyện Thường Tín', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (280, N'Huyện Phú Xuyên', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (281, N'Huyện Ứng Hòa', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (282, N'Huyện Mỹ Đức', N'Huyện', 1)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (288, N'Thành phố Hải Dương', N'Thành phố', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (290, N'Thị xã Chí Linh', N'Thị xã', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (291, N'Huyện Nam Sách', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (292, N'Huyện Kinh Môn', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (293, N'Huyện Kim Thành', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (294, N'Huyện Thanh Hà', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (295, N'Huyện Cẩm Giàng', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (296, N'Huyện Bình Giang', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (297, N'Huyện Gia Lộc', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (298, N'Huyện Tứ Kỳ', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (299, N'Huyện Ninh Giang', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (300, N'Huyện Thanh Miện', N'Huyện', 30)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (303, N'Quận Hồng Bàng', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (304, N'Quận Ngô Quyền', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (305, N'Quận Lê Chân', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (306, N'Quận Hải An', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (307, N'Quận Kiến An', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (308, N'Quận Đồ Sơn', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (309, N'Quận Dương Kinh', N'Quận', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (311, N'Huyện Thuỷ Nguyên', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (312, N'Huyện An Dương', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (313, N'Huyện An Lão', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (314, N'Huyện Kiến Thuỵ', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (315, N'Huyện Tiên Lãng', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (316, N'Huyện Vĩnh Bảo', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (317, N'Huyện Cát Hải', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (318, N'Huyện Bạch Long Vĩ', N'Huyện', 31)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (323, N'Thành phố Hưng Yên', N'Thành phố', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (325, N'Huyện Văn Lâm', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (326, N'Huyện Văn Giang', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (327, N'Huyện Yên Mỹ', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (328, N'Huyện Mỹ Hào', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (329, N'Huyện Ân Thi', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (330, N'Huyện Khoái Châu', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (331, N'Huyện Kim Động', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (332, N'Huyện Tiên Lữ', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (333, N'Huyện Phù Cừ', N'Huyện', 33)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (336, N'Thành phố Thái Bình', N'Thành phố', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (338, N'Huyện Quỳnh Phụ', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (339, N'Huyện Hưng Hà', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (340, N'Huyện Đông Hưng', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (341, N'Huyện Thái Thụy', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (342, N'Huyện Tiền Hải', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (343, N'Huyện Kiến Xương', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (344, N'Huyện Vũ Thư', N'Huyện', 34)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (347, N'Thành phố Phủ Lý', N'Thành phố', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (349, N'Huyện Duy Tiên', N'Huyện', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (350, N'Huyện Kim Bảng', N'Huyện', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (351, N'Huyện Thanh Liêm', N'Huyện', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (352, N'Huyện Bình Lục', N'Huyện', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (353, N'Huyện Lý Nhân', N'Huyện', 35)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (356, N'Thành phố Nam Định', N'Thành phố', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (358, N'Huyện Mỹ Lộc', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (359, N'Huyện Vụ Bản', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (360, N'Huyện Ý Yên', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (361, N'Huyện Nghĩa Hưng', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (362, N'Huyện Nam Trực', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (363, N'Huyện Trực Ninh', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (364, N'Huyện Xuân Trường', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (365, N'Huyện Giao Thủy', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (366, N'Huyện Hải Hậu', N'Huyện', 36)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (369, N'Thành phố Ninh Bình', N'Thành phố', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (370, N'Thành phố Tam Điệp', N'Thành phố', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (372, N'Huyện Nho Quan', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (373, N'Huyện Gia Viễn', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (374, N'Huyện Hoa Lư', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (375, N'Huyện Yên Khánh', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (376, N'Huyện Kim Sơn', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (377, N'Huyện Yên Mô', N'Huyện', 37)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (380, N'Thành phố Thanh Hóa', N'Thành phố', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (381, N'Thị xã Bỉm Sơn', N'Thị xã', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (382, N'Thị xã Sầm Sơn', N'Thị xã', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (384, N'Huyện Mường Lát', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (385, N'Huyện Quan Hóa', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (386, N'Huyện Bá Thước', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (387, N'Huyện Quan Sơn', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (388, N'Huyện Lang Chánh', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (389, N'Huyện Ngọc Lặc', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (390, N'Huyện Cẩm Thủy', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (391, N'Huyện Thạch Thành', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (392, N'Huyện Hà Trung', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (393, N'Huyện Vĩnh Lộc', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (394, N'Huyện Yên Định', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (395, N'Huyện Thọ Xuân', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (396, N'Huyện Thường Xuân', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (397, N'Huyện Triệu Sơn', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (398, N'Huyện Thiệu Hóa', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (399, N'Huyện Hoằng Hóa', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (400, N'Huyện Hậu Lộc', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (401, N'Huyện Nga Sơn', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (402, N'Huyện Như Xuân', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (403, N'Huyện Như Thanh', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (404, N'Huyện Nông Cống', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (405, N'Huyện Đông Sơn', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (406, N'Huyện Quảng Xương', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (407, N'Huyện Tĩnh Gia', N'Huyện', 38)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (412, N'Thành phố Vinh', N'Thành phố', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (413, N'Thị xã Cửa Lò', N'Thị xã', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (414, N'Thị xã Thái Hoà', N'Thị xã', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (415, N'Huyện Quế Phong', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (416, N'Huyện Quỳ Châu', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (417, N'Huyện Kỳ Sơn', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (418, N'Huyện Tương Dương', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (419, N'Huyện Nghĩa Đàn', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (420, N'Huyện Quỳ Hợp', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (421, N'Huyện Quỳnh Lưu', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (422, N'Huyện Con Cuông', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (423, N'Huyện Tân Kỳ', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (424, N'Huyện Anh Sơn', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (425, N'Huyện Diễn Châu', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (426, N'Huyện Yên Thành', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (427, N'Huyện Đô Lương', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (428, N'Huyện Thanh Chương', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (429, N'Huyện Nghi Lộc', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (430, N'Huyện Nam Đàn', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (431, N'Huyện Hưng Nguyên', N'Huyện', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (432, N'Thị xã Hoàng Mai', N'Thị xã', 40)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (436, N'Thành phố Hà Tĩnh', N'Thành phố', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (437, N'Thị xã Hồng Lĩnh', N'Thị xã', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (439, N'Huyện Hương Sơn', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (440, N'Huyện Đức Thọ', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (441, N'Huyện Vũ Quang', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (442, N'Huyện Nghi Xuân', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (443, N'Huyện Can Lộc', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (444, N'Huyện Hương Khê', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (445, N'Huyện Thạch Hà', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (446, N'Huyện Cẩm Xuyên', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (447, N'Huyện Kỳ Anh', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (448, N'Huyện Lộc Hà', N'Huyện', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (449, N'Thị xã Kỳ Anh', N'Thị xã', 42)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (450, N'Thành Phố Đồng Hới', N'Thành phố', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (452, N'Huyện Minh Hóa', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (453, N'Huyện Tuyên Hóa', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (454, N'Huyện Quảng Trạch', N'Thị xã', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (455, N'Huyện Bố Trạch', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (456, N'Huyện Quảng Ninh', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (457, N'Huyện Lệ Thủy', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (458, N'Thị xã Ba Đồn', N'Huyện', 44)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (461, N'Thành phố Đông Hà', N'Thành phố', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (462, N'Thị xã Quảng Trị', N'Thị xã', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (464, N'Huyện Vĩnh Linh', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (465, N'Huyện Hướng Hóa', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (466, N'Huyện Gio Linh', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (467, N'Huyện Đa Krông', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (468, N'Huyện Cam Lộ', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (469, N'Huyện Triệu Phong', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (470, N'Huyện Hải Lăng', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (471, N'Huyện Cồn Cỏ', N'Huyện', 45)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (474, N'Thành phố Huế', N'Thành phố', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (476, N'Huyện Phong Điền', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (477, N'Huyện Quảng Điền', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (478, N'Huyện Phú Vang', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (479, N'Thị xã Hương Thủy', N'Thị xã', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (480, N'Thị xã Hương Trà', N'Thị xã', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (481, N'Huyện A Lưới', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (482, N'Huyện Phú Lộc', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (483, N'Huyện Nam Đông', N'Huyện', 46)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (490, N'Quận Liên Chiểu', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (491, N'Quận Thanh Khê', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (492, N'Quận Hải Châu', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (493, N'Quận Sơn Trà', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (494, N'Quận Ngũ Hành Sơn', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (495, N'Quận Cẩm Lệ', N'Quận', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (497, N'Huyện Hòa Vang', N'Huyện', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (498, N'Huyện Hoàng Sa', N'Huyện', 48)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (502, N'Thành phố Tam Kỳ', N'Thành phố', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (503, N'Thành phố Hội An', N'Thành phố', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (504, N'Huyện Tây Giang', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (505, N'Huyện Đông Giang', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (506, N'Huyện Đại Lộc', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (507, N'Thị xã Điện Bàn', N'Thị xã', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (508, N'Huyện Duy Xuyên', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (509, N'Huyện Quế Sơn', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (510, N'Huyện Nam Giang', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (511, N'Huyện Phước Sơn', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (512, N'Huyện Hiệp Đức', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (513, N'Huyện Thăng Bình', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (514, N'Huyện Tiên Phước', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (515, N'Huyện Bắc Trà My', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (516, N'Huyện Nam Trà My', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (517, N'Huyện Núi Thành', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (518, N'Huyện Phú Ninh', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (519, N'Huyện Nông Sơn', N'Huyện', 49)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (522, N'Thành phố Quảng Ngãi', N'Thành phố', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (524, N'Huyện Bình Sơn', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (525, N'Huyện Trà Bồng', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (526, N'Huyện Tây Trà', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (527, N'Huyện Sơn Tịnh', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (528, N'Huyện Tư Nghĩa', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (529, N'Huyện Sơn Hà', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (530, N'Huyện Sơn Tây', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (531, N'Huyện Minh Long', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (532, N'Huyện Nghĩa Hành', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (533, N'Huyện Mộ Đức', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (534, N'Huyện Đức Phổ', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (535, N'Huyện Ba Tơ', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (536, N'Huyện Lý Sơn', N'Huyện', 51)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (540, N'Thành phố Qui Nhơn', N'Thành phố', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (542, N'Huyện An Lão', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (543, N'Huyện Hoài Nhơn', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (544, N'Huyện Hoài Ân', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (545, N'Huyện Phù Mỹ', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (546, N'Huyện Vĩnh Thạnh', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (547, N'Huyện Tây Sơn', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (548, N'Huyện Phù Cát', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (549, N'Thị xã An Nhơn', N'Thị xã', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (550, N'Huyện Tuy Phước', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (551, N'Huyện Vân Canh', N'Huyện', 52)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (555, N'Thành phố Tuy Hoà', N'Thành phố', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (557, N'Thị xã Sông Cầu', N'Thị xã', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (558, N'Huyện Đồng Xuân', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (559, N'Huyện Tuy An', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (560, N'Huyện Sơn Hòa', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (561, N'Huyện Sông Hinh', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (562, N'Huyện Tây Hoà', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (563, N'Huyện Phú Hoà', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (564, N'Huyện Đông Hòa', N'Huyện', 54)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (568, N'Thành phố Nha Trang', N'Thành phố', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (569, N'Thành phố Cam Ranh', N'Thành phố', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (570, N'Huyện Cam Lâm', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (571, N'Huyện Vạn Ninh', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (572, N'Thị xã Ninh Hòa', N'Thị xã', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (573, N'Huyện Khánh Vĩnh', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (574, N'Huyện Diên Khánh', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (575, N'Huyện Khánh Sơn', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (576, N'Huyện Trường Sa', N'Huyện', 56)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (582, N'Thành phố Phan Rang-Tháp Chàm', N'Thành phố', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (584, N'Huyện Bác Ái', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (585, N'Huyện Ninh Sơn', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (586, N'Huyện Ninh Hải', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (587, N'Huyện Ninh Phước', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (588, N'Huyện Thuận Bắc', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (589, N'Huyện Thuận Nam', N'Huyện', 58)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (593, N'Thành phố Phan Thiết', N'Thành phố', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (594, N'Thị xã La Gi', N'Thị xã', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (595, N'Huyện Tuy Phong', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (596, N'Huyện Bắc Bình', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (597, N'Huyện Hàm Thuận Bắc', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (598, N'Huyện Hàm Thuận Nam', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (599, N'Huyện Tánh Linh', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (600, N'Huyện Đức Linh', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (601, N'Huyện Hàm Tân', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (602, N'Huyện Phú Quí', N'Huyện', 60)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (608, N'Thành phố Kon Tum', N'Thành phố', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (610, N'Huyện Đắk Glei', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (611, N'Huyện Ngọc Hồi', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (612, N'Huyện Đắk Tô', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (613, N'Huyện Kon Plông', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (614, N'Huyện Kon Rẫy', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (615, N'Huyện Đắk Hà', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (616, N'Huyện Sa Thầy', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (617, N'Huyện Tu Mơ Rông', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (618, N'Huyện Ia H''Drai', N'Huyện', 62)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (622, N'Thành phố Pleiku', N'Thành phố', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (623, N'Thị xã An Khê', N'Thị xã', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (624, N'Thị xã Ayun Pa', N'Thị xã', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (625, N'Huyện KBang', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (626, N'Huyện Đăk Đoa', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (627, N'Huyện Chư Păh', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (628, N'Huyện Ia Grai', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (629, N'Huyện Mang Yang', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (630, N'Huyện Kông Chro', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (631, N'Huyện Đức Cơ', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (632, N'Huyện Chư Prông', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (633, N'Huyện Chư Sê', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (634, N'Huyện Đăk Pơ', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (635, N'Huyện Ia Pa', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (637, N'Huyện Krông Pa', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (638, N'Huyện Phú Thiện', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (639, N'Huyện Chư Pưh', N'Huyện', 64)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (643, N'Thành phố Buôn Ma Thuột', N'Thành phố', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (644, N'Thị Xã Buôn Hồ', N'Thị xã', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (645, N'Huyện Ea H''leo', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (646, N'Huyện Ea Súp', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (647, N'Huyện Buôn Đôn', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (648, N'Huyện Cư M''gar', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (649, N'Huyện Krông Búk', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (650, N'Huyện Krông Năng', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (651, N'Huyện Ea Kar', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (652, N'Huyện M''Đrắk', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (653, N'Huyện Krông Bông', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (654, N'Huyện Krông Pắc', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (655, N'Huyện Krông A Na', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (656, N'Huyện Lắk', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (657, N'Huyện Cư Kuin', N'Huyện', 66)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (660, N'Thị xã Gia Nghĩa', N'Thị xã', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (661, N'Huyện Đăk Glong', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (662, N'Huyện Cư Jút', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (663, N'Huyện Đắk Mil', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (664, N'Huyện Krông Nô', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (665, N'Huyện Đắk Song', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (666, N'Huyện Đắk R''Lấp', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (667, N'Huyện Tuy Đức', N'Huyện', 67)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (672, N'Thành phố Đà Lạt', N'Thành phố', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (673, N'Thành phố Bảo Lộc', N'Thành phố', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (674, N'Huyện Đam Rông', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (675, N'Huyện Lạc Dương', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (676, N'Huyện Lâm Hà', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (677, N'Huyện Đơn Dương', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (678, N'Huyện Đức Trọng', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (679, N'Huyện Di Linh', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (680, N'Huyện Bảo Lâm', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (681, N'Huyện Đạ Huoai', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (682, N'Huyện Đạ Tẻh', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (683, N'Huyện Cát Tiên', N'Huyện', 68)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (688, N'Thị xã Phước Long', N'Thị xã', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (689, N'Thị xã Đồng Xoài', N'Thị xã', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (690, N'Thị xã Bình Long', N'Thị xã', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (691, N'Huyện Bù Gia Mập', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (692, N'Huyện Lộc Ninh', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (693, N'Huyện Bù Đốp', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (694, N'Huyện Hớn Quản', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (695, N'Huyện Đồng Phú', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (696, N'Huyện Bù Đăng', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (697, N'Huyện Chơn Thành', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (698, N'Huyện Phú Riềng', N'Huyện', 70)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (703, N'Thành phố Tây Ninh', N'Thành phố', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (705, N'Huyện Tân Biên', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (706, N'Huyện Tân Châu', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (707, N'Huyện Dương Minh Châu', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (708, N'Huyện Châu Thành', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (709, N'Huyện Hòa Thành', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (710, N'Huyện Gò Dầu', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (711, N'Huyện Bến Cầu', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (712, N'Huyện Trảng Bàng', N'Huyện', 72)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (718, N'Thành phố Thủ Dầu Một', N'Thành phố', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (719, N'Huyện Bàu Bàng', N'Huyện', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (720, N'Huyện Dầu Tiếng', N'Huyện', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (721, N'Thị xã Bến Cát', N'Thị xã', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (722, N'Huyện Phú Giáo', N'Huyện', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (723, N'Thị xã Tân Uyên', N'Thị xã', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (724, N'Thị xã Dĩ An', N'Thị xã', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (725, N'Thị xã Thuận An', N'Thị xã', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (726, N'Huyện Bắc Tân Uyên', N'Huyện', 74)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (731, N'Thành phố Biên Hòa', N'Thành phố', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (732, N'Thị xã Long Khánh', N'Thị xã', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (734, N'Huyện Tân Phú', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (735, N'Huyện Vĩnh Cửu', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (736, N'Huyện Định Quán', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (737, N'Huyện Trảng Bom', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (738, N'Huyện Thống Nhất', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (739, N'Huyện Cẩm Mỹ', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (740, N'Huyện Long Thành', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (741, N'Huyện Xuân Lộc', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (742, N'Huyện Nhơn Trạch', N'Huyện', 75)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (747, N'Thành phố Vũng Tàu', N'Thành phố', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (748, N'Thành phố Bà Rịa', N'Thành phố', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (750, N'Huyện Châu Đức', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (751, N'Huyện Xuyên Mộc', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (752, N'Huyện Long Điền', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (753, N'Huyện Đất Đỏ', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (754, N'Huyện Tân Thành', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (755, N'Huyện Côn Đảo', N'Huyện', 77)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (760, N'Quận 1', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (761, N'Quận 12', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (762, N'Quận Thủ Đức', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (763, N'Quận 9', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (764, N'Quận Gò Vấp', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (765, N'Quận Bình Thạnh', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (766, N'Quận Tân Bình', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (767, N'Quận Tân Phú', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (768, N'Quận Phú Nhuận', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (769, N'Quận 2', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (770, N'Quận 3', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (771, N'Quận 10', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (772, N'Quận 11', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (773, N'Quận 4', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (774, N'Quận 5', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (775, N'Quận 6', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (776, N'Quận 8', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (777, N'Quận Bình Tân', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (778, N'Quận 7', N'Quận', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (783, N'Huyện Củ Chi', N'Huyện', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (784, N'Huyện Hóc Môn', N'Huyện', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (785, N'Huyện Bình Chánh', N'Huyện', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (786, N'Huyện Nhà Bè', N'Huyện', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (787, N'Huyện Cần Giờ', N'Huyện', 79)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (794, N'Thành phố Tân An', N'Thành phố', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (795, N'Thị xã Kiến Tường', N'Thị xã', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (796, N'Huyện Tân Hưng', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (797, N'Huyện Vĩnh Hưng', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (798, N'Huyện Mộc Hóa', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (799, N'Huyện Tân Thạnh', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (800, N'Huyện Thạnh Hóa', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (801, N'Huyện Đức Huệ', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (802, N'Huyện Đức Hòa', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (803, N'Huyện Bến Lức', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (804, N'Huyện Thủ Thừa', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (805, N'Huyện Tân Trụ', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (806, N'Huyện Cần Đước', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (807, N'Huyện Cần Giuộc', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (808, N'Huyện Châu Thành', N'Huyện', 80)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (815, N'Thành phố Mỹ Tho', N'Thành phố', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (816, N'Thị xã Gò Công', N'Thị xã', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (817, N'Thị xã Cai Lậy', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (818, N'Huyện Tân Phước', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (819, N'Huyện Cái Bè', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (820, N'Huyện Cai Lậy', N'Thị xã', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (821, N'Huyện Châu Thành', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (822, N'Huyện Chợ Gạo', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (823, N'Huyện Gò Công Tây', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (824, N'Huyện Gò Công Đông', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (825, N'Huyện Tân Phú Đông', N'Huyện', 82)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (829, N'Thành phố Bến Tre', N'Thành phố', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (831, N'Huyện Châu Thành', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (832, N'Huyện Chợ Lách', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (833, N'Huyện Mỏ Cày Nam', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (834, N'Huyện Giồng Trôm', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (835, N'Huyện Bình Đại', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (836, N'Huyện Ba Tri', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (837, N'Huyện Thạnh Phú', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (838, N'Huyện Mỏ Cày Bắc', N'Huyện', 83)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (842, N'Thành phố Trà Vinh', N'Thành phố', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (844, N'Huyện Càng Long', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (845, N'Huyện Cầu Kè', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (846, N'Huyện Tiểu Cần', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (847, N'Huyện Châu Thành', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (848, N'Huyện Cầu Ngang', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (849, N'Huyện Trà Cú', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (850, N'Huyện Duyên Hải', N'Huyện', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (851, N'Thị xã Duyên Hải', N'Thị xã', 84)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (855, N'Thành phố Vĩnh Long', N'Thành phố', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (857, N'Huyện Long Hồ', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (858, N'Huyện Mang Thít', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (859, N'Huyện  Vũng Liêm', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (860, N'Huyện Tam Bình', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (861, N'Thị xã Bình Minh', N'Thị xã', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (862, N'Huyện Trà Ôn', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (863, N'Huyện Bình Tân', N'Huyện', 86)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (866, N'Thành phố Cao Lãnh', N'Thành phố', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (867, N'Thành phố Sa Đéc', N'Thành phố', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (868, N'Thị xã Hồng Ngự', N'Thị xã', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (869, N'Huyện Tân Hồng', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (870, N'Huyện Hồng Ngự', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (871, N'Huyện Tam Nông', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (872, N'Huyện Tháp Mười', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (873, N'Huyện Cao Lãnh', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (874, N'Huyện Thanh Bình', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (875, N'Huyện Lấp Vò', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (876, N'Huyện Lai Vung', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (877, N'Huyện Châu Thành', N'Huyện', 87)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (883, N'Thành phố Long Xuyên', N'Thành phố', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (884, N'Thành phố Châu Đốc', N'Thành phố', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (886, N'Huyện An Phú', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (887, N'Thị xã Tân Châu', N'Thị xã', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (888, N'Huyện Phú Tân', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (889, N'Huyện Châu Phú', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (890, N'Huyện Tịnh Biên', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (891, N'Huyện Tri Tôn', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (892, N'Huyện Châu Thành', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (893, N'Huyện Chợ Mới', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (894, N'Huyện Thoại Sơn', N'Huyện', 89)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (899, N'Thành phố Rạch Giá', N'Thành phố', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (900, N'Thị xã Hà Tiên', N'Thị xã', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (902, N'Huyện Kiên Lương', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (903, N'Huyện Hòn Đất', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (904, N'Huyện Tân Hiệp', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (905, N'Huyện Châu Thành', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (906, N'Huyện Giồng Riềng', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (907, N'Huyện Gò Quao', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (908, N'Huyện An Biên', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (909, N'Huyện An Minh', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (910, N'Huyện Vĩnh Thuận', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (911, N'Huyện Phú Quốc', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (912, N'Huyện Kiên Hải', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (913, N'Huyện U Minh Thượng', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (914, N'Huyện Giang Thành', N'Huyện', 91)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (916, N'Quận Ninh Kiều', N'Quận', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (917, N'Quận Ô Môn', N'Quận', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (918, N'Quận Bình Thuỷ', N'Quận', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (919, N'Quận Cái Răng', N'Quận', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (923, N'Quận Thốt Nốt', N'Quận', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (924, N'Huyện Vĩnh Thạnh', N'Huyện', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (925, N'Huyện Cờ Đỏ', N'Huyện', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (926, N'Huyện Phong Điền', N'Huyện', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (927, N'Huyện Thới Lai', N'Huyện', 92)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (930, N'Thành phố Vị Thanh', N'Thành phố', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (931, N'Thị xã Ngã Bảy', N'Thị xã', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (932, N'Huyện Châu Thành A', N'Huyện', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (933, N'Huyện Châu Thành', N'Huyện', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (934, N'Huyện Phụng Hiệp', N'Huyện', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (935, N'Huyện Vị Thuỷ', N'Huyện', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (936, N'Huyện Long Mỹ', N'Huyện', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (937, N'Thị xã Long Mỹ', N'Thị xã', 93)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (941, N'Thành phố Sóc Trăng', N'Thành phố', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (942, N'Huyện Châu Thành', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (943, N'Huyện Kế Sách', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (944, N'Huyện Mỹ Tú', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (945, N'Huyện Cù Lao Dung', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (946, N'Huyện Long Phú', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (947, N'Huyện Mỹ Xuyên', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (948, N'Thị xã Ngã Năm', N'Thị xã', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (949, N'Huyện Thạnh Trị', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (950, N'Thị xã Vĩnh Châu', N'Thị xã', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (951, N'Huyện Trần Đề', N'Huyện', 94)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (954, N'Thành phố Bạc Liêu', N'Thành phố', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (956, N'Huyện Hồng Dân', N'Huyện', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (957, N'Huyện Phước Long', N'Huyện', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (958, N'Huyện Vĩnh Lợi', N'Huyện', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (959, N'Thị xã Giá Rai', N'Thị xã', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (960, N'Huyện Đông Hải', N'Huyện', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (961, N'Huyện Hoà Bình', N'Huyện', 95)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (964, N'Thành phố Cà Mau', N'Thành phố', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (966, N'Huyện U Minh', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (967, N'Huyện Thới Bình', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (968, N'Huyện Trần Văn Thời', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (969, N'Huyện Cái Nước', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (970, N'Huyện Đầm Dơi', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (971, N'Huyện Năm Căn', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (972, N'Huyện Phú Tân', N'Huyện', 96)
GO
INSERT [dbo].[tblDistrict] ([district_id], [district_name], [district_type], [province_id]) VALUES (973, N'Huyện Ngọc Hiển', N'Huyện', 96)
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (1, N'Hà Nội', N'Trung ương')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (2, N'Hà Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (4, N'Cao Bằng', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (6, N'Bắc Kạn', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (8, N'Tuyên Quang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (10, N'Lào Cai', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (11, N'Điện Biên', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (12, N'Lai Châu', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (14, N'Sơn La', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (15, N'Yên Bái', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (17, N'Hoà Bình', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (19, N'Thái Nguyên', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (20, N'Lạng Sơn', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (22, N'Quảng Ninh', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (24, N'Bắc Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (25, N'Phú Thọ', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (26, N'Vĩnh Phúc', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (27, N'Bắc Ninh', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (30, N'Hải Dương', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (31, N'Hải Phòng', N'Trung ương')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (33, N'Hưng Yên', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (34, N'Thái Bình', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (35, N'Hà Nam', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (36, N'Nam Định', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (37, N'Ninh Bình', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (38, N'Thanh Hóa', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (40, N'Nghệ An', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (42, N'Hà Tĩnh', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (44, N'Quảng Bình', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (45, N'Quảng Trị', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (46, N'Thừa Thiên Huế', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (48, N'Đà Nẵng', N'Trung ương')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (49, N'Quảng Nam', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (51, N'Quảng Ngãi', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (52, N'Bình Định', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (54, N'Phú Yên', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (56, N'Khánh Hòa', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (58, N'Ninh Thuận', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (60, N'Bình Thuận', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (62, N'Kon Tum', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (64, N'Gia Lai', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (66, N'Đắk Lắk', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (67, N'Đắk Nông', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (68, N'Lâm Đồng', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (70, N'Bình Phước', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (72, N'Tây Ninh', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (74, N'Bình Dương', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (75, N'Đồng Nai', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (77, N'Bà Rịa - Vũng Tàu', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (79, N'Hồ Chí Minh', N'Trung ương')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (80, N'Long An', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (82, N'Tiền Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (83, N'Bến Tre', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (84, N'Trà Vinh', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (86, N'Vĩnh Long', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (87, N'Đồng Tháp', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (89, N'An Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (91, N'Kiên Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (92, N'Cần Thơ', N'Trung ương')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (93, N'Hậu Giang', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (94, N'Sóc Trăng', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (95, N'Bạc Liêu', N'Tỉnh')
GO
INSERT [dbo].[tblProvince] ([province_id], [province_name], [province_type]) VALUES (96, N'Cà Mau', N'Tỉnh')
GO
ALTER TABLE [dbo].[tblCart]  WITH CHECK ADD  CONSTRAINT [FK_tblCart_tblAdmin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[tblAdmin] ([admin_id])
GO
ALTER TABLE [dbo].[tblCart] CHECK CONSTRAINT [FK_tblCart_tblAdmin]
GO
ALTER TABLE [dbo].[tblCart]  WITH CHECK ADD  CONSTRAINT [FK_tblCart_tblCustomer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tblCustomer] ([customer_id])
GO
ALTER TABLE [dbo].[tblCart] CHECK CONSTRAINT [FK_tblCart_tblCustomer]
GO
ALTER TABLE [dbo].[tblCart]  WITH CHECK ADD  CONSTRAINT [FK_tblCart_tblWarehouse] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[tblWarehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[tblCart] CHECK CONSTRAINT [FK_tblCart_tblWarehouse]
GO
ALTER TABLE [dbo].[tblCustomer]  WITH CHECK ADD  CONSTRAINT [FK_tblCustomer_tblDistrict] FOREIGN KEY([district_id])
REFERENCES [dbo].[tblDistrict] ([district_id])
GO
ALTER TABLE [dbo].[tblCustomer] CHECK CONSTRAINT [FK_tblCustomer_tblDistrict]
GO
ALTER TABLE [dbo].[tblDistrict]  WITH CHECK ADD  CONSTRAINT [FK_tblDistrict_tblProvince] FOREIGN KEY([province_id])
REFERENCES [dbo].[tblProvince] ([province_id])
GO
ALTER TABLE [dbo].[tblDistrict] CHECK CONSTRAINT [FK_tblDistrict_tblProvince]
GO
ALTER TABLE [dbo].[tblImport]  WITH CHECK ADD  CONSTRAINT [FK_tblImport_tblAdmin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[tblAdmin] ([admin_id])
GO
ALTER TABLE [dbo].[tblImport] CHECK CONSTRAINT [FK_tblImport_tblAdmin]
GO
ALTER TABLE [dbo].[tblImport]  WITH CHECK ADD  CONSTRAINT [FK_tblImport_tblProductColorSize] FOREIGN KEY([pcsize_id])
REFERENCES [dbo].[tblProductColorSize] ([pcsize_id])
GO
ALTER TABLE [dbo].[tblImport] CHECK CONSTRAINT [FK_tblImport_tblProductColorSize]
GO
ALTER TABLE [dbo].[tblImportCheck]  WITH CHECK ADD  CONSTRAINT [FK_tblImportCheck_tblImport] FOREIGN KEY([import_id])
REFERENCES [dbo].[tblImport] ([import_id])
GO
ALTER TABLE [dbo].[tblImportCheck] CHECK CONSTRAINT [FK_tblImportCheck_tblImport]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblAdmin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[tblAdmin] ([admin_id])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblAdmin]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblCustomer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[tblCustomer] ([customer_id])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblCustomer]
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD  CONSTRAINT [FK_tblOrder_tblVoucher] FOREIGN KEY([voucher_id])
REFERENCES [dbo].[tblVoucher] ([voucher_id])
GO
ALTER TABLE [dbo].[tblOrder] CHECK CONSTRAINT [FK_tblOrder_tblVoucher]
GO
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblDiscount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[tblDiscount] ([discount_id])
GO
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblDiscount]
GO
ALTER TABLE [dbo].[tblProductColor]  WITH CHECK ADD  CONSTRAINT [FK_tblProductColor_tblColor] FOREIGN KEY([color_id])
REFERENCES [dbo].[tblColor] ([color_id])
GO
ALTER TABLE [dbo].[tblProductColor] CHECK CONSTRAINT [FK_tblProductColor_tblColor]
GO
ALTER TABLE [dbo].[tblProductColor]  WITH CHECK ADD  CONSTRAINT [FK_tblProductColor_tblImage] FOREIGN KEY([image_id])
REFERENCES [dbo].[tblImage] ([image_id])
GO
ALTER TABLE [dbo].[tblProductColor] CHECK CONSTRAINT [FK_tblProductColor_tblImage]
GO
ALTER TABLE [dbo].[tblProductColor]  WITH CHECK ADD  CONSTRAINT [FK_tblProductColor_tblProduct] FOREIGN KEY([product_id])
REFERENCES [dbo].[tblProduct] ([product_id])
GO
ALTER TABLE [dbo].[tblProductColor] CHECK CONSTRAINT [FK_tblProductColor_tblProduct]
GO
ALTER TABLE [dbo].[tblProductColorSize]  WITH CHECK ADD  CONSTRAINT [FK_tblProductColorSize_tblProductColor] FOREIGN KEY([pcolor_id])
REFERENCES [dbo].[tblProductColor] ([pcolor_id])
GO
ALTER TABLE [dbo].[tblProductColorSize] CHECK CONSTRAINT [FK_tblProductColorSize_tblProductColor]
GO
ALTER TABLE [dbo].[tblProductColorSize]  WITH CHECK ADD  CONSTRAINT [FK_tblProductColorSize_tblSize] FOREIGN KEY([size_id])
REFERENCES [dbo].[tblSize] ([size_id])
GO
ALTER TABLE [dbo].[tblProductColorSize] CHECK CONSTRAINT [FK_tblProductColorSize_tblSize]
GO
ALTER TABLE [dbo].[tblSalary]  WITH CHECK ADD  CONSTRAINT [FK_tblSalary_tblAdmin] FOREIGN KEY([admin_id])
REFERENCES [dbo].[tblAdmin] ([admin_id])
GO
ALTER TABLE [dbo].[tblSalary] CHECK CONSTRAINT [FK_tblSalary_tblAdmin]
GO
ALTER TABLE [dbo].[tblWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouse_tblDiscount] FOREIGN KEY([discount_id])
REFERENCES [dbo].[tblDiscount] ([discount_id])
GO
ALTER TABLE [dbo].[tblWarehouse] CHECK CONSTRAINT [FK_tblWarehouse_tblDiscount]
GO
ALTER TABLE [dbo].[tblWarehouse]  WITH CHECK ADD  CONSTRAINT [FK_tblWarehouse_tblImportCheck] FOREIGN KEY([icheck_id])
REFERENCES [dbo].[tblImportCheck] ([icheck_id])
GO
ALTER TABLE [dbo].[tblWarehouse] CHECK CONSTRAINT [FK_tblWarehouse_tblImportCheck]
GO
USE [master]
GO
ALTER DATABASE [eProject] SET  READ_WRITE 
GO
