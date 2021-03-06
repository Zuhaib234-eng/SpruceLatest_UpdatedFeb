USE [master]
GO
/****** Object:  Database [Spruce]    Script Date: 10/13/2020 3:36:10 AM ******/
CREATE DATABASE [Spruce]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Spruce', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Spruce.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Spruce_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Spruce_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Spruce] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Spruce].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Spruce] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Spruce] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Spruce] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Spruce] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Spruce] SET ARITHABORT OFF 
GO
ALTER DATABASE [Spruce] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Spruce] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Spruce] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Spruce] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Spruce] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Spruce] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Spruce] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Spruce] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Spruce] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Spruce] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Spruce] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Spruce] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Spruce] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Spruce] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Spruce] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Spruce] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Spruce] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Spruce] SET RECOVERY FULL 
GO
ALTER DATABASE [Spruce] SET  MULTI_USER 
GO
ALTER DATABASE [Spruce] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Spruce] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Spruce] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Spruce] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Spruce] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Spruce] SET QUERY_STORE = OFF
GO
USE [Spruce]
GO
/****** Object:  Table [dbo].[AdminLog]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdminLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NULL,
 CONSTRAINT [PK_Cart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[PhoneNo] [nvarchar](15) NULL,
 CONSTRAINT [PK_ContactUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomDesign]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomDesign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FabricId] [int] NOT NULL,
	[ShirtStyle] [nvarchar](100) NOT NULL,
	[ThreadColor] [nvarchar](100) NOT NULL,
	[CuffStyle] [nvarchar](100) NOT NULL,
	[ButtonStyle] [nvarchar](100) NOT NULL,
	[BtnColor] [nvarchar](50) NOT NULL,
	[PocketStyle] [nvarchar](10) NOT NULL,
	[MadeToMeasureOrStandard] [nvarchar](50) NOT NULL,
	[CollorStyle] [nvarchar](50) NULL,
 CONSTRAINT [PK_CustomDesign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomOrders]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomOrders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomDesign] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Status] [bit] NULL,
	[Total] [int] NULL,
	[AdminView] [bit] NULL,
	[secondAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_CustomOrders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Featured]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Featured](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_Featured] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBack]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Feeling] [nvarchar](20) NOT NULL,
	[Issue] [nvarchar](25) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MadeToMeasure]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MadeToMeasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Collar] [nvarchar](50) NOT NULL,
	[Shoulder] [nvarchar](50) NOT NULL,
	[Chest] [nvarchar](50) NOT NULL,
	[Waist] [nvarchar](50) NOT NULL,
	[SleeveLength] [nvarchar](50) NOT NULL,
	[ShirtLength] [nvarchar](50) NOT NULL,
	[CustomOrderId] [int] NOT NULL,
 CONSTRAINT [PK_CustomOrderId] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Total] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[AdminView] [bit] NULL,
	[secondAddress] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Password]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Password](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NOT NULL,
	[Password] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Password] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pix.us.ExceptionHandeling]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pix.us.ExceptionHandeling](
	[Id] [int] NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Block] [bit] NOT NULL,
 CONSTRAINT [PK_Pix.us.ExceptionHandeling] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[MainImage] [nvarchar](max) NOT NULL,
	[ImageGallery] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](1500) NOT NULL,
	[DiscountedPrice] [int] NULL,
	[sold] [bit] NULL,
	[Category] [nvarchar](50) NULL,
	[Color] [nvarchar](20) NULL,
	[delete] [bit] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Review] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Rating] [int] NULL,
 CONSTRAINT [PK_Review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscription]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscription](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Subscription] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/13/2020 3:36:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[PhoneNo] [nvarchar](25) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_SignUp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdminLog] ON 

INSERT [dbo].[AdminLog] ([Id], [Email], [Password]) VALUES (1, N'Zuhaibqureshi.za@gmail.com', N'123')
SET IDENTITY_INSERT [dbo].[AdminLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([Id], [OrderId], [ProductId], [Quantity]) VALUES (1006, 1004, 1032, 6)
SET IDENTITY_INSERT [dbo].[Cart] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomDesign] ON 

INSERT [dbo].[CustomDesign] ([Id], [FabricId], [ShirtStyle], [ThreadColor], [CuffStyle], [ButtonStyle], [BtnColor], [PocketStyle], [MadeToMeasureOrStandard], [CollorStyle]) VALUES (1019, 1033, N'Simple Shirt', N'BlueColor', N'One Button', N'button', N'blackColor', N'pocket', N'Made To Measure', N'Large Spread')
INSERT [dbo].[CustomDesign] ([Id], [FabricId], [ShirtStyle], [ThreadColor], [CuffStyle], [ButtonStyle], [BtnColor], [PocketStyle], [MadeToMeasureOrStandard], [CollorStyle]) VALUES (2016, 1033, N'Simple Shirt', N'BlueColor', N'One Button', N'button', N'green', N'pocket', N'Made To Measure', N'Large Spread')
SET IDENTITY_INSERT [dbo].[CustomDesign] OFF
GO
SET IDENTITY_INSERT [dbo].[CustomOrders] ON 

INSERT [dbo].[CustomOrders] ([Id], [CustomDesign], [UserId], [Date], [Status], [Total], [AdminView], [secondAddress]) VALUES (1023, 1019, 1003, CAST(N'2020-10-05T08:18:28.947' AS DateTime), 1, 500, 1, N'Address')
INSERT [dbo].[CustomOrders] ([Id], [CustomDesign], [UserId], [Date], [Status], [Total], [AdminView], [secondAddress]) VALUES (2020, 2016, 2002, CAST(N'2020-10-13T02:34:21.013' AS DateTime), 0, 500, 0, N'123')
SET IDENTITY_INSERT [dbo].[CustomOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBack] ON 

INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (1, N'Feeling laugh', N'Feeling laugh', N'Zuhaibqureshi.za@gmail.com', N'This is not working')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (2, N'Feeling good', N'Broken', N'Zuhaibqureshi.za@gmail.com', N'Something Broken')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (3, N'', N'Content', N'Zuhaibqureshi.za@gmail.com', N'123')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (4, N'', N'Content', N'Zuhaibqureshi.za@gmail.com', N'content is not good')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (5, N'', N'Content', N'Zuhaibqureshi.za@gmail.com', N'content is not good')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (6, N'Feeling angry', N'Design', N'Zuhaibqureshi.za@gmail.com', N'123')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (7, N'Feeling angry', N'Broken', N'Zuhaibqureshi.za@gmail.com', N'123')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (1002, N'', N'', N'Zuhaibqureshi.za@gmail.com', N'123')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (1003, N'', N'', N'Zuhaibqureshi.za@gmail.com', N'321')
INSERT [dbo].[FeedBack] ([Id], [Feeling], [Issue], [Email], [Description]) VALUES (1004, N'Feeling angry', N'Broken', N'Zuhaibqureshi.za@gmail.com', N'321')
SET IDENTITY_INSERT [dbo].[FeedBack] OFF
GO
SET IDENTITY_INSERT [dbo].[MadeToMeasure] ON 

INSERT [dbo].[MadeToMeasure] ([Id], [Collar], [Shoulder], [Chest], [Waist], [SleeveLength], [ShirtLength], [CustomOrderId]) VALUES (1020, N'14', N'17', N'20.5', N'18', N'24.5', N'28.5', 1019)
INSERT [dbo].[MadeToMeasure] ([Id], [Collar], [Shoulder], [Chest], [Waist], [SleeveLength], [ShirtLength], [CustomOrderId]) VALUES (2017, N'14', N'17', N'20.5', N'18', N'24.5', N'28.5', 2016)
SET IDENTITY_INSERT [dbo].[MadeToMeasure] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [UserId], [Date], [Total], [Status], [AdminView], [secondAddress]) VALUES (1004, 1003, CAST(N'2020-10-05T08:19:32.620' AS DateTime), 3000, 0, 1, N'Address')
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Pix.us.ExceptionHandeling] ([Id], [Username], [Password], [Block]) VALUES (1, N'abc', N'123', 0)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1032, N'Product 1', 500, 54, N'Product', N'Images/4.jpg.jpg', N'4.jpg,4.jpg,', N'this is description', 50, 0, N'Shafoon', N'blackColor', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1033, N'Fabric 1', 500, 60, N'Fabric', N'Images/24 .jpg.jpg', N'24 .jpg,24 .jpg,24 .jpg,24 .jpg,', N'this is description', 50, 0, N'Prints & Self Patterns', N'yellow', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1034, N'Product 2', 700, 5, N'Product', N'Images/8.jpg.jpg', N'8.jpg,8.jpg,8.jpg,', N'this is description', 600, 0, N'Cotton', N'blackColor', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1035, N'Product 3', 700, 5, N'Fabric', N'Images/31.JPG.jpg', N'31.JPG,31.JPG,31.JPG,31.JPG,', N'this is description', 600, 0, N'Solids', N'red', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1036, N'Product 4', 700, 5, N'Product', N'Images/11.jpg.jpg', N'11.jpg,11.jpg,11.jpg,11.jpg,', N'this is description', 600, 0, N'Jersey', N'Orange', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1037, N'Product 5', 700, 5, N'Fabric', N'Images/24 .jpg.jpg', N'24 .jpg,24 .jpg,24 .jpg,24 .jpg,24 .jpg,24 .jpg,24 .jpg,24 .jpg,', N'this is description', 600, 0, N'Solids', N'Blue_violet', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1038, N'Product 6', 700, 5, N'Product', N'Images/8.jpg.jpg', N'8.jpg,8.jpg,8.jpg,8.jpg,', N'this is description', 600, 0, N'Shafoon', N'Orange', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1039, N'Product 7', 700, 5, N'Product', N'Images/7.jpg.jpg', N'7.jpg,', N'this is description', 600, 0, N'Jeans', N'blackColor', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1040, N'Product 7', 700, 5, N'Product', N'Images/9.jpg.jpg', N'9.jpg,', N'this is description', 600, 0, N'Jersey', N'yellow', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1041, N'Product 8', 700, 5, N'Fabric', N'Images/8.jpg.jpg', N'8.jpg,8.jpg,', N'this is description', 600, 0, N'Prints & Self Patterns', N'red', 1)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1042, N'Product 8', 700, 5, N'Product', N'Images/4.jpg.jpg', N'4.jpg,', N'this is description', 600, 0, N'Jersey', N'white', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1043, N'Product 9', 700, 5, N'Product', N'Images/3.jpg.jpg', N'3.jpg,', N'this is description', 600, 0, N'Jersey', N'Light_blue', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1044, N'Fabric 2', 30, 4, N'Fabric', N'Images/28 .jpg.jpg', N'28 .jpg,', N'123', 20, 0, N'Solids', N'Green', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1045, N'Fabric 3', 30, 4, N'Fabric', N'Images/27.JPG.jpg', N'27.JPG,', N'123', 20, 0, N'Solids', N'Light_blue', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1046, N'Fabric 3', 30, 4, N'Fabric', N'Images/25.JPG.jpg', N'25.JPG,', N'123', 20, 0, N'Prints & Self Patterns', N'red', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1047, N'Fabric 3', 30, 4, N'Fabric', N'Images/30.JPG.jpg', N'30.JPG,', N'123', 20, 0, N'Solids', N'blackColor', 0)
INSERT [dbo].[Product] ([Id], [Name], [Price], [Quantity], [Type], [MainImage], [ImageGallery], [Description], [DiscountedPrice], [sold], [Category], [Color], [delete]) VALUES (1048, N'Fabric 3', 30, 4, N'Fabric', N'Images/32 .jpg.jpg', N'32 .jpg,', N'123', 20, 0, N'Prints & Self Patterns', N'BlueColor', 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscription] ON 

INSERT [dbo].[Subscription] ([Id], [Email]) VALUES (1, N'asd')
INSERT [dbo].[Subscription] ([Id], [Email]) VALUES (2, N'zuhaibqureshi.za@gmail.com')
INSERT [dbo].[Subscription] ([Id], [Email]) VALUES (3, N'')
SET IDENTITY_INSERT [dbo].[Subscription] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Name], [Email], [PhoneNo], [Password], [Address]) VALUES (1003, N'test', N'test@gmail.com', N'090078601', N'123', N'Address')
INSERT [dbo].[User] ([Id], [Name], [Email], [PhoneNo], [Password], [Address]) VALUES (2002, N'Zuhaib Ahmed', N'Zuhaibqureshi.za@gmail.com', N'123', N'123', N'123')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Cart]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[CustomOrders]  WITH CHECK ADD FOREIGN KEY([CustomDesign])
REFERENCES [dbo].[CustomDesign] ([Id])
GO
ALTER TABLE [dbo].[CustomOrders]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Featured]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MadeToMeasure]  WITH CHECK ADD FOREIGN KEY([CustomOrderId])
REFERENCES [dbo].[CustomDesign] ([Id])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
USE [master]
GO
ALTER DATABASE [Spruce] SET  READ_WRITE 
GO
