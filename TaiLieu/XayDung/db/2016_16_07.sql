USE [RealEstate]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AddressBook](
	[AddressBookID] [int] IDENTITY(1,1) NOT NULL,
	[AddressBookFirstName] [nvarchar](50) NULL,
	[AddressBookLastName] [nvarchar](50) NULL,
	[CompanyName] [nvarchar](50) NULL,
	[Phone] [nvarchar](11) NULL,
	[HomeAddress] [nvarchar](200) NULL,
	[ProvinceName] [nvarchar](50) NULL,
	[Postal] [nvarchar](100) NULL,
	[CustomerID] [int] NULL,
	[CountryID] [int] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_AddressBook] PRIMARY KEY CLUSTERED 
(
	[AddressBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 7/16/2016 11:08:26 PM ******/
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
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
 CONSTRAINT [PK__User__3214EC077A92E080] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[BillingAddress]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillingAddress](
	[BillingAddressID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[ProvinceName] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
	[CountryName] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[HomeAddress] [nvarchar](100) NULL,
 CONSTRAINT [PK_BillingAddress] PRIMARY KEY CLUSTERED 
(
	[BillingAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Collection]    Script Date: 7/16/2016 11:08:26 PM ******/
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
	[CollectionImage] [nvarchar](300) NULL,
	[CollectionType] [nvarchar](20) NULL,
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
	[UrlAlias] [nvarchar](50) NULL,
	[TemplateLayout] [nvarchar](20) NULL,
	[ConditionForCollection] [bit] NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CollectionProduct]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollectionProduct](
	[ID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NULL,
	[CollectionID] [int] NULL,
 CONSTRAINT [PK_CollectionProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerFirstName] [nvarchar](50) NULL,
	[CustomerLastName] [nvarchar](50) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[AcceptsMarketing] [bit] NULL,
	[CustomerNote] [nvarchar](max) NULL,
	[CustomerState] [int] NULL,
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
	[TotalOrder] [int] NULL,
	[TotalCount] [numeric](10, 0) NULL,
	[Tags] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LineItem]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LineItem](
	[LineItemID] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NULL,
	[Price] [numeric](18, 0) NULL,
	[ProductID] [int] NULL,
	[SKU] [nvarchar](50) NULL,
	[ProductName] [nvarchar](50) NULL,
	[VariantID] [int] NULL,
	[VariantName] [nvarchar](50) NULL,
	[OrderID] [int] NULL,
	[ShippingStatus] [nvarchar](20) NULL,
 CONSTRAINT [PK_LineItem] PRIMARY KEY CLUSTERED 
(
	[LineItemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/16/2016 11:08:26 PM ******/
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
	[ProductUrl] [nvarchar](100) NULL,
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
	[Tags] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductStyle]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[ShippingAddress]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingAddress](
	[ShippingAddressID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[ProvinceName] [nvarchar](50) NULL,
	[CountryID] [int] NULL,
	[CountryName] [nvarchar](50) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[HomeAddress] [nvarchar](100) NULL,
 CONSTRAINT [PK_ShippingAddress] PRIMARY KEY CLUSTERED 
(
	[ShippingAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/16/2016 11:08:26 PM ******/
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
/****** Object:  Table [dbo].[Tag]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](50) NULL,
	[TableNameID] [int] NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblImage]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblImage](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](max) NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageSize] [numeric](18, 0) NULL,
	[ProductID] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblLog]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblLog](
	[LogID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[ActionID] [int] NULL,
	[ObjectID] [int] NULL,
	[DataTimeLog] [nvarchar](20) NULL CONSTRAINT [DF_TblLog_DataTimeLog]  DEFAULT (getdate()),
	[IP] [nvarchar](20) NULL,
	[TableNameID] [int] NULL,
	[ObjectValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblLog] PRIMARY KEY CLUSTERED 
(
	[LogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblOption]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOption](
	[OptionID] [int] IDENTITY(1,1) NOT NULL,
	[OptionName] [nvarchar](50) NULL,
	[Position] [int] NULL,
	[OptionValue] [nvarchar](max) NULL,
	[ProductID] [int] NULL,
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
 CONSTRAINT [PK_TblOption] PRIMARY KEY CLUSTERED 
(
	[OptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblOrder]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOrder](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[OrderNote] [nvarchar](50) NULL,
	[OrderStatus] [int] NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[CustomerID] [int] NULL,
	[CreateDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
	[TotalCount] [numeric](18, 0) NULL,
	[ShippingStatus] [nvarchar](20) NULL,
	[BillingStatus] [nvarchar](20) NULL,
	[Number] [int] NULL,
	[ShippingAddressID] [int] NULL,
	[BillingAddressID] [int] NULL,
	[Tags] [nvarchar](max) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblRule]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblRule](
	[RuleID] [int] IDENTITY(1,1) NOT NULL,
	[CollectionID] [int] NULL,
	[ColumnName] [nvarchar](20) NULL,
	[Relation] [nvarchar](20) NULL,
	[ConditionValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblRule] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Variant]    Script Date: 7/16/2016 11:08:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variant](
	[VariantID] [int] IDENTITY(1,1) NOT NULL,
	[Option1] [nvarchar](100) NULL,
	[Option2] [nvarchar](100) NULL,
	[Option3] [nvarchar](100) NULL,
	[VariantPrice] [numeric](18, 0) NULL,
	[Textable] [bit] NULL,
	[CompareWithPrice] [numeric](18, 0) NULL,
	[VariantBarcode] [nvarchar](50) NULL,
	[VariantSKU] [nvarchar](50) NULL,
	[VariantWeight] [int] NULL,
	[WeightUnit] [nvarchar](10) NULL,
	[RequireShipping] [bit] NULL,
	[ProductID] [int] NULL,
	[ImageID] [int] NULL,
	[CreatedDateTime] [nvarchar](14) NULL,
	[ModifiedDateTime] [nvarchar](14) NULL,
	[VariantTittle] [nvarchar](50) NULL,
 CONSTRAINT [PK_Variant] PRIMARY KEY CLUSTERED 
(
	[VariantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AddressBook] ON 

INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (27, N'ngo van ', N'huy', N'dkt', N'02413713355', N'phu lam tien du bac ninh', N'Bắc Ninh1', N'1234567890', 8, 1, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (28, N'ngo thi ', N'huong', N'THPT Chuyen Bac Ninh', N'01659359039', N'phu lam tien du', N'Bac Ninh', NULL, 9, 1, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (29, N'ngo', N'1', N'dkt', N'02413713355', N'xxx', N'Bac Ninh', NULL, 8, 1, 0)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (30, N'ngo thi', N'hien', N'toi trang', N'0123456789', N'vinh-pl-td-bn', N'tokyo', NULL, 10, 2, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (31, N'Nguyễn Thị', N'Tình', NULL, NULL, N'phu lam tien du bac ninh', N'Bắc Ninh', NULL, 11, 1, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (36, N'nguyen thi', N'tinh', N'tai gia', N'01659359039', N'kyp', N'kup', NULL, 11, 2, 0)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (37, N'ngovan', N'hoa', N'trum xay', NULL, N'jlkkl', N'Bắc Ninh', NULL, 13, 1, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [ProvinceName], [Postal], [CustomerID], [CountryID], [IsDefault]) VALUES (38, N'le duy', N'toi', N'trum moc', NULL, NULL, N'Bắc Ninh', NULL, 14, 1, 1)
SET IDENTITY_INSERT [dbo].[AddressBook] OFF
SET IDENTITY_INSERT [dbo].[AppUsers] ON 

INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone], [CreatedDateTime], [ModifiedDateTime]) VALUES (0, N'ngovanhuy', N'c4ca4238a0b923820dcc509a6f75849b', N'ngovanhuy@gmail.com', CAST(N'2016-05-25 10:21:27.900' AS DateTime), CAST(N'2016-05-25 10:21:27.900' AS DateTime), N'1a22727f-1512-4d10-84ad-4433789ed18f', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone], [CreatedDateTime], [ModifiedDateTime]) VALUES (1, N'ngovanhuy0241', N'c4ca4238a0b923820dcc509a6f75849b', N'ngovanhuy1@gmail.com', CAST(N'2016-05-25 14:23:08.820' AS DateTime), CAST(N'2016-05-25 14:23:08.820' AS DateTime), N'e228fa43-0e2f-46f7-81e5-83a2dec2c8ac', N'xxx12', NULL, N'0241371335', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppUsers] OFF
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (0, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[BillingAddress] ON 

INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (2, N'0123456789', N'tokyo', 2, N'Nhật Bản', N'ngo thi hien', N'vinh-pl-td-bn')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (3, N'02413713355', N'Ha Noi', 1, N'Việt Nam', N'ngo van  huy', N'Hai Ba Trung')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (4, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (5, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (6, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (7, NULL, N'Bắc Ninh', 1, N'Việt Nam', N'Nguyễn Thị Tình', N'phu lam tien du bac ninh')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (8, NULL, N'Bắc Ninh', 1, N'Việt Nam', N'Nguyễn Thị Tình', N'phu lam tien du bac ninh')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (9, N'02413713355', N'Bắc Ninh1', 1, N'Việt Nam', N'ngo van  huy', N'phu lam tien du bac ninh')
INSERT [dbo].[BillingAddress] ([BillingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (10, NULL, N'Bắc Ninh', 1, N'Việt Nam', N'Nguyễn Thị Tình', NULL)
SET IDENTITY_INSERT [dbo].[BillingAddress] OFF
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (29, N'all', NULL, NULL, NULL, 1, NULL, N'smart', N'20160712', NULL, NULL, NULL, 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (30, N'danh muc 1', NULL, NULL, NULL, 1, N'http://localhost:6060/assets/uploads/collections/30/IMG_2165.JPG', N'custom', N'20160712', NULL, N'1', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (31, N'danh muc 2', NULL, N'danh muc 2', NULL, 1, NULL, N'smart', N'20160716061041', N'20160716100806', N'danh muc 2', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (32, N'danh muc 3', NULL, N'danh muc 3', NULL, 1, N'http://localhost:6060/assets/uploads/collections/32/IMG_2193.JPG', N'custom', N'20160716061127', NULL, N'danh muc 3', N'collection.list', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (33, N'danh muc 4', NULL, N'danh muc 4', NULL, 1, NULL, N'smart', N'20160716061217', N'20160716100721', N'danh muc 4', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (34, N'danh muc 5', NULL, N'danh muc 5', NULL, 1, NULL, N'smart', N'20160716061608', NULL, N'danh muc 5', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDateTime], [ModifiedDateTime], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (35, N'danh muc 6', NULL, N'danh muc 6', NULL, 0, NULL, N'custom', N'20160716061714', NULL, N'danh muc 6', N'collection.list', 0)
SET IDENTITY_INSERT [dbo].[Collection] OFF
SET IDENTITY_INSERT [dbo].[CollectionProduct] ON 

INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(1 AS Numeric(18, 0)), 58, 33)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(2 AS Numeric(18, 0)), 57, 33)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(3 AS Numeric(18, 0)), 54, 33)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(4 AS Numeric(18, 0)), 55, 33)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(8 AS Numeric(18, 0)), 58, 31)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(9 AS Numeric(18, 0)), 54, 31)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(10 AS Numeric(18, 0)), 55, 31)
SET IDENTITY_INSERT [dbo].[CollectionProduct] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'Việt Nam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'Nhật Bản')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Anh')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (8, N'ngo', N'huy', N'ngovanhuy@gmail.com', 1, N'xxx', 1, N'20160713', N'20160716114628', 1, CAST(13 AS Numeric(10, 0)), N'khach hang than thiet,btt')
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (9, N'ngo', N'huong', N'ngothihuong@gmail.com', 1, N'xxx', 0, N'20160713', N'20160715205201', 3, CAST(110 AS Numeric(10, 0)), NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (10, N'ngo thi', N'hien', N'ngothihien@gmail.com', 1, N'xxx', 0, N'20160714', NULL, 1, CAST(100 AS Numeric(10, 0)), NULL)
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (11, N'nguyen thi', N'tinh', N'nguyenthitinh@gmail.com', 1, NULL, 0, N'20160715205728', N'20160716114747', 3, CAST(132 AS Numeric(10, 0)), N'khach hang than thiet')
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (13, N'ngo van', N'hoa', N'ngovanhoa@gmail.com', 1, NULL, 0, N'20160716115708', N'20160716115708', 0, CAST(0 AS Numeric(10, 0)), N'khach hang than thiet,btt')
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDateTime], [ModifiedDateTime], [TotalOrder], [TotalCount], [Tags]) VALUES (14, N'le duy', N'toi', N'leduytoi@gmail.com', 1, NULL, 0, N'20160716115805', N'20160716115805', 0, CAST(0 AS Numeric(10, 0)), N'nttn')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[LineItem] ON 

INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (1, 10, CAST(2 AS Numeric(18, 0)), 55, N'2', N'san pham 2', 57, N'l', 1, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (2, 10, CAST(10 AS Numeric(18, 0)), 55, N'1', N'san pham 2', 58, N'm', 2, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (3, 1, CAST(0 AS Numeric(18, 0)), 56, NULL, N'san pham 3', 59, N'Default Title', 2, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (4, 1, CAST(2 AS Numeric(18, 0)), 55, N'2', N'san pham 2', 57, N'l', 3, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (5, 1, CAST(10 AS Numeric(18, 0)), 55, N'1', N'san pham 2', 58, N'm', 3, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (6, 1, CAST(1 AS Numeric(18, 0)), 54, N'1', N'san pham 1', 56, N'Default Title', 3, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (7, 10, CAST(0 AS Numeric(18, 0)), 56, NULL, N'san pham 3', 59, N'Default Title', 4, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (8, 10, CAST(0 AS Numeric(18, 0)), 56, NULL, N'san pham 3', 59, N'Default Title', 5, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (9, 10, CAST(1 AS Numeric(18, 0)), 54, N'1', N'san pham 1', 56, N'Default Title', 5, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (10, 10, CAST(0 AS Numeric(18, 0)), 56, NULL, N'san pham 3', 59, N'Default Title', 6, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (11, 100, CAST(1 AS Numeric(18, 0)), 54, N'1', N'san pham 1', 56, N'Default Title', 6, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (12, 10, CAST(0 AS Numeric(18, 0)), 56, NULL, N'san pham 3', 59, N'Default Title', 7, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (13, 10, CAST(2 AS Numeric(18, 0)), 55, N'2', N'san pham 2', 57, N'l', 8, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (14, 10, CAST(10 AS Numeric(18, 0)), 55, N'1', N'san pham 2', 58, N'm', 8, N'fulfilled')
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (15, 1, CAST(2 AS Numeric(18, 0)), 55, N'2', N'san pham 2', 57, N'l', 9, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (16, 1, CAST(10 AS Numeric(18, 0)), 55, N'1', N'san pham 2', 58, N'm', 9, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (17, 1, CAST(0 AS Numeric(18, 0)), 55, NULL, N'san pham 2', 60, N'xl', 9, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (18, 1, CAST(2 AS Numeric(18, 0)), 55, N'2', N'san pham 2', 57, N'l', 10, NULL)
INSERT [dbo].[LineItem] ([LineItemID], [Quantity], [Price], [ProductID], [SKU], [ProductName], [VariantID], [VariantName], [OrderID], [ShippingStatus]) VALUES (19, 1, CAST(10 AS Numeric(18, 0)), 55, N'1', N'san pham 2', 58, N'm', 10, NULL)
SET IDENTITY_INSERT [dbo].[LineItem] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (54, N'san pham 1', NULL, NULL, N'san pham 1', NULL, N'san pham 1', 1, 2, NULL, NULL, N'20160711', N'20160715234444', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (55, N'san pham 2', NULL, NULL, N'san pham 2', NULL, N'san pham 2', 1, 1, 1, NULL, N'20160711', N'20160715233148', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (56, N'san pham 3', NULL, NULL, N'san pham 3', NULL, N'san pham 3', 1, NULL, 6, NULL, N'20160714', N'20160715235040', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (57, N'san pham 4', NULL, NULL, N'san pham 4', NULL, N'san pham 4', 0, 2, 3, NULL, N'20160715235507', N'20160716005932', N'san pham 4,7')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (58, N'san pham 5', NULL, NULL, N'san pham 5', NULL, N'san pham 5', 0, 1, 1, NULL, N'20160716055440', N'20160716055440', N'1,san pham 4,2')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDateTime], [ModifiedDateTime], [Tags]) VALUES (59, N'san pham 6', NULL, NULL, N'san pham 6', NULL, N'san pham 6', 0, NULL, NULL, NULL, N'20160716055755', N'20160716055755', N'1,2,san pham 4')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductStyle] ON 

INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (1, N'Quần bé trai')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (2, N'Quần bé gái')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (3, N'Bình sữa')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (4, N'Bút')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (5, N'Chuột')
INSERT [dbo].[ProductStyle] ([ProductStyleID], [ProductStyleName]) VALUES (6, N'Dây cáp')
SET IDENTITY_INSERT [dbo].[ProductStyle] OFF
SET IDENTITY_INSERT [dbo].[ShippingAddress] ON 

INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (2, N'0123456789', N'win', 3, N'Anh', N'ngo thi hien', N'vinh-pl-td-bn')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (3, N'02413713355', N'Bắc Ninh1', 1, N'Việt Nam', N'ngo van  huy', N'phu lam tien du bac ninh')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (4, N'02413713355', N'sdfa', 3, N'Anh', N'ngo huy 123', N'xxx')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (5, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (6, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (7, N'01659359039', N'Bac Ninh', 1, N'Việt Nam', N'ngo thi  huong', N'phu lam tien du')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (8, N'01659359039', N'Bắc Ninh', 2, N'Nhật Bản', N'Nguyễn Thị Tình', N'phu lam tien du bac ninh')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (9, NULL, N'Bắc Ninh', 1, N'Việt Nam', N'Nguyễn Thị Tình', N'phu lam tien du bac ninh')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (10, N'02413713355', N'Bắc Ninh1', 1, N'Việt Nam', N'ngo van  huy', N'phu lam tien du bac ninh')
INSERT [dbo].[ShippingAddress] ([ShippingAddressID], [Phone], [ProvinceName], [CountryID], [CountryName], [CustomerName], [HomeAddress]) VALUES (11, NULL, N'Bắc Ninh', 1, N'Việt Nam', N'Nguyễn Thị Tình', N'phu lam tien du bac ninh')
SET IDENTITY_INSERT [dbo].[ShippingAddress] OFF
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (1, N'Nhà cung cấp 1')
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName]) VALUES (2, N'Nhà cung cấp 2')
SET IDENTITY_INSERT [dbo].[Supplier] OFF
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (1, N'1', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (2, N'2', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (3, N'3', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (4, N'4', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (5, N'5', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (6, N'6', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (7, N'7', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (8, N'don hang 1', 3)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (9, N'don hang 8', 3)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (10, N'san pham 4', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (14, N'khach hang than thiet', 2)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (15, N'btt', 2)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (16, N'nttn', 2)
SET IDENTITY_INSERT [dbo].[Tag] OFF
SET IDENTITY_INSERT [dbo].[TblImage] ON 

INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (97, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/products/54/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 54)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (98, N'IMG_2165.JPG', N'http://localhost:6060/assets/uploads/products/55/IMG_2165.JPG', CAST(852193 AS Numeric(18, 0)), 55)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (99, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/products/56/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 56)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (100, N'12884407_598397510317581_1601781397_n.jpg', N'http://localhost:6060/assets/uploads/products/55/12884407_598397510317581_1601781397_n.jpg', CAST(113700 AS Numeric(18, 0)), 55)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (101, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/products/57/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 57)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (102, N'IMG_2166.JPG', N'http://localhost:6060/assets/uploads/products/55/IMG_2166.JPG', CAST(832337 AS Numeric(18, 0)), 55)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID]) VALUES (103, N'37-9588-82a5fcfd898dd371cac7-f4a1-403a-b1dc-4c0b57577c92.jpg', N'http://localhost:6060/assets/uploads/products/59/37-9588-82a5fcfd898dd371cac7-f4a1-403a-b1dc-4c0b57577c92.jpg', CAST(17959 AS Numeric(18, 0)), 59)
SET IDENTITY_INSERT [dbo].[TblImage] OFF
SET IDENTITY_INSERT [dbo].[TblLog] ON 

INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(1 AS Numeric(18, 0)), 1, 2, 29, N'20160712090311', N'192.168.31.58', 5, N'all')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(2 AS Numeric(18, 0)), 1, 2, 30, N'20160712090444', N'192.168.31.58', 5, N'danh muc 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10002 AS Numeric(18, 0)), 1, 3, 6, N'20160712214318', N'192.168.0.100', 2, N'Nguyễn Thị Ánh')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10003 AS Numeric(18, 0)), 1, 4, 0, N'20160713090927', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10004 AS Numeric(18, 0)), 1, 4, 0, N'20160713090931', N'192.168.31.58', 2, N'Ngô Thị Hiền ngoan ngoan')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10005 AS Numeric(18, 0)), 1, 4, 0, N'20160713090935', N'192.168.31.58', 2, N'Ngô Thị Hường1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10006 AS Numeric(18, 0)), 1, 4, 0, N'20160713090939', N'192.168.31.58', 2, N'Phạm Văn Kiên')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10007 AS Numeric(18, 0)), 1, 4, 0, N'20160713090953', N'192.168.31.58', 2, N'Ngô Văn Huy')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10008 AS Numeric(18, 0)), 1, 4, 0, N'20160713090956', N'192.168.31.58', 2, N'Đào Thị Hương')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10009 AS Numeric(18, 0)), 1, 4, 0, N'20160713091001', N'192.168.31.58', 2, N'Nguyễn Thị Ánh')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10010 AS Numeric(18, 0)), 1, 2, 8, N'20160713091055', N'192.168.31.58', 2, N'ngo huy')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10011 AS Numeric(18, 0)), 1, 3, 1, N'20160713100029', N'192.168.31.58', 1, N'ngovanhuy0241')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10012 AS Numeric(18, 0)), 1, 3, 1, N'20160713100104', N'192.168.31.58', 1, N'ngovanhuy0241')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10013 AS Numeric(18, 0)), 1, 3, 1, N'20160713100128', N'192.168.31.58', 1, N'ngovanhuy0241')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10014 AS Numeric(18, 0)), 1, 3, 1, N'20160713100502', N'192.168.31.58', 1, N'ngovanhuy0241')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10015 AS Numeric(18, 0)), 1, 3, 1, N'20160713100510', N'192.168.31.58', 1, N'ngovanhuy0241')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10016 AS Numeric(18, 0)), 1, 2, 9, N'20160713105730', N'192.168.31.58', 2, N'ngo huong')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10017 AS Numeric(18, 0)), 1, 3, 8, N'20160713220217', N'192.168.0.107', 2, N'ngo huy')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10018 AS Numeric(18, 0)), 1, 3, 55, N'20160714153943', N'192.168.31.58', 4, N'san pham 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10019 AS Numeric(18, 0)), 1, 2, 10, N'20160714164609', N'192.168.31.58', 2, N'ngo thi hien')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10020 AS Numeric(18, 0)), 1, 2, 56, N'20160714173255', N'192.168.31.58', 4, N'san pham 3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10021 AS Numeric(18, 0)), 1, 2, 6, N'20160715085552', N'192.168.31.58', 3, N'#1002')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10022 AS Numeric(18, 0)), 1, 2, 7, N'20160715085552', N'192.168.31.58', 3, N'#1002')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10023 AS Numeric(18, 0)), 1, 2, 8, N'20160715095006', N'192.168.31.58', 3, N'#1003')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10024 AS Numeric(18, 0)), 1, 2, 1, N'20160715100015', N'192.168.31.58', 3, N'#1001')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10025 AS Numeric(18, 0)), 1, 2, 2, N'20160715100101', N'192.168.31.58', 3, N'#1002')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10026 AS Numeric(18, 0)), 1, 2, 3, N'20160715135432', N'192.168.31.58', 3, N'#1003')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10027 AS Numeric(18, 0)), 1, 2, 4, N'20160715204349', N'192.168.0.107', 3, N'#1004')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10028 AS Numeric(18, 0)), 1, 2, 5, N'20160715204557', N'192.168.0.107', 3, N'#1005')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10029 AS Numeric(18, 0)), 1, 2, 6, N'20160715205216', N'192.168.0.107', 3, N'#1006')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10030 AS Numeric(18, 0)), 1, 2, 11, N'20160715205728', N'192.168.0.107', 2, N'nguyen thi tinh')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10031 AS Numeric(18, 0)), 1, 2, 7, N'20160715205747', N'192.168.0.107', 3, N'#1007')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10032 AS Numeric(18, 0)), 1, 2, 8, N'20160715205814', N'192.168.0.107', 3, N'#1008')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10033 AS Numeric(18, 0)), 1, 3, 8, N'20160715214419', N'192.168.0.107', 3, N'#1008')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10034 AS Numeric(18, 0)), 1, 2, 9, N'20160715231143', N'192.168.0.107', 3, N'#1009')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10035 AS Numeric(18, 0)), 1, 2, 10, N'20160715232226', N'192.168.0.107', 3, N'#1010')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10036 AS Numeric(18, 0)), 1, 3, 10, N'20160715232607', N'192.168.0.107', 3, N'#1010')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10037 AS Numeric(18, 0)), 1, 3, 10, N'20160715232617', N'192.168.0.107', 3, N'#1010')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10038 AS Numeric(18, 0)), 1, 3, 55, N'20160715233148', N'192.168.0.107', 4, N'san pham 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10039 AS Numeric(18, 0)), 1, 3, 56, N'20160715233158', N'192.168.0.107', 4, N'san pham 3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10040 AS Numeric(18, 0)), 1, 3, 54, N'20160715233207', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10041 AS Numeric(18, 0)), 1, 3, 54, N'20160715233549', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10042 AS Numeric(18, 0)), 1, 3, 54, N'20160715233809', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10043 AS Numeric(18, 0)), 1, 3, 54, N'20160715233822', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10044 AS Numeric(18, 0)), 1, 3, 54, N'20160715233835', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10045 AS Numeric(18, 0)), 1, 3, 54, N'20160715233935', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10046 AS Numeric(18, 0)), 1, 3, 54, N'20160715234006', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10047 AS Numeric(18, 0)), 1, 3, 54, N'20160715234202', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10048 AS Numeric(18, 0)), 1, 3, 54, N'20160715234230', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10049 AS Numeric(18, 0)), 1, 3, 54, N'20160715234246', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10050 AS Numeric(18, 0)), 1, 3, 54, N'20160715234444', N'192.168.0.107', 4, N'san pham 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10051 AS Numeric(18, 0)), 1, 3, 56, N'20160715235040', N'192.168.0.107', 4, N'san pham 3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10052 AS Numeric(18, 0)), 1, 2, 57, N'20160715235507', N'192.168.0.107', 4, N'san pham 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10053 AS Numeric(18, 0)), 1, 3, 57, N'20160716004847', N'192.168.0.107', 4, N'san pham 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10054 AS Numeric(18, 0)), 1, 3, 57, N'20160716005758', N'192.168.0.107', 4, N'san pham 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10055 AS Numeric(18, 0)), 1, 3, 57, N'20160716005847', N'192.168.0.107', 4, N'san pham 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10056 AS Numeric(18, 0)), 1, 3, 57, N'20160716005932', N'192.168.0.107', 4, N'san pham 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10057 AS Numeric(18, 0)), 1, 2, 58, N'20160716055440', N'192.168.0.107', 4, N'san pham 5')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10058 AS Numeric(18, 0)), 1, 2, 59, N'20160716055756', N'192.168.0.107', 4, N'san pham 6')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10059 AS Numeric(18, 0)), 1, 2, 31, N'20160716061041', N'192.168.0.107', 5, N'danh muc 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10060 AS Numeric(18, 0)), 1, 3, 31, N'20160716061059', N'192.168.0.107', 5, N'danh muc 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10061 AS Numeric(18, 0)), 1, 2, 32, N'20160716061127', N'192.168.0.107', 5, N'danh muc 3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10062 AS Numeric(18, 0)), 1, 2, 33, N'20160716061217', N'192.168.0.107', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10063 AS Numeric(18, 0)), 1, 3, 33, N'20160716061410', N'192.168.0.107', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10064 AS Numeric(18, 0)), 1, 3, 33, N'20160716061412', N'192.168.0.107', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10065 AS Numeric(18, 0)), 1, 2, 34, N'20160716061608', N'192.168.0.107', 5, N'danh muc 5')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10066 AS Numeric(18, 0)), 1, 2, 35, N'20160716061714', N'192.168.0.107', 5, N'danh muc 6')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10067 AS Numeric(18, 0)), 1, 2, 60, N'20160716063441', N'192.168.0.107', 4, N'temp')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10068 AS Numeric(18, 0)), 1, 4, 60, N'20160716063509', N'192.168.0.107', 4, N'temp')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10069 AS Numeric(18, 0)), 1, 2, 61, N'20160716063606', N'192.168.0.107', 4, N'test')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10070 AS Numeric(18, 0)), 1, 4, 61, N'20160716063609', N'192.168.0.107', 4, N'test')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10071 AS Numeric(18, 0)), 1, 2, 62, N'20160716063801', N'192.168.0.107', 4, N'a')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10072 AS Numeric(18, 0)), 1, 4, 62, N'20160716063804', N'192.168.0.107', 4, N'a')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10073 AS Numeric(18, 0)), 1, 2, 36, N'20160716063913', N'192.168.0.107', 5, N'test')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10074 AS Numeric(18, 0)), 1, 2, 36, N'20160716064202', N'192.168.0.107', 5, N'test')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10075 AS Numeric(18, 0)), 1, 2, 12, N'20160716064224', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10076 AS Numeric(18, 0)), 1, 3, 12, N'20160716064232', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10077 AS Numeric(18, 0)), 1, 3, 12, N'20160716064236', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10078 AS Numeric(18, 0)), 1, 3, 12, N'20160716064252', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10079 AS Numeric(18, 0)), 1, 3, 12, N'20160716064257', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10080 AS Numeric(18, 0)), 1, 4, 0, N'20160716064339', N'192.168.0.107', 2, N'test ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10081 AS Numeric(18, 0)), 1, 3, 33, N'20160716085239', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10082 AS Numeric(18, 0)), 1, 3, 33, N'20160716085300', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10083 AS Numeric(18, 0)), 1, 3, 33, N'20160716085306', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10084 AS Numeric(18, 0)), 1, 3, 33, N'20160716085536', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10085 AS Numeric(18, 0)), 1, 3, 33, N'20160716085822', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10086 AS Numeric(18, 0)), 1, 3, 33, N'20160716095959', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10087 AS Numeric(18, 0)), 1, 3, 33, N'20160716100005', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10088 AS Numeric(18, 0)), 1, 3, 33, N'20160716100015', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10089 AS Numeric(18, 0)), 1, 3, 33, N'20160716100121', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10090 AS Numeric(18, 0)), 1, 3, 33, N'20160716100401', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10091 AS Numeric(18, 0)), 1, 3, 33, N'20160716100407', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10092 AS Numeric(18, 0)), 1, 3, 33, N'20160716100721', N'192.168.31.58', 5, N'danh muc 4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10093 AS Numeric(18, 0)), 1, 3, 31, N'20160716100741', N'192.168.31.58', 5, N'danh muc 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10094 AS Numeric(18, 0)), 1, 3, 31, N'20160716100757', N'192.168.31.58', 5, N'danh muc 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10095 AS Numeric(18, 0)), 1, 3, 31, N'20160716100806', N'192.168.31.58', 5, N'danh muc 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10096 AS Numeric(18, 0)), 1, 3, 8, N'20160716114629', N'192.168.31.58', 2, N'ngo huy')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10097 AS Numeric(18, 0)), 1, 3, 11, N'20160716114747', N'192.168.31.58', 2, N'nguyen thi tinh')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10098 AS Numeric(18, 0)), 1, 2, 13, N'20160716115708', N'192.168.31.58', 2, N'ngo van hoa')
GO
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(10099 AS Numeric(18, 0)), 1, 2, 14, N'20160716115805', N'192.168.31.58', 2, N'le duy toi')
SET IDENTITY_INSERT [dbo].[TblLog] OFF
SET IDENTITY_INSERT [dbo].[TblOption] ON 

INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (32, N'Title', 1, N'Default Title', 54, N'20160711164541', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (33, N'Kich co', 1, N'l,m,xl', 55, N'20160711164640', N'20160715222943')
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (34, N'Title', 1, N'Default Title', 56, N'20160714173255', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (35, N'Kich co', 1, N'l,m', 57, N'20160715235507', N'20160716005907')
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (36, N'Mau sac', 2, N'xanh,do', 57, N'20160716004847', N'20160716005907')
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (37, N'Chieu dai 10 20', 3, N'10,20', 57, N'20160716004847', N'20160716005907')
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (38, N'Title', 1, N'Default Title', 58, N'20160716055445', N'20160716055445')
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (39, N'Title', 1, N'Default Title', 59, N'20160716055756', N'20160716055756')
SET IDENTITY_INSERT [dbo].[TblOption] OFF
SET IDENTITY_INSERT [dbo].[TblOrder] ON 

INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (1, NULL, 1, NULL, NULL, N'20160715100015', N'20160715173310', CAST(20 AS Numeric(18, 0)), N'fulfilled', N'paid', 1, 4, NULL, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (2, NULL, 1, N'ngothihien@gmail.com', 10, N'20160715100101', N'20160715210333', CAST(100 AS Numeric(18, 0)), N'fulfilled', N'paid', 2, 2, 2, N'don hang 1')
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (3, N'1 san pham 2 phien ban 123', 1, N'ngovanhuy@gmail.com', 8, N'20160715135343', N'20160715163242', CAST(13 AS Numeric(18, 0)), N'fulfilled', N'pending', 3, 3, 3, N'don hang 1')
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (4, NULL, 1, N'ngothihuong@gmail.com', 9, N'20160715204349', N'20160715204349', CAST(0 AS Numeric(18, 0)), N'unfulfilled', N'paid', 4, 5, 4, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (5, NULL, 1, N'ngothihuong@gmail.com', 9, N'20160715204557', N'20160715205022', CAST(10 AS Numeric(18, 0)), N'unfulfilled', N'paid', 5, 6, 5, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (6, NULL, 1, N'ngothihuong@gmail.com', 9, N'20160715205136', N'20160715205136', CAST(100 AS Numeric(18, 0)), N'unfulfilled', N'paid', 6, 7, 6, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (7, NULL, 1, N'nguyenthitinh@gmail.com', 11, N'20160715205747', N'20160715210401', CAST(0 AS Numeric(18, 0)), N'fulfilled', N'paid', 7, 8, 7, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (8, NULL, 1, N'nguyenthitinh@gmail.com', 11, N'20160715205814', N'20160715210028', CAST(120 AS Numeric(18, 0)), N'fulfilled', N'paid', 8, 9, 8, N'don hang 1,don hang 8')
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (9, NULL, 1, NULL, 8, N'20160715231142', N'20160715231142', CAST(12 AS Numeric(18, 0)), N'unfulfilled', N'pending', 9, 10, 9, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [CustomerEmail], [CustomerID], [CreateDateTime], [ModifiedDateTime], [TotalCount], [ShippingStatus], [BillingStatus], [Number], [ShippingAddressID], [BillingAddressID], [Tags]) VALUES (10, NULL, 1, N'nguyenthitinh@gmail.com', 11, N'20160715232226', N'20160715232226', CAST(12 AS Numeric(18, 0)), N'unfulfilled', N'paid', 10, 11, 10, N'don hang 8')
SET IDENTITY_INSERT [dbo].[TblOrder] OFF
SET IDENTITY_INSERT [dbo].[TblRule] ON 

INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (54, 29, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1054, 31, N'ProductName', N'contains', N'1')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1055, 31, N'Supplier', N'contains', N'1')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1056, 33, N'ProductName', N'contains', N'2')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1057, 33, N'Supplier', N'contains', N'2')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1058, 33, N'ProductStyle', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1059, 34, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (1060, 34, N'ProductStyle', N'contains', N'e')
SET IDENTITY_INSERT [dbo].[TblRule] OFF
SET IDENTITY_INSERT [dbo].[Variant] ON 

INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (56, N'Default Title', NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, NULL, N'123', N'12', 1, N'lb', 0, 54, NULL, N'20160711164541', N'20160715234444', N'Default Title')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (57, N'l', NULL, NULL, CAST(2000 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), NULL, N'2', 2, N'kg', 0, 55, 102, N'20160711164640', N'20160716004710', N'l')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (58, N'm', NULL, NULL, CAST(10 AS Numeric(18, 0)), 0, NULL, NULL, N'1', NULL, N'kg', 0, 55, NULL, N'20160711164710', N'20160715233148', N'm')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (59, N'Default Title', NULL, NULL, NULL, 0, NULL, NULL, NULL, 123, N'oz', 0, 56, NULL, N'20160714173255', N'20160715235040', N'Default Title')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (60, N'xl', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, N'kg', 0, 55, NULL, N'20160715223225', N'20160715233148', N'xl')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (62, N'l', N'xanh', N'10', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'l / xanh / 10')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (63, N'l', N'xanh', N'20', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'l / xanh / 20')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (64, N'l', N'do', N'10', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'l / do / 10')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (65, N'l', N'do', N'20', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'l / do / 20')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (66, N'm', N'xanh', N'10', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'm / xanh / 10')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (67, N'm', N'xanh', N'20', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'm / xanh / 20')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (68, N'm', N'do', N'10', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'm / do / 10')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (69, N'm', N'do', N'20', CAST(123 AS Numeric(18, 0)), 0, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 0, 57, NULL, N'20160716004847', N'20160716005932', N'm / do / 20')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (70, N'Default Title', NULL, NULL, CAST(100 AS Numeric(18, 0)), 1, CAST(100 AS Numeric(18, 0)), N'100', N'100', 100, N'lb', 0, 58, NULL, N'20160716055445', N'20160716055445', N'Default Title')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (71, N'Default Title', NULL, NULL, CAST(200 AS Numeric(18, 0)), 1, NULL, N'200', N'200', 10, N'kg', 0, 59, NULL, N'20160716055756', N'20160716055756', N'Default Title')
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
ALTER TABLE [dbo].[CollectionProduct]  WITH CHECK ADD  CONSTRAINT [FK_CollectionProduct_Collection] FOREIGN KEY([CollectionID])
REFERENCES [dbo].[Collection] ([CollectionID])
GO
ALTER TABLE [dbo].[CollectionProduct] CHECK CONSTRAINT [FK_CollectionProduct_Collection]
GO
ALTER TABLE [dbo].[CollectionProduct]  WITH CHECK ADD  CONSTRAINT [FK_CollectionProduct_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[CollectionProduct] CHECK CONSTRAINT [FK_CollectionProduct_Product]
GO
ALTER TABLE [dbo].[LineItem]  WITH CHECK ADD  CONSTRAINT [FK_LineItem_TblOrder] FOREIGN KEY([OrderID])
REFERENCES [dbo].[TblOrder] ([OrderID])
GO
ALTER TABLE [dbo].[LineItem] CHECK CONSTRAINT [FK_LineItem_TblOrder]
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
ALTER TABLE [dbo].[TblImage]  WITH CHECK ADD  CONSTRAINT [FK_Image_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[TblImage] CHECK CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[TblLog]  WITH CHECK ADD  CONSTRAINT [FK_TblLog_AppUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AppUsers] ([Id])
GO
ALTER TABLE [dbo].[TblLog] CHECK CONSTRAINT [FK_TblLog_AppUsers]
GO
ALTER TABLE [dbo].[TblOption]  WITH CHECK ADD  CONSTRAINT [FK_TblOption_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[TblOption] CHECK CONSTRAINT [FK_TblOption_Product]
GO
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_TblOrder_BillingAddress] FOREIGN KEY([BillingAddressID])
REFERENCES [dbo].[BillingAddress] ([BillingAddressID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_TblOrder_BillingAddress]
GO
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_TblOrder_ShippingAddress] FOREIGN KEY([ShippingAddressID])
REFERENCES [dbo].[ShippingAddress] ([ShippingAddressID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_TblOrder_ShippingAddress]
GO
ALTER TABLE [dbo].[TblRule]  WITH CHECK ADD  CONSTRAINT [FK_TblRule_Collection] FOREIGN KEY([CollectionID])
REFERENCES [dbo].[Collection] ([CollectionID])
GO
ALTER TABLE [dbo].[TblRule] CHECK CONSTRAINT [FK_TblRule_Collection]
GO
ALTER TABLE [dbo].[Variant]  WITH CHECK ADD  CONSTRAINT [FK_Variant_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Variant] CHECK CONSTRAINT [FK_Variant_Product]
GO
ALTER TABLE [dbo].[Variant]  WITH CHECK ADD  CONSTRAINT [FK_Variant_TblImage] FOREIGN KEY([ImageID])
REFERENCES [dbo].[TblImage] ([ImageID])
GO
ALTER TABLE [dbo].[Variant] CHECK CONSTRAINT [FK_Variant_TblImage]
GO
