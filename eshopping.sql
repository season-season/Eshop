USE [master]
GO
/****** Object:  Database [eshopping]    Script Date: 02/02/2018 15:39:27 ******/
CREATE DATABASE [eshopping] ON  PRIMARY 
( NAME = N'eshopping', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\eshopping.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'eshopping_log', FILENAME = N'c:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\eshopping_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [eshopping] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [eshopping].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [eshopping] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [eshopping] SET ANSI_NULLS OFF
GO
ALTER DATABASE [eshopping] SET ANSI_PADDING OFF
GO
ALTER DATABASE [eshopping] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [eshopping] SET ARITHABORT OFF
GO
ALTER DATABASE [eshopping] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [eshopping] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [eshopping] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [eshopping] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [eshopping] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [eshopping] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [eshopping] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [eshopping] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [eshopping] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [eshopping] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [eshopping] SET  DISABLE_BROKER
GO
ALTER DATABASE [eshopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [eshopping] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [eshopping] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [eshopping] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [eshopping] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [eshopping] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [eshopping] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [eshopping] SET  READ_WRITE
GO
ALTER DATABASE [eshopping] SET RECOVERY SIMPLE
GO
ALTER DATABASE [eshopping] SET  MULTI_USER
GO
ALTER DATABASE [eshopping] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [eshopping] SET DB_CHAINING OFF
GO
USE [eshopping]
GO
/****** Object:  Table [dbo].[userorder]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userorder](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[adress] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[mobile] [varchar](50) NULL,
 CONSTRAINT [PK_userorder] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[userdetail]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[userdetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](150) NULL,
	[password] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[phone] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[productname] [varchar](255) NOT NULL,
	[productdesc] [varchar](max) NULL,
	[category] [varchar](40) NULL,
	[price] [varchar](40) NULL,
	[qty] [int] NULL,
	[product_images] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (1, N'Thanka', N'Thanka Nepali', N'Art', N'25000', 0, N'images/w6JNxqbCXfthanka.JPG')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (2, N'Om Mane Ring', N'Metal Ring', N'Craft', N'2000', 4, N'images/D3V1hqfj9vOm-Mane-Ring01.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (3, N'Bajra', N'Bajra Statue', N'Craft', N'1500', 0, N'images/Wg12hUDkXcbajra_satwo_50614e4d1c030.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (4, N'Artistic Door', N'Wooden artistic Door', N'Art', N'21000', 0, N'images/eU0oky7RtWartistic_door_517522d26b433.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (5, N'Jewellery', N'Ornament', N'Craft', N'18000', 0, N'images/ut9wLpB16mJewellery-in-Nepal.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (6, N'Shakyamuni Thanka', N'Thanka Nepali', N'Art', N'20000', 0, N'images/hv03mQXtRdShakyamuni-Thangka.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (9, N'Saraswoti', N'Saraswoti Thanka', N'Art', N'25000', 10, N'images/x7EFJoynD1saraswati.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (10, N'Buddha Mandala', N'Buddha Mandala', N'Art', N'25000', 6, N'images/c3Wp9KmLvZbuddha mandala.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (11, N'Tibetian Pendent', N'Tibetian Pendent', N'Craft', N'75000', 5, N'images/Vwni4pLqObTBP152-Tibetan-Handmade-Fake-Amber-Beeswax-big-Egg-Pendants-44X30mm-Tibetan-Silver-Ethnic-jewelry-font-b.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (12, N'Classic Window', N'Classic Window', N'Craft', N'80000', 2, N'images/DX9nF4hHP8nepaliClasicWindowzoom.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (13, N'painting', N'painting', N'Art', N'18000', 5, N'images/Rj9xS7c82Wakshobhya2-blauwe-boeddha.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (14, N'Craved Stone', N'Craved Stone', N'Craft', N'5000', 4, N'images/H84f0KQZGsStone-Carving-07.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (15, N'Buddha Statue', N'Buddha Statue', N'Craft', N'2000', 61, N'images/AMv8x36V0TBuddha-9-ha-01.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (16, N'Bracelet', N'Bracelet', N'Craft', N'5000', 6, N'images/knGCurdp2Bbone.jpg')
INSERT [dbo].[Product] ([ID], [productname], [productdesc], [category], [price], [qty], [product_images]) VALUES (17, N'White Tara', N'White Tara', N'Art', N'20000', 59, N'images/Z2v3i7tJY4white-tara3.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[orderdetails]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[orderdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [varchar](50) NULL,
	[productname] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[productprice] [varchar](50) NULL,
	[productqty] [varchar](50) NULL,
	[product_images] [varchar](max) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK_orderdetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[delivereddetails]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[delivereddetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [varchar](50) NULL,
	[productname] [varchar](50) NULL,
	[category] [varchar](50) NULL,
	[productprice] [varchar](50) NULL,
	[productqty] [varchar](50) NULL,
	[product_images] [varchar](max) NULL,
	[firstname] [varchar](50) NULL,
	[lastname] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[pincode] [varchar](50) NULL,
	[phone] [bigint] NULL,
	[Date] [varchar](90) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[category]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category] [varchar](50) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON
INSERT [dbo].[category] ([id], [category]) VALUES (3, N'Art')
INSERT [dbo].[category] ([id], [category]) VALUES (5, N'Craft')
SET IDENTITY_INSERT [dbo].[category] OFF
/****** Object:  Table [dbo].[adminlogin]    Script Date: 02/02/2018 15:39:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[adminlogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[adminlogin] ON
INSERT [dbo].[adminlogin] ([ID], [username], [password]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[adminlogin] OFF
