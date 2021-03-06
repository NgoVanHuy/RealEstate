USE [RealEstate]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBook](
	[AddressBookID] [int] IDENTITY(1,1) NOT NULL,
	[AddressBookName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Phone] [numeric](11, 0) NULL,
	[Address] [nvarchar](200) NULL,
	[Postal] [nvarchar](100) NULL,
	[CustomerID] [int] NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_AddressBook] PRIMARY KEY CLUSTERED 
(
	[AddressBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[DateCreated] [datetime] NOT NULL,
	[LastActivityDate] [datetime] NULL,
	[SecurityStamp] [nvarchar](50) NOT NULL CONSTRAINT [DF__User__SecuritySt__1B9317B3]  DEFAULT (''),
	[MainPage] [nvarchar](100) NULL,
	[UserDescription] [nvarchar](max) NULL,
	[UserPhone] [nvarchar](50) NULL,
 CONSTRAINT [PK__User__3214EC077A92E080] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Collection]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collection](
	[CollectionID] [int] IDENTITY(1,1) NOT NULL,
	[CollectionName] [nvarchar](50) NULL,
	[CollectionDescription] [nvarchar](max) NULL,
	[PageTitle] [nvarchar](50) NULL,
	[PageDescription] [nvarchar](max) NULL,
	[CollectionState] [bit] NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerFirstName] [nvarchar](50) NULL,
	[CustomerLastName] [nvarchar](50) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[ReceiveAdvertisement] [bit] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Image]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Image](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](100) NULL,
	[ImageSize] [numeric](18, 0) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderProduct](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
 CONSTRAINT [PK_OrderProduct] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[ProductContent] [nvarchar](max) NULL,
	[ProductShortDescription] [nvarchar](1000) NULL,
	[ProductTitleCard] [nvarchar](50) NULL,
	[ProductDescriptionCard] [nvarchar](max) NULL,
	[ProductAlias] [nvarchar](50) NULL,
	[ProductState] [bit] NULL,
	[SupplierID] [int] NULL,
	[ProductStyleID] [int] NULL,
	[CollectionID] [int] NULL,
	[ProductUrl] [nvarchar](100) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductStyle]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStyle](
	[ProductStyleID] [int] IDENTITY(1,1) NOT NULL,
	[ProductStyleName] [nvarchar](50) NULL,
 CONSTRAINT [PK_ProductStyle] PRIMARY KEY CLUSTERED 
(
	[ProductStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tag]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblOrder]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNote] [nvarchar](50) NULL,
	[OrderStatus] [int] NULL,
	[ShippingCost] [numeric](18, 0) NULL,
	[MethodShipping] [int] NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[UrlProduct] [nvarchar](100) NULL,
	[CustomerID] [int] NULL,
	[ProductID] [int] NULL,
	[OrderName] [nvarchar](50) NULL,
	[OrderCreate] [nvarchar](16) NULL,
	[TotalCount] [numeric](18, 0) NULL,
	[DeliveryStatus] [int] NULL,
	[BillingStatus] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Unit]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unit](
	[UnitID] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Unit] PRIMARY KEY CLUSTERED 
