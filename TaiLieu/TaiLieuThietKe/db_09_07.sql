USE [RealEstate]
GO
ALTER TABLE [dbo].[Variant] DROP CONSTRAINT [FK_Variant_TblImage]
GO
ALTER TABLE [dbo].[Variant] DROP CONSTRAINT [FK_Variant_Product]
GO
ALTER TABLE [dbo].[TblRule] DROP CONSTRAINT [FK_TblRule_Collection]
GO
ALTER TABLE [dbo].[TblOrder] DROP CONSTRAINT [FK_Order_Product]
GO
ALTER TABLE [dbo].[TblOrder] DROP CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[TblOption] DROP CONSTRAINT [FK_TblOption_Product]
GO
ALTER TABLE [dbo].[TblLog] DROP CONSTRAINT [FK_TblLog_AppUsers]
GO
ALTER TABLE [dbo].[TblImage] DROP CONSTRAINT [FK_Image_Product]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_Supplier]
GO
ALTER TABLE [dbo].[Product] DROP CONSTRAINT [FK_Product_ProductStyle]
GO
ALTER TABLE [dbo].[CollectionProduct] DROP CONSTRAINT [FK_CollectionProduct_Product]
GO
ALTER TABLE [dbo].[CollectionProduct] DROP CONSTRAINT [FK_CollectionProduct_Collection]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.User_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
GO
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.User_UserId]
GO
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.User_UserId]
GO
ALTER TABLE [dbo].[AddressBook] DROP CONSTRAINT [FK_AddressBook_Customer]
GO
ALTER TABLE [dbo].[AddressBook] DROP CONSTRAINT [FK_AddressBook_Country]
GO
/****** Object:  Table [dbo].[Variant]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Variant]
GO
/****** Object:  Table [dbo].[TblRule]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[TblRule]
GO
/****** Object:  Table [dbo].[TblOrder]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[TblOrder]
GO
/****** Object:  Table [dbo].[TblOption]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[TblOption]
GO
/****** Object:  Table [dbo].[TblLog]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[TblLog]
GO
/****** Object:  Table [dbo].[TblImage]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[TblImage]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Tag]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Supplier]
GO
/****** Object:  Table [dbo].[ProductStyle]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[ProductStyle]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Product]
GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[OrderProduct]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[CollectionProduct]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[CollectionProduct]
GO
/****** Object:  Table [dbo].[Collection]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[Collection]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AppUsers]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 7/9/2016 5:57:51 PM ******/
DROP TABLE [dbo].[AddressBook]
GO
/****** Object:  Table [dbo].[AddressBook]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[Province] [nvarchar](50) NULL,
	[Postal] [nvarchar](100) NULL,
	[CustomerID] [int] NULL,
	[CountryID] [int] NULL,
	[AddressBookType] [bit] NULL,
 CONSTRAINT [PK_AddressBook] PRIMARY KEY CLUSTERED 
(
	[AddressBookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[CreatedDate] [nvarchar](8) NULL,
	[ModifiedDate] [nvarchar](8) NULL,
 CONSTRAINT [PK__User__3214EC077A92E080] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Collection]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[CreatedDate] [nvarchar](8) NULL,
	[ModifiedDate] [nvarchar](8) NULL,
	[UrlAlias] [nvarchar](50) NULL,
	[TemplateLayout] [nvarchar](20) NULL,
	[ConditionForCollection] [bit] NULL,
 CONSTRAINT [PK_Collection] PRIMARY KEY CLUSTERED 
(
	[CollectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CollectionProduct]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Country]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[CreatedDate] [nvarchar](8) NULL,
	[ModifiedDate] [nvarchar](8) NULL,
	[TotalOrder] [int] NULL,
	[TotalCount] [numeric](10, 0) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderProduct]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Product]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[CreatedDate] [nvarchar](8) NULL,
	[ModifiedDate] [nvarchar](8) NULL,
	[Tags] [nvarchar](max) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductStyle]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Supplier]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Tag]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[TblImage]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[VariantID] [int] NULL,
 CONSTRAINT [PK_Image] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblLog]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[TblOption]    Script Date: 7/9/2016 5:57:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblOption](
	[OptionID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
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
/****** Object:  Table [dbo].[TblOrder]    Script Date: 7/9/2016 5:57:51 PM ******/
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
	[CreatedDate] [nvarchar](8) NULL,
	[ModifiedDate] [nvarchar](8) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TblRule]    Script Date: 7/9/2016 5:57:51 PM ******/
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
/****** Object:  Table [dbo].[Variant]    Script Date: 7/9/2016 5:57:51 PM ******/
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

INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (1, N'Nguyễn Thị', N'Ánh1', N'xxx', N'02413713355', N'xxx', NULL, NULL, NULL, 2, 1)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (2, N'Nguyễn Thị', N'Ánh', N'xxx', N'02413713355', N'xxx', NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (3, N'Nguyễn Thị', N'Ánh', N'xxx', N'2413713355', NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (4, N'Ngo', N'Huy1', N'xxx', N'02413713355', N'phu lam', N'xxx', NULL, NULL, 3, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (5, N'Ngo', N'Huy2', N'x1', NULL, N'x1', N'x1', N'x1', NULL, 1, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (6, N'fa', N'fa', NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (7, N'fd', NULL, N'fd', NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (9, N'x', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, NULL)
INSERT [dbo].[AddressBook] ([AddressBookID], [AddressBookFirstName], [AddressBookLastName], [CompanyName], [Phone], [HomeAddress], [Province], [Postal], [CustomerID], [CountryID], [AddressBookType]) VALUES (25, N'123', N'123', N'12', N'12', N'12', N'12', N'12', 7, 2, 1)
SET IDENTITY_INSERT [dbo].[AddressBook] OFF
SET IDENTITY_INSERT [dbo].[AppUsers] ON 

INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone], [CreatedDate], [ModifiedDate]) VALUES (0, N'ngovanhuy', N'c4ca4238a0b923820dcc509a6f75849b', N'ngovanhuy@gmail.com', CAST(N'2016-05-25 10:21:27.900' AS DateTime), CAST(N'2016-05-25 10:21:27.900' AS DateTime), N'1a22727f-1512-4d10-84ad-4433789ed18f', NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AppUsers] ([Id], [Username], [Password], [Email], [DateCreated], [LastActivityDate], [SecurityStamp], [MainPage], [UserDescription], [UserPhone], [CreatedDate], [ModifiedDate]) VALUES (1, N'ngovanhuy0241', N'c20ad4d76fe97759aa27a0c99bff6710', N'ngovanhuy1@gmail.com', CAST(N'2016-05-25 14:23:08.820' AS DateTime), CAST(N'2016-05-25 14:23:08.820' AS DateTime), N'e228fa43-0e2f-46f7-81e5-83a2dec2c8ac', N'xxx12', NULL, N'0241371335', NULL, NULL)
SET IDENTITY_INSERT [dbo].[AppUsers] OFF
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (2, N'Customer')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (0, 2)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[Collection] ON 

INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (17, N'Danh muc 1z1', NULL, NULL, NULL, 1, N'http://localhost:6060/assets/uploads/collections/17/12325152_598425270314805_579745310_n.jpg', N'smart', N'20160629', N'20160630', NULL, N'collection', 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (18, N'Danh muc 1z2', N'<p>1213</p>
', NULL, NULL, 1, NULL, N'smart', N'20160629', N'20160707', N'18', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (19, N'Danh muc 1z34', NULL, NULL, NULL, 1, NULL, N'smart', N'20160629', N'20160629', NULL, N'collection', 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (20, N'Danh muc 1z4', NULL, NULL, NULL, 1, NULL, N'smart', N'20160629', NULL, NULL, NULL, 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (21, N'Danh mcu 1z51', N'<p>xxx</p>
', NULL, NULL, 1, NULL, N'smart', N'20160629', N'20160629', NULL, N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (23, N'123', N'<p>123</p>
', NULL, NULL, 1, NULL, N'custom', N'20160701', N'20160707', N'1234', N'collection', 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (24, N'1234', N'<p>1234</p>
', NULL, NULL, 1, NULL, N'smart', N'20160705', N'20160705', NULL, N'collection', 1)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (25, N'12345', NULL, NULL, NULL, 1, NULL, N'custom', N'20160705', NULL, NULL, NULL, 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (26, N'1', NULL, NULL, NULL, 1, NULL, N'custom', N'20160705', NULL, NULL, NULL, 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (27, N'12', NULL, NULL, NULL, 1, NULL, N'custom', N'20160705', NULL, NULL, NULL, 0)
INSERT [dbo].[Collection] ([CollectionID], [CollectionName], [CollectionDescription], [PageTitle], [PageDescription], [CollectionState], [CollectionImage], [CollectionType], [CreatedDate], [ModifiedDate], [UrlAlias], [TemplateLayout], [ConditionForCollection]) VALUES (28, N'123', NULL, NULL, NULL, 1, N'http://localhost:6060/assets/uploads/collections/28/avatar[1].jpg', N'custom', N'20160705', N'20160705', NULL, N'collection', 0)
SET IDENTITY_INSERT [dbo].[Collection] OFF
SET IDENTITY_INSERT [dbo].[CollectionProduct] ON 

INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(541 AS Numeric(18, 0)), 3, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(542 AS Numeric(18, 0)), 7, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(543 AS Numeric(18, 0)), 8, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(544 AS Numeric(18, 0)), 9, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(545 AS Numeric(18, 0)), 11, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(546 AS Numeric(18, 0)), 19, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(547 AS Numeric(18, 0)), 21, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(548 AS Numeric(18, 0)), 22, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(549 AS Numeric(18, 0)), 23, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(550 AS Numeric(18, 0)), 27, 18)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(583 AS Numeric(18, 0)), 3, 17)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(584 AS Numeric(18, 0)), 2, 23)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(585 AS Numeric(18, 0)), 3, 23)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(586 AS Numeric(18, 0)), 3, 24)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(587 AS Numeric(18, 0)), 27, 24)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(588 AS Numeric(18, 0)), 7, 28)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(589 AS Numeric(18, 0)), 2, 28)
INSERT [dbo].[CollectionProduct] ([ID], [ProductID], [CollectionID]) VALUES (CAST(591 AS Numeric(18, 0)), 42, 28)
SET IDENTITY_INSERT [dbo].[CollectionProduct] OFF
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'Việt Nam')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (2, N'Nhật Bản')
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (3, N'Anh')
SET IDENTITY_INSERT [dbo].[Country] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (1, N'Ngô Thị', N'Hiền ngoan ngoan', N'ngothihien@gmail.com', 1, N'xxx234', 1, NULL, NULL, 0, CAST(0 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (2, N'Ngô Thị', N'Hường1', N'ngothihuong@gmail.com', 1, N'sdafdasfdsafsda', 1, NULL, NULL, 1, CAST(1000000 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (3, N'Phạm Văn', N'Kiên', N'phamvankien@gmail.com', 0, NULL, 1, NULL, NULL, 1, CAST(200000 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (4, N'Ngô Văn', N'Huy', N'ngovanhuy@gmail.com', NULL, NULL, NULL, NULL, NULL, 1, CAST(200000 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (5, N'Đào Thị', N'Hương', N'daothihuong@gmail.com', 1, N'xxx', 0, NULL, NULL, 0, CAST(0 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (6, N'Nguyễn Thị', N'Ánh', NULL, 1, N'xx', 0, NULL, NULL, 0, CAST(0 AS Numeric(10, 0)))
INSERT [dbo].[Customer] ([CustomerID], [CustomerFirstName], [CustomerLastName], [CustomerEmail], [AcceptsMarketing], [CustomerNote], [CustomerState], [CreatedDate], [ModifiedDate], [TotalOrder], [TotalCount]) VALUES (7, N'12', N'12', N'daothihuong@gmail.com', 1, N'12', 1, NULL, N'20160705', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (2, N'sản phẩm 2fgdfd', N'<p>1234567</p>
', NULL, N'Quần thể thao', NULL, N'quanthethao', 0, 1, 1, NULL, NULL, N'20160703', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (3, N'Bình sữa ngoại', N'<p>xxxfda1</p>
', NULL, NULL, NULL, N'123', NULL, 2, 3, NULL, NULL, N'20160707', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (4, N'Bút bi', N'<p>fdas</p>
', NULL, N'Bút Thiên Long', NULL, N'butbi', 1, 1, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (5, N'Chuột Fushien', NULL, NULL, N'Chuột hồng ngoại', NULL, N'chuotfushien', 1, 1, 5, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (7, N'fda', N'<p>fa</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, N'20160703', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (8, N'san pham 8', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (9, N'san pham 9', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (10, N'x12', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (11, N'x13fdsa', N'<p>fdas</p>
', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (12, N'x13', N'<p>xa</p>
', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (13, N'vhvvh', N'<p>vhbhbhb</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (14, N'x1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (15, N'xx', N'<p>xx</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (16, N'xxx', N'<p>xx</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (17, N'x12', N'<p>x111</p>
', NULL, NULL, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (18, N'123', N'<p>123</p>
', NULL, NULL, NULL, NULL, 0, 1, 1, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (19, N'fdas1', N'<p>fdas1</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (20, N'x1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (21, N'faf', N'<p>da</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (22, N'fda', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (23, N'dfsa', N'<p>fda</p>
', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (27, N'binh sua cho Tung', N'<p>xxx</p>
', NULL, NULL, NULL, NULL, 1, 2, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (32, N'1234', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (33, N'123', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'20160706', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (34, N'123', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'20160706', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (35, N'12345', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'20160706', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (36, N'1', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, N'20160706', N'20160707', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (41, N'12', NULL, NULL, NULL, NULL, N'12', 1, NULL, NULL, NULL, N'20160707', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (42, N'13', NULL, NULL, N'13', NULL, N'13', 1, NULL, NULL, NULL, N'20160707', N'20160708', N'1')
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (43, N'14', NULL, NULL, NULL, NULL, N'14', 1, NULL, NULL, NULL, N'20160707', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (44, N'12', NULL, NULL, NULL, NULL, N'12', 1, NULL, NULL, NULL, N'20160707', NULL, NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (46, N'12', NULL, NULL, N'12', NULL, N'12', 1, NULL, NULL, NULL, N'20160707', N'20160708', NULL)
INSERT [dbo].[Product] ([ProductID], [ProductName], [ProductContent], [ProductShortDescription], [ProductTitleCard], [ProductDescriptionCard], [ProductAlias], [ProductState], [SupplierID], [ProductStyleID], [ProductUrl], [CreatedDate], [ModifiedDate], [Tags]) VALUES (48, N'1', NULL, NULL, N'1', NULL, N'1', 1, NULL, NULL, NULL, N'20160708', NULL, NULL)
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
SET IDENTITY_INSERT [dbo].[Tag] ON 

INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (1, N'1', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (2, N'2', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (3, N'3', 4)
INSERT [dbo].[Tag] ([TagID], [TagName], [TableNameID]) VALUES (4, N'4', 4)
SET IDENTITY_INSERT [dbo].[Tag] OFF
SET IDENTITY_INSERT [dbo].[TblImage] ON 

INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (12, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/7/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 7, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (13, N'12884407_598397510317581_1601781397_n.jpg', N'http://localhost:6060/assets/uploads/7/12884407_598397510317581_1601781397_n.jpg', CAST(113700 AS Numeric(18, 0)), 7, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (14, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/7/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 7, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (15, N'IMG_2175.JPG', N'http://localhost:6060/assets/uploads/8/IMG_2175.JPG', CAST(992822 AS Numeric(18, 0)), 8, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (16, N'IMG_2165.JPG', N'http://localhost:6060/assets/uploads/9/IMG_2165.JPG', CAST(852193 AS Numeric(18, 0)), 9, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (17, N'IMG_2175.JPG', N'http://localhost:6060/assets/uploads/9/IMG_2175.JPG', CAST(992822 AS Numeric(18, 0)), 9, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (18, N'IMG_2178.JPG', N'http://localhost:6060/assets/uploads/10/IMG_2178.JPG', CAST(1032788 AS Numeric(18, 0)), 10, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (20, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/2/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 2, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (21, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/11/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 11, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (22, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/12/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 12, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (23, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/15/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 15, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (24, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/15/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 15, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (25, N'IMG_2171.JPG', N'http://localhost:6060/assets/uploads/17/IMG_2171.JPG', CAST(1752677 AS Numeric(18, 0)), 17, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (26, N'IMG_2175.JPG', N'http://localhost:6060/assets/uploads/17/IMG_2175.JPG', CAST(992822 AS Numeric(18, 0)), 17, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (27, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/18/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 18, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (28, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/19/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 19, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (29, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/19/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 19, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (30, N'IMG_2175.JPG', N'http://localhost:6060/assets/uploads/20/IMG_2175.JPG', CAST(992822 AS Numeric(18, 0)), 20, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (31, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/21/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 21, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (32, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/22/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 22, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (33, N'IMG_2175.JPG', N'http://localhost:6060/assets/uploads/23/IMG_2175.JPG', CAST(992822 AS Numeric(18, 0)), 23, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (37, N'background-image-967820_960_720.jpg', N'http://localhost:6060/assets/uploads/2/background-image-967820_960_720.jpg', CAST(254393 AS Numeric(18, 0)), 2, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (40, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/3/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 3, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (44, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/3/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 3, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (45, N'IMG_2241.JPG', N'http://localhost:6060/assets/uploads/27/IMG_2241.JPG', CAST(1312225 AS Numeric(18, 0)), 27, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (48, N'Sight_2016_06_25_092658_041.jpg', N'http://localhost:6060/assets/uploads/4/Sight_2016_06_25_092658_041.jpg', CAST(1888252 AS Numeric(18, 0)), 4, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (51, N'Sight_2016_06_25_091435_179.jpg', N'http://localhost:6060/assets/uploads/products/32/Sight_2016_06_25_091435_179.jpg', CAST(1139420 AS Numeric(18, 0)), 32, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (58, N'Sight_2016_06_25_092921_120.jpg', N'http://localhost:6060/assets/uploads/products/2/Sight_2016_06_25_092921_120.jpg', CAST(1947257 AS Numeric(18, 0)), 2, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (63, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/products/2/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 2, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (64, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/products/41/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 41, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (65, N'background-image-967820_960_720.jpg', N'http://localhost:6060/assets/uploads/products/41/background-image-967820_960_720.jpg', CAST(254393 AS Numeric(18, 0)), 41, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (66, N'sunset-185951_960_720.jpg', N'http://localhost:6060/assets/uploads/products/41/sunset-185951_960_720.jpg', CAST(73230 AS Numeric(18, 0)), 41, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (67, N'duck-185014_960_720.jpg', N'http://localhost:6060/assets/uploads/products/41/duck-185014_960_720.jpg', CAST(249696 AS Numeric(18, 0)), 41, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (68, N'duck-197200_960_720.jpg', N'http://localhost:6060/assets/uploads/products/41/duck-197200_960_720.jpg', CAST(230297 AS Numeric(18, 0)), 41, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (74, N'12325152_598425270314805_579745310_n.jpg', N'http://localhost:6060/assets/uploads/products/46/12325152_598425270314805_579745310_n.jpg', CAST(52514 AS Numeric(18, 0)), 46, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (75, N'12895259_598425250314807_1484479544_n.jpg', N'http://localhost:6060/assets/uploads/products/46/12895259_598425250314807_1484479544_n.jpg', CAST(94687 AS Numeric(18, 0)), 46, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (76, N'IMG_2167.JPG', N'http://localhost:6060/assets/uploads/products/46/IMG_2167.JPG', CAST(817147 AS Numeric(18, 0)), 46, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (77, N'IMG_2165.JPG', N'http://localhost:6060/assets/uploads/products/46/IMG_2165.JPG', CAST(852193 AS Numeric(18, 0)), 46, NULL)
INSERT [dbo].[TblImage] ([ImageID], [ImageName], [ImageUrl], [ImageSize], [ProductID], [VariantID]) VALUES (78, N'IMG_2165.JPG', N'http://localhost:6060/assets/uploads/products/42/IMG_2165.JPG', CAST(852193 AS Numeric(18, 0)), 42, NULL)
SET IDENTITY_INSERT [dbo].[TblImage] OFF
SET IDENTITY_INSERT [dbo].[TblLog] ON 

INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(38 AS Numeric(18, 0)), 1, 3, 2, N'20160627060250', N'169.254.80.80', 4, N'sản phẩm 2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(39 AS Numeric(18, 0)), 1, 3, 2, N'20160627064231', N'169.254.80.80', 4, N'sản phẩm 2fgd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(40 AS Numeric(18, 0)), 1, 2, 30, N'20160627064251', N'169.254.80.80', 4, N'fdgd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(41 AS Numeric(18, 0)), 1, 4, 30, N'20160627064258', N'169.254.80.80', 4, N'fdgd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(42 AS Numeric(18, 0)), 1, 3, 2, N'20160627064357', N'169.254.80.80', 2, N'Ngô Thị Hường1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(43 AS Numeric(18, 0)), 1, 2, 16, N'20160627064416', N'169.254.80.80', 2, N'fad ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(44 AS Numeric(18, 0)), 1, 3, 16, N'20160627064420', N'169.254.80.80', 2, N'fad ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(45 AS Numeric(18, 0)), 1, 4, 0, N'20160627064423', N'169.254.80.80', 2, N'fad ')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(46 AS Numeric(18, 0)), 1, 2, 31, N'20160629090644', N'169.254.80.80', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(47 AS Numeric(18, 0)), 1, 4, 31, N'20160629090750', N'169.254.80.80', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(48 AS Numeric(18, 0)), 1, 2, 32, N'20160629091136', N'169.254.80.80', 4, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(49 AS Numeric(18, 0)), 1, 2, 33, N'20160629092751', N'169.254.80.80', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(50 AS Numeric(18, 0)), 1, 2, 34, N'20160629093333', N'169.254.80.80', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(51 AS Numeric(18, 0)), 1, 2, 35, N'20160629093728', N'169.254.80.80', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(52 AS Numeric(18, 0)), 1, 2, 15, N'20160629094058', N'169.254.80.80', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(53 AS Numeric(18, 0)), 1, 3, 10, N'20160629123211', N'169.254.80.80', 5, N'fda')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(54 AS Numeric(18, 0)), 1, 3, 11, N'20160629123325', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(55 AS Numeric(18, 0)), 1, 3, 11, N'20160629123532', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(56 AS Numeric(18, 0)), 1, 3, 11, N'20160629123628', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(57 AS Numeric(18, 0)), 1, 3, 11, N'20160629124238', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(58 AS Numeric(18, 0)), 1, 3, 11, N'20160629015130', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(59 AS Numeric(18, 0)), 1, 3, 11, N'20160629015834', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(60 AS Numeric(18, 0)), 1, 3, 11, N'20160629030758', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(61 AS Numeric(18, 0)), 1, 3, 11, N'20160629030807', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(62 AS Numeric(18, 0)), 1, 2, 16, N'20160629041730', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(63 AS Numeric(18, 0)), 1, 2, 17, N'20160629042111', N'169.254.80.80', 5, N'Danh muc 1z1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(64 AS Numeric(18, 0)), 1, 2, 18, N'20160629042509', N'169.254.80.80', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(65 AS Numeric(18, 0)), 1, 2, 19, N'20160629042608', N'169.254.80.80', 5, N'Danh muc 1z3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(66 AS Numeric(18, 0)), 1, 2, 20, N'20160629042900', N'169.254.80.80', 5, N'Danh muc 1z4')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(67 AS Numeric(18, 0)), 1, 2, 21, N'20160629043013', N'169.254.80.80', 5, N'Danh mcu 1z5')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(68 AS Numeric(18, 0)), 1, 3, 21, N'20160629043154', N'169.254.80.80', 5, N'Danh mcu 1z5')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(69 AS Numeric(18, 0)), 1, 3, 1, N'20160629061156', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(70 AS Numeric(18, 0)), 1, 3, 1, N'20160629061205', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(71 AS Numeric(18, 0)), 1, 3, 1, N'20160629061350', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(72 AS Numeric(18, 0)), 1, 3, 1, N'20160629061601', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(73 AS Numeric(18, 0)), 1, 3, 1, N'20160629061652', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(74 AS Numeric(18, 0)), 1, 3, 1, N'20160629061654', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(75 AS Numeric(18, 0)), 1, 3, 1, N'20160629061655', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(76 AS Numeric(18, 0)), 1, 3, 1, N'20160629061702', N'169.254.80.80', 5, N'Danh mục 1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(77 AS Numeric(18, 0)), 1, 3, 21, N'20160629061816', N'169.254.80.80', 5, N'Danh mcu 1z51')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(78 AS Numeric(18, 0)), 1, 3, 10, N'20160629061915', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(79 AS Numeric(18, 0)), 1, 3, 10, N'20160629061918', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(80 AS Numeric(18, 0)), 1, 3, 10, N'20160629061919', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(81 AS Numeric(18, 0)), 1, 3, 10, N'20160629061919', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(82 AS Numeric(18, 0)), 1, 3, 10, N'20160629061919', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(83 AS Numeric(18, 0)), 1, 3, 10, N'20160629061919', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(84 AS Numeric(18, 0)), 1, 3, 10, N'20160629061927', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(85 AS Numeric(18, 0)), 1, 3, 21, N'20160629062008', N'169.254.80.80', 5, N'Danh mcu 1z51')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(86 AS Numeric(18, 0)), 1, 3, 21, N'20160629062042', N'169.254.80.80', 5, N'Danh mcu 1z51')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(87 AS Numeric(18, 0)), 1, 3, 21, N'20160629062214', N'169.254.80.80', 5, N'Danh mcu 1z51')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(88 AS Numeric(18, 0)), 1, 3, 10, N'20160629062443', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(89 AS Numeric(18, 0)), 1, 3, 10, N'20160629062450', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(90 AS Numeric(18, 0)), 1, 3, 10, N'20160629062451', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(91 AS Numeric(18, 0)), 1, 3, 10, N'20160629062816', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(92 AS Numeric(18, 0)), 1, 3, 10, N'20160629062821', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(93 AS Numeric(18, 0)), 1, 3, 10, N'20160629062829', N'169.254.80.80', 5, N'fda1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(94 AS Numeric(18, 0)), 1, 3, 16, N'20160629063041', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(95 AS Numeric(18, 0)), 1, 3, 16, N'20160629063046', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(96 AS Numeric(18, 0)), 1, 3, 19, N'20160629063139', N'169.254.80.80', 5, N'Danh muc 1z3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(97 AS Numeric(18, 0)), 1, 3, 19, N'20160629063144', N'169.254.80.80', 5, N'Danh muc 1z3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(98 AS Numeric(18, 0)), 1, 3, 19, N'20160629063152', N'169.254.80.80', 5, N'Danh muc 1z3')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(99 AS Numeric(18, 0)), 1, 3, 19, N'20160629063454', N'169.254.80.80', 5, N'Danh muc 1z34')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(100 AS Numeric(18, 0)), 1, 3, 16, N'20160629063641', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(101 AS Numeric(18, 0)), 1, 3, 16, N'20160629063837', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(102 AS Numeric(18, 0)), 1, 3, 16, N'20160629064101', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(103 AS Numeric(18, 0)), 1, 3, 16, N'20160629064102', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(104 AS Numeric(18, 0)), 1, 3, 16, N'20160629064325', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(105 AS Numeric(18, 0)), 1, 3, 16, N'20160629064714', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(106 AS Numeric(18, 0)), 1, 3, 16, N'20160629064752', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(107 AS Numeric(18, 0)), 1, 3, 16, N'20160629070112', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(108 AS Numeric(18, 0)), 1, 3, 16, N'20160629071514', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(109 AS Numeric(18, 0)), 1, 3, 16, N'20160629071635', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(110 AS Numeric(18, 0)), 1, 3, 16, N'20160629071719', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(111 AS Numeric(18, 0)), 1, 3, 16, N'20160629071805', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(112 AS Numeric(18, 0)), 1, 3, 16, N'20160629071939', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(113 AS Numeric(18, 0)), 1, 3, 16, N'20160629071958', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(114 AS Numeric(18, 0)), 1, 3, 16, N'20160629072127', N'169.254.80.80', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(115 AS Numeric(18, 0)), 1, 3, 16, N'20160630015756', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(116 AS Numeric(18, 0)), 1, 3, 16, N'20160630024921', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(117 AS Numeric(18, 0)), 1, 3, 16, N'20160630024938', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(118 AS Numeric(18, 0)), 1, 3, 16, N'20160630025451', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(119 AS Numeric(18, 0)), 1, 3, 16, N'20160630025728', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(120 AS Numeric(18, 0)), 1, 3, 16, N'20160630025832', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(121 AS Numeric(18, 0)), 1, 3, 16, N'20160630025859', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(122 AS Numeric(18, 0)), 1, 3, 16, N'20160630030614', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(123 AS Numeric(18, 0)), 1, 3, 16, N'20160630031651', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(124 AS Numeric(18, 0)), 1, 3, 16, N'20160630032018', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(125 AS Numeric(18, 0)), 1, 3, 16, N'20160630032231', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(126 AS Numeric(18, 0)), 1, 3, 16, N'20160630033006', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(127 AS Numeric(18, 0)), 1, 3, 16, N'20160630033622', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(128 AS Numeric(18, 0)), 1, 3, 16, N'20160630033651', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(129 AS Numeric(18, 0)), 1, 3, 16, N'20160630033713', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(130 AS Numeric(18, 0)), 1, 3, 16, N'20160630033748', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(131 AS Numeric(18, 0)), 1, 3, 16, N'20160630043853', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(132 AS Numeric(18, 0)), 1, 3, 16, N'20160630044420', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(133 AS Numeric(18, 0)), 1, 3, 16, N'20160630045159', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(134 AS Numeric(18, 0)), 1, 3, 16, N'20160630045306', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(135 AS Numeric(18, 0)), 1, 3, 16, N'20160630045319', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(136 AS Numeric(18, 0)), 1, 3, 16, N'20160630050619', N'192.168.31.58', 5, N'Danh muc 1z')
GO
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(137 AS Numeric(18, 0)), 1, 3, 16, N'20160630050953', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(138 AS Numeric(18, 0)), 1, 3, 16, N'20160630051012', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(139 AS Numeric(18, 0)), 1, 3, 16, N'20160630051800', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(140 AS Numeric(18, 0)), 1, 3, 16, N'20160630051812', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(141 AS Numeric(18, 0)), 1, 3, 16, N'20160630051818', N'192.168.31.58', 5, N'Danh muc 1z')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(142 AS Numeric(18, 0)), 1, 3, 17, N'20160630054615', N'192.168.31.58', 5, N'Danh muc 1z1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(143 AS Numeric(18, 0)), 1, 2, 22, N'20160630054745', N'192.168.31.58', 5, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(144 AS Numeric(18, 0)), 1, 3, 18, N'20160701101105', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(145 AS Numeric(18, 0)), 1, 3, 18, N'20160701101722', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(146 AS Numeric(18, 0)), 1, 3, 18, N'20160701101733', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(147 AS Numeric(18, 0)), 1, 3, 18, N'20160701101750', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(148 AS Numeric(18, 0)), 1, 3, 18, N'20160701101813', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(149 AS Numeric(18, 0)), 1, 3, 18, N'20160701101908', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(150 AS Numeric(18, 0)), 1, 3, 2, N'20160701034040', N'192.168.31.58', 4, N'sản phẩm 2fgd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(151 AS Numeric(18, 0)), 1, 2, 36, N'20160701034258', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(152 AS Numeric(18, 0)), 1, 4, 36, N'20160701035306', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(153 AS Numeric(18, 0)), 1, 2, 23, N'20160701050355', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(154 AS Numeric(18, 0)), 1, 2, 7, N'20160702090312', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(155 AS Numeric(18, 0)), 1, 3, 2, N'20160702104616', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(156 AS Numeric(18, 0)), 1, 3, 2, N'20160702104622', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(157 AS Numeric(18, 0)), 1, 3, 2, N'20160702111534', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(158 AS Numeric(18, 0)), 1, 3, 2, N'20160702111540', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(159 AS Numeric(18, 0)), 1, 3, 2, N'20160702111547', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(160 AS Numeric(18, 0)), 1, 4, 35, N'20160702112635', N'192.168.31.58', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(161 AS Numeric(18, 0)), 1, 3, 2, N'20160702114536', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(162 AS Numeric(18, 0)), 1, 3, 2, N'20160702114552', N'192.168.31.58', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(163 AS Numeric(18, 0)), 1, 4, 34, N'20160702114623', N'192.168.31.58', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(164 AS Numeric(18, 0)), 1, 3, 5, N'20160702111758', N'127.0.0.1', 4, N'Chuột Fushien')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(165 AS Numeric(18, 0)), 1, 3, 7, N'20160703102939', N'127.0.0.1', 4, N'fda')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(166 AS Numeric(18, 0)), 1, 3, 2, N'20160703103022', N'127.0.0.1', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(167 AS Numeric(18, 0)), 1, 4, 33, N'20160703053737', N'192.168.0.108', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(168 AS Numeric(18, 0)), 1, 3, 2, N'20160703174430', N'192.168.0.108', 4, N'sản phẩm 2fgdfd')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(169 AS Numeric(18, 0)), 1, 3, 3, N'20160703174446', N'192.168.0.108', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(170 AS Numeric(18, 0)), 1, 3, 18, N'20160705091742', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(171 AS Numeric(18, 0)), 1, 3, 18, N'20160705091817', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(172 AS Numeric(18, 0)), 1, 3, 18, N'20160705091833', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(173 AS Numeric(18, 0)), 1, 3, 18, N'20160705092410', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(174 AS Numeric(18, 0)), 1, 3, 18, N'20160705092437', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(175 AS Numeric(18, 0)), 1, 3, 18, N'20160705092550', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(176 AS Numeric(18, 0)), 1, 3, 18, N'20160705093057', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(177 AS Numeric(18, 0)), 1, 3, 18, N'20160705093142', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(178 AS Numeric(18, 0)), 1, 3, 18, N'20160705093455', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(179 AS Numeric(18, 0)), 1, 3, 18, N'20160705093531', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(180 AS Numeric(18, 0)), 1, 3, 18, N'20160705093735', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(181 AS Numeric(18, 0)), 1, 3, 18, N'20160705094222', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(182 AS Numeric(18, 0)), 1, 3, 18, N'20160705094301', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(183 AS Numeric(18, 0)), 1, 2, 24, N'20160705095100', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(184 AS Numeric(18, 0)), 1, 3, 24, N'20160705095113', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(185 AS Numeric(18, 0)), 1, 3, 24, N'20160705095123', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(186 AS Numeric(18, 0)), 1, 3, 24, N'20160705095127', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(187 AS Numeric(18, 0)), 1, 3, 24, N'20160705095131', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(188 AS Numeric(18, 0)), 1, 3, 24, N'20160705095206', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(189 AS Numeric(18, 0)), 1, 3, 24, N'20160705095228', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(190 AS Numeric(18, 0)), 1, 2, 25, N'20160705095248', N'192.168.31.58', 5, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(191 AS Numeric(18, 0)), 1, 2, 26, N'20160705095322', N'192.168.31.58', 5, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(192 AS Numeric(18, 0)), 1, 2, 27, N'20160705100018', N'192.168.31.58', 5, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(193 AS Numeric(18, 0)), 1, 2, 28, N'20160705100140', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(194 AS Numeric(18, 0)), 1, 3, 28, N'20160705100553', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(195 AS Numeric(18, 0)), 1, 3, 1, N'20160705102648', N'192.168.31.58', 2, N'Ngô Thị Hiền ngoan ngoan')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(196 AS Numeric(18, 0)), 1, 3, 7, N'20160705102933', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(197 AS Numeric(18, 0)), 1, 3, 7, N'20160705103100', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(198 AS Numeric(18, 0)), 1, 3, 7, N'20160705103104', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(199 AS Numeric(18, 0)), 1, 3, 7, N'20160705103111', N'192.168.31.58', 2, N'12 12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(200 AS Numeric(18, 0)), 1, 3, 24, N'20160705103117', N'192.168.31.58', 5, N'1234')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(201 AS Numeric(18, 0)), 1, 2, 33, N'20160706155758', N'192.168.31.58', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(202 AS Numeric(18, 0)), 1, 2, 34, N'20160706161932', N'192.168.31.58', 4, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(203 AS Numeric(18, 0)), 1, 2, 35, N'20160706233434', N'192.168.0.100', 4, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(204 AS Numeric(18, 0)), 1, 2, 36, N'20160706233804', N'192.168.0.100', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(205 AS Numeric(18, 0)), 1, 2, 37, N'20160707095420', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(206 AS Numeric(18, 0)), 1, 2, 38, N'20160707112708', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(207 AS Numeric(18, 0)), 1, 2, 39, N'20160707113007', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(208 AS Numeric(18, 0)), 1, 2, 40, N'20160707113709', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(209 AS Numeric(18, 0)), 1, 2, 41, N'20160707151350', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(210 AS Numeric(18, 0)), 1, 2, 42, N'20160707151815', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(211 AS Numeric(18, 0)), 1, 2, 43, N'20160707152318', N'192.168.31.58', 4, N'14')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(212 AS Numeric(18, 0)), 1, 4, 37, N'20160707160722', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(213 AS Numeric(18, 0)), 1, 4, 38, N'20160707160733', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(214 AS Numeric(18, 0)), 1, 4, 39, N'20160707160740', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(215 AS Numeric(18, 0)), 1, 4, 40, N'20160707160744', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(216 AS Numeric(18, 0)), 1, 2, 44, N'20160707160901', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(217 AS Numeric(18, 0)), 1, 3, 23, N'20160707162921', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(218 AS Numeric(18, 0)), 1, 3, 23, N'20160707162953', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(219 AS Numeric(18, 0)), 1, 3, 23, N'20160707163100', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(220 AS Numeric(18, 0)), 1, 3, 23, N'20160707163212', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(221 AS Numeric(18, 0)), 1, 3, 23, N'20160707163221', N'192.168.31.58', 5, N'123')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(222 AS Numeric(18, 0)), 1, 3, 3, N'20160707163820', N'192.168.31.58', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(223 AS Numeric(18, 0)), 1, 3, 3, N'20160707163839', N'192.168.31.58', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(224 AS Numeric(18, 0)), 1, 3, 3, N'20160707163913', N'192.168.31.58', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(225 AS Numeric(18, 0)), 1, 3, 18, N'20160707163957', N'192.168.31.58', 5, N'Danh muc 1z2')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(226 AS Numeric(18, 0)), 1, 3, 3, N'20160707165057', N'192.168.31.58', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(227 AS Numeric(18, 0)), 1, 3, 3, N'20160707165505', N'192.168.31.58', 4, N'Bình sữa ngoại')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(228 AS Numeric(18, 0)), 1, 2, 45, N'20160707213603', N'192.168.0.103', 4, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(229 AS Numeric(18, 0)), 1, 2, 46, N'20160707214344', N'192.168.0.103', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(230 AS Numeric(18, 0)), 1, 3, 36, N'20160707214627', N'192.168.0.103', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(231 AS Numeric(18, 0)), 1, 3, 42, N'20160707234902', N'192.168.0.103', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(232 AS Numeric(18, 0)), 1, 3, 42, N'20160708001110', N'192.168.0.103', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(233 AS Numeric(18, 0)), 1, 3, 42, N'20160708055127', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(234 AS Numeric(18, 0)), 1, 3, 42, N'20160708055536', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(235 AS Numeric(18, 0)), 1, 3, 42, N'20160708055547', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(236 AS Numeric(18, 0)), 1, 3, 42, N'20160708055629', N'192.168.1.39', 4, N'13')
GO
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(237 AS Numeric(18, 0)), 1, 3, 42, N'20160708055655', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(238 AS Numeric(18, 0)), 1, 3, 42, N'20160708055835', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(239 AS Numeric(18, 0)), 1, 3, 42, N'20160708060213', N'192.168.1.39', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(240 AS Numeric(18, 0)), 1, 3, 42, N'20160708085435', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(241 AS Numeric(18, 0)), 1, 3, 42, N'20160708085656', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(242 AS Numeric(18, 0)), 1, 3, 42, N'20160708085709', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(243 AS Numeric(18, 0)), 1, 3, 42, N'20160708094834', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(244 AS Numeric(18, 0)), 1, 3, 42, N'20160708095604', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(245 AS Numeric(18, 0)), 1, 3, 42, N'20160708100110', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(246 AS Numeric(18, 0)), 1, 3, 42, N'20160708101504', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(247 AS Numeric(18, 0)), 1, 3, 42, N'20160708101514', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(248 AS Numeric(18, 0)), 1, 3, 42, N'20160708104817', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(249 AS Numeric(18, 0)), 1, 3, 42, N'20160708105211', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(250 AS Numeric(18, 0)), 1, 3, 42, N'20160708105229', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(251 AS Numeric(18, 0)), 1, 3, 42, N'20160708105232', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(252 AS Numeric(18, 0)), 1, 3, 45, N'20160708110249', N'192.168.31.58', 4, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(253 AS Numeric(18, 0)), 1, 3, 45, N'20160708111602', N'192.168.31.58', 4, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(254 AS Numeric(18, 0)), 1, 3, 45, N'20160708112114', N'192.168.31.58', 4, N'12345')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(255 AS Numeric(18, 0)), 1, 3, 46, N'20160708135038', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(256 AS Numeric(18, 0)), 1, 2, 47, N'20160708135125', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(257 AS Numeric(18, 0)), 1, 2, 48, N'20160708135357', N'192.168.31.58', 4, N'1')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(258 AS Numeric(18, 0)), 1, 3, 42, N'20160708152022', N'192.168.31.58', 4, N'13')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(259 AS Numeric(18, 0)), 1, 3, 47, N'20160708161505', N'192.168.31.58', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(260 AS Numeric(18, 0)), 1, 4, 47, N'20160708225142', N'192.168.0.103', 4, N'12')
INSERT [dbo].[TblLog] ([LogID], [UserID], [ActionID], [ObjectID], [DataTimeLog], [IP], [TableNameID], [ObjectValue]) VALUES (CAST(261 AS Numeric(18, 0)), 1, 4, 45, N'20160709104421', N'192.168.31.58', 4, N'12345')
SET IDENTITY_INSERT [dbo].[TblLog] OFF
SET IDENTITY_INSERT [dbo].[TblOption] ON 

INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(5 AS Numeric(18, 0)), N'Title', 0, N'1,2', 42, N'20160707151958', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(6 AS Numeric(18, 0)), N'Kich thuoc', 0, N'10X10X10', 42, N'20160707152007', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(7 AS Numeric(18, 0)), N'Mau sac', 0, N'xanh,do', 42, N'20160707152010', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(8 AS Numeric(18, 0)), N'Kich thuoc', 0, N'1', 43, N'20160707152422', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(9 AS Numeric(18, 0)), N'kich thuoc', 0, N'l,m,k', 44, N'20160707160901', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(10 AS Numeric(18, 0)), N'mau sac', 0, N'xanh,do,tim', 44, N'20160707160901', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(14 AS Numeric(18, 0)), N'1', 0, N'1', 46, N'20160708135038', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(17 AS Numeric(18, 0)), N'Titile', 0, N'1', 48, N'20160708135357', NULL)
INSERT [dbo].[TblOption] ([OptionID], [OptionName], [Position], [OptionValue], [ProductID], [CreatedDateTime], [ModifiedDateTime]) VALUES (CAST(18 AS Numeric(18, 0)), N'kich thuoc', 0, N'2', 48, N'20160708135357', NULL)
SET IDENTITY_INSERT [dbo].[TblOption] OFF
SET IDENTITY_INSERT [dbo].[TblOrder] ON 

INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus], [CreatedDate], [ModifiedDate]) VALUES (3, NULL, 1, CAST(200000 AS Numeric(18, 0)), 1, N'ngothihuong@gmail.com', NULL, 2, 2, N'#1003', N'19/05/2016 10:45', CAST(1000000 AS Numeric(18, 0)), 3, 3, NULL, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus], [CreatedDate], [ModifiedDate]) VALUES (4, NULL, 1, CAST(100000 AS Numeric(18, 0)), 1, N'phamvankien@gmail.com', N'/?bwaf=205', 3, 3, N'#1004', N'19/05/2016 10:45', CAST(200000 AS Numeric(18, 0)), 1, 4, NULL, NULL)
INSERT [dbo].[TblOrder] ([OrderID], [OrderNote], [OrderStatus], [ShippingCost], [MethodShipping], [CustomerEmail], [UrlProduct], [CustomerID], [ProductID], [OrderName], [OrderCreate], [TotalCount], [DeliveryStatus], [BillingStatus], [CreatedDate], [ModifiedDate]) VALUES (5, NULL, 0, CAST(100000 AS Numeric(18, 0)), 1, N'ngovanhuy@gmail.com', NULL, 4, 4, N'#1005', N'19/05/2016 10:45', CAST(200000 AS Numeric(18, 0)), 2, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TblOrder] OFF
SET IDENTITY_INSERT [dbo].[TblRule] ON 

INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (16, 19, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (17, 20, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (18, 20, N'Supplier', N'contains', N'2')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (19, 21, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (20, 21, N'Supplier', N'contains', N'2')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (43, 18, N'ProductName', N'contains', N'a')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (46, 18, N'Supplier', N'contains', N'2')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (47, 18, N'ProductStyle', N'contains', N'1')
INSERT [dbo].[TblRule] ([RuleID], [CollectionID], [ColumnName], [Relation], [ConditionValue]) VALUES (52, 24, N'Supplier', N'contains', N'2')
SET IDENTITY_INSERT [dbo].[TblRule] OFF
SET IDENTITY_INSERT [dbo].[Variant] ON 

INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (1, N'Kích thước', NULL, NULL, CAST(300000 AS Numeric(18, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (3, N'Default Title', NULL, NULL, CAST(123 AS Numeric(18, 0)), 1, CAST(123 AS Numeric(18, 0)), N'123', N'123', 123, N'kg', 1, 36, NULL, N'20160706233822', NULL, N'')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (14, N'Default Title', NULL, NULL, CAST(0 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), NULL, NULL, 0, N'0', 0, 41, NULL, N'20160707151358', NULL, N'')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (15, N'123', N'10X10X10', N'xanh', CAST(1 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 42, NULL, N'20160707151857', N'20160708152022', N'123 / 10X10X10 / xanh')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (17, N'2', N'10X10X10', N'xanh', CAST(0 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), NULL, NULL, 0, N'0', 0, 42, NULL, N'20160707151939', N'20160708152022', N'2 / 10X10X10 / xanh')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (18, N'2', N'10X10X10', N'do', CAST(0 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 42, NULL, N'20160707151939', N'20160708152022', N'2 / 10X10X10 / do')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (19, N'1', NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), N'b1', N'm\sku1', 0, N'0', 0, 43, NULL, N'20160707152320', NULL, N'1')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (20, N'l', N'xanh', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'l / xanh')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (21, N'l', N'do', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'l / do')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (22, N'l', N'tim', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'l / tim')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (23, N'm', N'xanh', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'm / xanh')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (24, N'm', N'do', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'm / do')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (25, N'm', N'tim', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'm / tim')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (26, N'k', N'xanh', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'k / xanh')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (27, N'k', N'do', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'k / do')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (28, N'k', N'tim', NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), NULL, N'1', 0, N'0', 0, 44, NULL, N'20160707160901', NULL, N'k / tim')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (33, N'1', NULL, NULL, CAST(0 AS Numeric(18, 0)), 0, CAST(0 AS Numeric(18, 0)), NULL, NULL, 10, N'0', 0, 46, NULL, N'20160708135038', NULL, N'1')
INSERT [dbo].[Variant] ([VariantID], [Option1], [Option2], [Option3], [VariantPrice], [Textable], [CompareWithPrice], [VariantBarcode], [VariantSKU], [VariantWeight], [WeightUnit], [RequireShipping], [ProductID], [ImageID], [CreatedDateTime], [ModifiedDateTime], [VariantTittle]) VALUES (36, N'Default Title', NULL, NULL, CAST(1 AS Numeric(18, 0)), 0, CAST(1 AS Numeric(18, 0)), N'1', N'1', 0, NULL, 0, 48, NULL, N'20160708135357', NULL, N'Default Title')
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
ALTER TABLE [dbo].[TblOrder]  WITH CHECK ADD  CONSTRAINT [FK_Order_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[TblOrder] CHECK CONSTRAINT [FK_Order_Product]
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