(
	[UnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variant]    Script Date: 6/15/2016 3:41:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variant](
	[VariantID] [int] IDENTITY(1,1) NOT NULL,
	[Variant1Name] [nvarchar](100) NULL,
	[Variant2Name] [nvarchar](100) NULL,
	[Variant3Name] [nvarchar](100) NULL,
	[Variant1Value] [nvarchar](100) NULL,
	[Variant2Value] [nvarchar](100) NULL,
	[Variant3Value] [nvarchar](100) NULL,
	[Price] [int] NULL,
	[SKU] [nvarchar](50) NULL,
	[Barcode] [nvarchar](50) NULL,
	[UnitValue] [int] NULL,
	[UnitID] [int] NULL,
	[Variant1Active] [bit] NULL,
	[Variant2Active] [bit] NULL,
	[Variant3Active] [bit] NULL,
	[ProductID] [int] NULL,
	[ImageUrl] [nvarchar](100) NULL,
 CONSTRAINT [PK_Variant] PRIMARY KEY CLUSTERED 
(
	[VariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AppUsers] ON 

INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone]) VALUES (0, N'ngovanhuy', N'c4ca4238a0b923820dcc509a6f75849b', N'ngovanhuy@gmail.com', CAST(N'2016-05-25 10:21:27.900' AS DateTime), CAST(N'2016-05-25 10:21:27.900' AS DateTime), N'1a22727f-1512-4d10-84ad-4433789ed18f', NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone]) VALUES (1, N'ngovanhuy0241', N'c20ad4d76fe97759aa27a0c99bff6710', N'ngovanhuy1@gmail.com', CAST(N'2016-05-25 14:23:08.820' AS DateTime), CAST(N'2016-05-25 14:23:08.820' AS DateTime), N'e228fa43-0e2f-46f7-81e5-83a2dec2c8ac', N'xxx12', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppUsers] OFF
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (0, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState]) VALUES (1, N'Danh mục 1', N'xxx', N'Danh mục 1', N'xxx', 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState]) VALUES (2, N'Danh mục 2', N'xxx2', N'Danh mục 2', N'xxx2', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState]) VALUES (3, N'Danh mục 3', N'xxx3', N'Danh mục 3', N'xxx3', 1)
SET IDENTITY_INSERT [dbo].[Collection] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'Việt Nam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'Nhật Bản')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Anh')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [ReceiveAdvertisement]) VALUES (1, N'Ngô Thị', N'Hiền', N'ngothihien@gmail.com', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [ReceiveAdvertisement]) VALUES (2, N'Ngô Thị', N'Hường', N'ngothihuong@gmail.com', 0)
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [ReceiveAdvertisement]) VALUES (3, N'Phạm Văn', N'Kiên', N'phamvankien@gmail.com', 1)
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [ReceiveAdvertisement]) VALUES (4, N'Ngô Văn', N'Huy', N'ngovanhuy@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (1, N'Quần bò', N'xxx', NULL, N'Quần bò ngoại', N'xxx', N'quanbo', 1, 1, 1, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (2, N'Quần thể thao', N'xxx', NULL, N'Quần thể thao', NULL, N'quanthethao', 0, 2, 2, 2, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (3, N'Bình sữa ngoại', NULL, NULL, N'Bình sữa nước Anh', NULL, N'binhsuangoai', 1, 2, 3, 3, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (4, N'Bút bi', NULL, NULL, N'Bút Thiên Long', NULL, N'butbi', 1, 1, 4, 1, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (5, N'Chuột Fushien', NULL, NULL, N'Chuột hồng ngoại', NULL, N'chuotfushien', 1, 1, 5, 2, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [CollectionID], [ProductUrl]) VALUES (6, N'Dây cáp quang', NULL, NULL, N'Dây cáp quang', NULL, N'daycapquan', 0, 2, 6, 3, NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductStyle] ON 

INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (1, N'Quần bé trai')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (2, N'Quần bé gái')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (3, N'Bình sữa')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (4, N'Bút')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (5, N'Chuột')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (6, N'Dây cáp')
SET IDENTITY_INSERT [dbo].[ProductStyle] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (1, N'Nhà cung cấp 1')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (2, N'Nhà cung cấp 2')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[TblOrder] ON 

INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus]) VALUES (1, N'xxx', 1, CAST(500000 AS Numeric(18, 0)), 1, N'ngovanhuy@gmail.com', N'/?bwaf=209', 4, 1, N'#1001', N'19/04/2016 10:45', CAST(6500000 AS Numeric(18, 0)), 1, 1)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus]) VALUES (2, NULL, 1, CAST(1000000 AS Numeric(18, 0)), 2, N'ngothihien@gmail.com', NULL, 1, 1, N'#1002', N'19/05/2016 10:45', CAST(2000000 AS Numeric(18, 0)), 2, 2)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus]) VALUES (3, NULL, 1, CAST(200000 AS Numeric(18, 0)), 1, N'ngothihuong@gmail.com', NULL, 2, 2, N'#1003', N'19/05/2016 10:45', CAST(1000000 AS Numeric(18, 0)), 3, 3)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus]) VALUES (4, NULL, 1, CAST(100000 AS Numeric(18, 0)), 1, N'phamvankien@gmail.com', N'/?bwaf=205', 3, 3, N'#1004', N'19/05/2016 10:45', CAST(200000 AS Numeric(18, 0)), 1, 4)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus]) VALUES (5, NULL, 0, CAST(100000 AS Numeric(18, 0)), 1, N'ngovanhuy@gmail.com', NULL, 4, 4, N'#1005', N'19/05/2016 10:45', CAST(200000 AS Numeric(18, 0)), 2, 1)
SET IDENTITY_INSERT [dbo].[TblOrder] OFF
SET IDENTITY_INSERT [dbo].[Unit] ON 

INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (1, N'kg')
INSERT [dbo].[Unit] ([UnitID], [UnitName]) VALUES (2, N'g')
SET IDENTITY_INSERT [dbo].[Unit] OFF
SET IDENTITY_INSERT [dbo].[Variant] ON 

INSERT [dbo].[Variant] ([VariantID], [Variant1Name], [Variant2Name], [Variant3Name], [Variant1Value], [Variant2Value], [Variant3Value], [Price], [SKU], [Barcode], [UnitValue], [UnitID], [Variant1Active], [Variant2Active], [Variant3Active], [ProductID], [ImageUrl]) VALUES (1, N'Kích thước', NULL, NULL, N'L', NULL, NULL, 300000, NULL, NULL, 10, 1, 1, 0, 0, 2, NULL)
INSERT [dbo].[Variant] ([VariantID], [Variant1Name], [Variant2Name], [Variant3Name], [Variant1Value], [Variant2Value], [Variant3Value], [Price], [SKU], [Barcode], [UnitValue], [UnitID], [Variant1Active], [Variant2Active], [Variant3Active], [ProductID], [ImageUrl]) VALUES (2, N'Kích thước', N'Màu sắc', NULL, N'S', N'Màu vàng', NULL, 240000, NULL, NULL, 20, 1, 1, 1, 0, 1, NULL)
SET IDENTITY_INSERT [dbo].[Variant] OFF
ALTER TABLE [dbo].[AddressBook]  WITH CHECK ADD  CONSTRAINT [FK_AddressBook_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([CountryID])
GO
ALTER TABLE [dbo].[AddressBook] CHECK CONSTRAINT [FK_AddressBook_Country]
GO
ALTER TABLE [dbo].[AddressBook]  WITH CHECK ADD  CONSTRAINT [FK_AddressBook_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[AddressBook] CHECK CONSTRAINT [FK_AddressBook_Customer]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.User_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.User_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.User_UserId]
GO
ALTER TABLE [dbo].[Image]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Image] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Collection] FOREIGN KEY([CollectionID])
REFERENCES [dbo].[Collection] ([CollectionID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Collection]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductStyle] FOREIGN KEY([ProductStyleID])
REFERENCES [dbo].[ProductStyle] ([ProductStyleID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductStyle]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Supplier] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[Variant]  WITH CHECK ADD  CONSTRAINT [FK_Variant_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Variant] CHECK CONSTRAINT [FK_Variant_Product]
GO
ALTER TABLE [dbo].[Variant]  WITH CHECK ADD  CONSTRAINT [FK_Variant_Unit] FOREIGN KEY([UnitID])
REFERENCES [dbo].[Unit] ([UnitID])
GO
ALTER TABLE [dbo].[Variant] CHECK CONSTRAINT [FK_Variant_Unit]
GO
