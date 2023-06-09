USE [dbShopsDefault]
GO
/****** Object:  Table [dbo].[tbAboutUs]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbAboutUs](
	[ID_AboutUs] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Image] [nvarchar](100) NULL,
	[SummaryContent] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](200) NULL,
	[LinkSEO] [varchar](200) NULL,
	[H1SEO] [nvarchar](200) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_AboutUs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbContact]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbContact](
	[ID_Contact] [int] IDENTITY(1,1) NOT NULL,
	[ContactName] [nvarchar](100) NULL,
	[FullName] [nvarchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Contact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbLogs]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbLogs](
	[ID_Log] [int] IDENTITY(1,1) NOT NULL,
	[ID_User] [int] NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Log] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNews]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNews](
	[ID_News] [int] IDENTITY(1,1) NOT NULL,
	[ID_Catalog] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[Image] [nvarchar](100) NULL,
	[SummaryContent] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](200) NULL,
	[LinkSEO] [varchar](200) NULL,
	[H1SEO] [nvarchar](200) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_News] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNewsCatalogs]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNewsCatalogs](
	[ID_Catalog] [int] IDENTITY(1,1) NOT NULL,
	[ID_Parent] [int] NULL,
	[CatalogName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](100) NULL,
	[LinkSEO] [varchar](100) NULL,
	[H1SEO] [nvarchar](100) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Catalog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsCatalogs]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsCatalogs](
	[ID_Catalog] [int] IDENTITY(1,1) NOT NULL,
	[ID_Parent] [int] NULL,
	[CatalogName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](100) NULL,
	[LinkSEO] [varchar](100) NULL,
	[H1SEO] [nvarchar](100) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Catalog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsCurrencyUnit]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsCurrencyUnit](
	[ID_CurrencyUnit] [int] IDENTITY(1,1) NOT NULL,
	[CurrencyUnitName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_CurrencyUnit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsImages]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsImages](
	[ID_ImageProduct] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[ImageProductName] [nvarchar](100) NULL,
	[UrlImage] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_ImageProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsManufacture]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsManufacture](
	[ID_Manufacture] [int] IDENTITY(1,1) NOT NULL,
	[ManufactureName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Manufacture] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsOrders]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsOrders](
	[ID_Order] [int] IDENTITY(1,1) NOT NULL,
	[ID_Product] [int] NULL,
	[ID_OrderProduct] [int] NULL,
	[Amount] [int] NULL,
	[PriceTotal] [float] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsOrdersDetail]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsOrdersDetail](
	[ID_OrderProduct] [int] IDENTITY(1,1) NOT NULL,
	[ID_Payment] [int] NULL,
	[ID_User] [int] NULL,
	[OrdersName] [nvarchar](100) NULL,
	[UserName] [nvarchar](100) NULL,
	[UserEmail] [nvarchar](100) NULL,
	[UserAddress] [nvarchar](100) NULL,
	[UserPhone] [nvarchar](100) NULL,
	[Status] [nvarchar](100) NULL,
	[DayIn] [datetime] NULL,
	[DayOut] [datetime] NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_OrderProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsPayments]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsPayments](
	[ID_Payment] [int] IDENTITY(1,1) NOT NULL,
	[PaymentName] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Payment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbShopsProducts]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbShopsProducts](
	[ID_Product] [int] IDENTITY(1,1) NOT NULL,
	[ID_Catalog] [int] NULL,
	[ID_Manufacture] [int] NULL,
	[ID_CurrencyUnit] [int] NULL,
	[ProductName] [nvarchar](200) NULL,
	[ProductCode] [varchar](20) NULL,
	[Image] [nvarchar](100) NULL,
	[PriceIn] [float] NULL,
	[PriceOut] [float] NULL,
	[PriceDiscount] [float] NULL,
	[PriceShow] [bit] NULL,
	[Weight] [float] NULL,
	[Color] [nvarchar](30) NULL,
	[Amount] [int] NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[SummaryContent] [nvarchar](500) NULL,
	[VAT] [bit] NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](200) NULL,
	[LinkSEO] [varchar](200) NULL,
	[H1SEO] [nvarchar](200) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSlider]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSlider](
	[ID_Slider] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NULL,
	[Image] [nvarchar](100) NULL,
	[SummaryContent] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Slider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUsers]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUsers](
	[ID_User] [int] IDENTITY(1,1) NOT NULL,
	[ID_Catalog] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [varchar](50) NULL,
	[FullName] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[Gender] [nvarchar](20) NULL,
	[Email] [varchar](100) NULL,
	[PhoneNumber] [varchar](20) NULL,
	[Description] [ntext] NULL,
	[TitleWeb] [nvarchar](100) NULL,
	[LinkSEO] [varchar](100) NULL,
	[H1SEO] [nvarchar](100) NULL,
	[KeywordSEO] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbUsersCatalogs]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbUsersCatalogs](
	[ID_Catalog] [int] IDENTITY(1,1) NOT NULL,
	[CatalogName] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
	[AddTime] [datetime] NULL,
	[EditTime] [datetime] NULL,
	[Hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Catalog] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbLogs]  WITH CHECK ADD FOREIGN KEY([ID_User])
REFERENCES [dbo].[tbUsers] ([ID_User])
GO
ALTER TABLE [dbo].[tbNews]  WITH CHECK ADD FOREIGN KEY([ID_Catalog])
REFERENCES [dbo].[tbNewsCatalogs] ([ID_Catalog])
GO
ALTER TABLE [dbo].[tbShopsImages]  WITH CHECK ADD FOREIGN KEY([ID_Product])
REFERENCES [dbo].[tbShopsProducts] ([ID_Product])
GO
ALTER TABLE [dbo].[tbShopsOrders]  WITH CHECK ADD FOREIGN KEY([ID_OrderProduct])
REFERENCES [dbo].[tbShopsOrdersDetail] ([ID_OrderProduct])
GO
ALTER TABLE [dbo].[tbShopsOrders]  WITH CHECK ADD FOREIGN KEY([ID_Product])
REFERENCES [dbo].[tbShopsProducts] ([ID_Product])
GO
ALTER TABLE [dbo].[tbShopsOrdersDetail]  WITH CHECK ADD FOREIGN KEY([ID_Payment])
REFERENCES [dbo].[tbShopsPayments] ([ID_Payment])
GO
ALTER TABLE [dbo].[tbShopsProducts]  WITH CHECK ADD FOREIGN KEY([ID_Catalog])
REFERENCES [dbo].[tbShopsCatalogs] ([ID_Catalog])
GO
ALTER TABLE [dbo].[tbShopsProducts]  WITH CHECK ADD FOREIGN KEY([ID_CurrencyUnit])
REFERENCES [dbo].[tbShopsCurrencyUnit] ([ID_CurrencyUnit])
GO
ALTER TABLE [dbo].[tbShopsProducts]  WITH CHECK ADD FOREIGN KEY([ID_Manufacture])
REFERENCES [dbo].[tbShopsManufacture] ([ID_Manufacture])
GO
ALTER TABLE [dbo].[tbUsers]  WITH CHECK ADD FOREIGN KEY([ID_Catalog])
REFERENCES [dbo].[tbUsersCatalogs] ([ID_Catalog])
GO
/****** Object:  StoredProcedure [dbo].[st_processSQL]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_processSQL]
(
	@sSQL NTEXT
)
AS
SET NOCOUNT ON
Exec (@sSQL)
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbAboutUs
CREATE PROCEDURE [dbo].[st_tbAboutUs_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbAboutUs WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbAboutUs
CREATE PROCEDURE [dbo].[st_tbAboutUs_Count_Key]
(
	@ID_AboutUs int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbAboutUs
WHERE
	[ID_AboutUs] = @ID_AboutUs
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbAboutUs
CREATE PROCEDURE [dbo].[st_tbAboutUs_Delete]
(
	@ID_AboutUs int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbAboutUs]
WHERE
	[ID_AboutUs] = @ID_AboutUs
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbAboutUs
CREATE PROCEDURE [dbo].[st_tbAboutUs_Insert]
(
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbAboutUs]
(
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@Title,
	@Image,
	@SummaryContent,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_AboutUs
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbAboutUs
CREATE PROCEDURE [dbo].[st_tbAboutUs_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_AboutUs],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbAboutUs]
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbAboutUs_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_AboutUs],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbAboutUs]
	WHERE ID_AboutUs like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbAboutUs_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_AboutUs],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbAboutUs]
	WHERE ID_AboutUs like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbAboutUs_SelectByID]
(
	@ID_AboutUs int
)

AS

SET NOCOUNT ON

SELECT
	[ID_AboutUs],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbAboutUs]
WHERE
	[ID_AboutUs] = @ID_AboutUs
GO
/****** Object:  StoredProcedure [dbo].[st_tbAboutUs_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbAboutUs_Update]
(
	@ID_AboutUs_find int,
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbAboutUs]
SET
	[Title] = @Title,
	[Image] = @Image,
	[SummaryContent] = @SummaryContent,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_AboutUs] = @ID_AboutUs_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbContact WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_Count_Key]
(
	@ID_Contact int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbContact
WHERE
	[ID_Contact] = @ID_Contact
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Delete record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_Delete]
(
	@ID_Contact int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbContact]
WHERE
	[ID_Contact] = @ID_Contact
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Insert 1 record into tbContact
CREATE PROCEDURE [dbo].[st_tbContact_Insert]
(
	@ContactName nvarchar(100),
	@FullName nvarchar(100),
	@Phone varchar(20),
	@Email varchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbContact]
(
	[ContactName],
	[FullName],
	[Phone],
	[Email],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ContactName,
	@FullName,
	@Phone,
	@Email,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Contact
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select all record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Contact],
	[ContactName],
	[FullName],
	[Phone],
	[Email],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbContact]
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select all like key record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Contact],
	[ContactName],
	[FullName],
	[Phone],
	[Email],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbContact]
	WHERE ID_Contact like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select all like key record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Contact],
	[ContactName],
	[FullName],
	[Phone],
	[Email],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbContact]
	WHERE ID_Contact like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_SelectByID]
(
	@ID_Contact int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Contact],
	[ContactName],
	[FullName],
	[Phone],
	[Email],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbContact]
WHERE
	[ID_Contact] = @ID_Contact
GO
/****** Object:  StoredProcedure [dbo].[st_tbContact_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Update 1 record in tbContact
CREATE PROCEDURE [dbo].[st_tbContact_Update]
(
	@ID_Contact_find int,
	@ContactName nvarchar(100),
	@FullName nvarchar(100),
	@Phone varchar(20),
	@Email varchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbContact]
SET
	[ContactName] = @ContactName,
	[FullName] = @FullName,
	[Phone] = @Phone,
	[Email] = @Email,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Contact] = @ID_Contact_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbLogs WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_Count_Key]
(
	@ID_Log int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbLogs
WHERE
	[ID_Log] = @ID_Log
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_Delete]
(
	@ID_Log int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbLogs]
WHERE
	[ID_Log] = @ID_Log
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_Insert]
(
	@ID_User int,
	@Description ntext,
	@AddTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbLogs]
(
	[ID_User],
	[Description],
	[AddTime],
	[Hidden]
)
VALUES
(
	@ID_User,
	@Description,
	@AddTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Log
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Log],
	[ID_User],
	[Description],
	[AddTime],
	[Hidden]
FROM
	[tbLogs]
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Log],
	[ID_User],
	[Description],
	[AddTime]
	[Hidden]
FROM
	[tbLogs]
	WHERE ID_Log like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Log],
	[ID_User],
	[Description],
	[AddTime]
	[Hidden]
FROM
	[tbLogs]
	WHERE ID_Log like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_SelectByID]
(
	@ID_Log int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Log],
	[ID_User],
	[Description],
	[AddTime]
	[Hidden]
FROM
	[tbLogs]
WHERE
	[ID_Log] = @ID_Log
GO
/****** Object:  StoredProcedure [dbo].[st_tbLogs_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbLogs
CREATE PROCEDURE [dbo].[st_tbLogs_Update]
(
	@ID_Log_find int,
	@ID_User int,
	@Description ntext,
	@AddTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbLogs]
SET
	[ID_User] = @ID_User,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[Hidden] = @Hidden
WHERE
	[ID_Log] = @ID_Log_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbNews WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_Count_Key]
(
	@ID_News int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbNews
WHERE
	[ID_News] = @ID_News
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_Delete]
(
	@ID_News int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbNews]
WHERE
	[ID_News] = @ID_News
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbNews
CREATE PROCEDURE [dbo].[st_tbNews_Insert]
(
	@ID_Catalog int,
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbNews]
(
	[ID_Catalog],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Catalog,
	@Title,
	@Image,
	@SummaryContent,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_News
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_News],
	[ID_Catalog],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbNews]
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_News],
	[ID_Catalog],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbNews]
	WHERE ID_News like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbNews
CREATE PROCEDURE [dbo].[st_tbNews_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_News],
	[ID_Catalog],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbNews]
	WHERE ID_News like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbNews_SelectByID]
(
	@ID_News int
)

AS

SET NOCOUNT ON

SELECT
	[ID_News],
	[ID_Catalog],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[Hidden]
FROM
	[tbNews]
WHERE
	[ID_News] = @ID_News
GO
/****** Object:  StoredProcedure [dbo].[st_tbNews_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbNews_Update]
(
	@ID_News_find int,
	@ID_Catalog int,
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbNews]
SET
	[ID_Catalog] = @ID_Catalog,
	[Title] = @Title,
	[Image] = @Image,
	[SummaryContent] = @SummaryContent,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_News] = @ID_News_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbNewsCatalogs WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_Count_Key]
(
	@ID_Catalog int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbNewsCatalogs
WHERE
	[ID_Catalog] = @ID_Catalog
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_Delete]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbNewsCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_Insert]
(
	@ID_Parent int,
	@CatalogName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbNewsCatalogs]
(
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Parent,
	@CatalogName,
	@Image,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbNewsCatalogs]
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_SelectAll_Active]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_SelectAll_Active]

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbNewsCatalogs]
WHERE
	[Hidden] = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbNewsCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbNewsCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_SelectByID]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[Hidden]
FROM
	[tbNewsCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbNewsCatalogs_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbNewsCatalogs
CREATE PROCEDURE [dbo].[st_tbNewsCatalogs_Update]
(
	@ID_Catalog_find int,
	@ID_Parent int,
	@CatalogName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbNewsCatalogs]
SET
	[ID_Parent] = @ID_Parent,
	[CatalogName] = @CatalogName,
	[Image] = @Image,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Catalog] = @ID_Catalog_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsCatalogs WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_Count_Key]
(
	@ID_Catalog int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsCatalogs
WHERE
	[ID_Catalog] = @ID_Catalog
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_Delete]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_Insert]
(
	@ID_Parent int,
	@CatalogName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsCatalogs]
(
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Parent,
	@CatalogName,
	@Image,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsCatalogs]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectAll_Active]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_SelectAll_Active]

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsCatalogs]
WHERE
	[Hidden] = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbShopsCatalogs
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_SelectByID]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_SelectByID_NotDate]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[st_tbShopsCatalogs_SelectByID_NotDate]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[ID_Parent],
	[CatalogName],
	[Image],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[Hidden]
FROM
	[tbShopsCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCatalogs_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsCatalogs_Update]
(
	@ID_Catalog_find int,
	@ID_Parent int,
	@CatalogName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsCatalogs]
SET
	[ID_Parent] = @ID_Parent,
	[CatalogName] = @CatalogName,
	[Image] = @Image,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Catalog] = @ID_Catalog_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsCurrencyUnit WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_Count_Key]
(
	@ID_CurrencyUnit int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsCurrencyUnit
WHERE
	[ID_CurrencyUnit] = @ID_CurrencyUnit
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_Delete]
(
	@ID_CurrencyUnit int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsCurrencyUnit]
WHERE
	[ID_CurrencyUnit] = @ID_CurrencyUnit
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_Insert]
(
	@CurrencyUnitName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsCurrencyUnit]
(
	[CurrencyUnitName],
	[Image],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@CurrencyUnitName,
	@Image,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_CurrencyUnit
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_CurrencyUnit],
	[CurrencyUnitName],
	[Image],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsCurrencyUnit]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_CurrencyUnit],
	[CurrencyUnitName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCurrencyUnit]
	WHERE ID_CurrencyUnit like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_CurrencyUnit],
	[CurrencyUnitName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCurrencyUnit]
	WHERE ID_CurrencyUnit like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_SelectByID]
(
	@ID_CurrencyUnit int
)

AS

SET NOCOUNT ON

SELECT
	[ID_CurrencyUnit],
	[CurrencyUnitName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsCurrencyUnit]
WHERE
	[ID_CurrencyUnit] = @ID_CurrencyUnit
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsCurrencyUnit_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbShopsCurrencyUnit
CREATE PROCEDURE [dbo].[st_tbShopsCurrencyUnit_Update]
(
	@ID_CurrencyUnit_find int,
	@CurrencyUnitName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsCurrencyUnit]
SET
	[CurrencyUnitName] = @CurrencyUnitName,
	[Image] = @Image,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_CurrencyUnit] = @ID_CurrencyUnit_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsImages WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_Count_Key]
(
	@ID_ImageProduct int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsImages
WHERE
	[ID_ImageProduct] = @ID_ImageProduct
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_Delete]
(
	@ID_ImageProduct int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsImages]
WHERE
	[ID_ImageProduct] = @ID_ImageProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_Insert]
(
	@ID_Product int,
	@ImageProductName nvarchar(100),
	@UrlImage nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsImages]
(
	[ID_Product],
	[ImageProductName],
	[UrlImage],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Product,
	@ImageProductName,
	@UrlImage,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_ImageProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_ImageProduct],
	[ID_Product],
	[ImageProductName],
	[UrlImage],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsImages]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_ImageProduct],
	[ID_Product],
	[ImageProductName],
	[UrlImage],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsImages]
	WHERE ID_ImageProduct like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_ImageProduct],
	[ID_Product],
	[ImageProductName],
	[UrlImage],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsImages]
	WHERE ID_ImageProduct like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_SelectByID]
(
	@ID_ImageProduct int
)

AS

SET NOCOUNT ON

SELECT
	[ID_ImageProduct],
	[ID_Product],
	[ImageProductName],
	[UrlImage],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsImages]
WHERE
	[ID_ImageProduct] = @ID_ImageProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsImages_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbShopsImages
CREATE PROCEDURE [dbo].[st_tbShopsImages_Update]
(
	@ID_ImageProduct_find int,
	@ID_Product int,
	@ImageProductName nvarchar(100),
	@UrlImage nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsImages]
SET
	[ID_Product] = @ID_Product,
	[ImageProductName] = @ImageProductName,
	[UrlImage] = @UrlImage,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_ImageProduct] = @ID_ImageProduct_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsManufacture WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_Count_Key]
(
	@ID_Manufacture int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsManufacture
WHERE
	[ID_Manufacture] = @ID_Manufacture
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_Delete]
(
	@ID_Manufacture int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsManufacture]
WHERE
	[ID_Manufacture] = @ID_Manufacture
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_Insert]
(
	@ManufactureName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsManufacture]
(
	[ManufactureName],
	[Image],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ManufactureName,
	@Image,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Manufacture
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Manufacture],
	[ManufactureName],
	[Image],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsManufacture]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Manufacture],
	[ManufactureName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsManufacture]
	WHERE ID_Manufacture like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Manufacture],
	[ManufactureName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsManufacture]
	WHERE ID_Manufacture like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_SelectByID]
(
	@ID_Manufacture int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Manufacture],
	[ManufactureName],
	[Image],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsManufacture]
WHERE
	[ID_Manufacture] = @ID_Manufacture
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsManufacture_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbShopsManufacture
CREATE PROCEDURE [dbo].[st_tbShopsManufacture_Update]
(
	@ID_Manufacture_find int,
	@ManufactureName nvarchar(100),
	@Image nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsManufacture]
SET
	[ManufactureName] = @ManufactureName,
	[Image] = @Image,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Manufacture] = @ID_Manufacture_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsOrders WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_Count_Key]
(
	@ID_Order int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsOrders
WHERE
	[ID_Order] = @ID_Order
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Delete record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_Delete]
(
	@ID_Order int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsOrders]
WHERE
	[ID_Order] = @ID_Order
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_Insert]
(
	@ID_Product int,
	@ID_OrderProduct int,
	@Amount int,
	@PriceTotal float(53),
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsOrders]
(
	[ID_Product],
	[ID_OrderProduct],
	[Amount],
	[PriceTotal],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Product,
	@ID_OrderProduct,
	@Amount,
	@PriceTotal,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Order
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select all record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Order],
	[ID_Product],
	[ID_OrderProduct],
	[Amount],
	[PriceTotal],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrders]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrders_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Order],
	[ID_Product],
	[ID_OrderProduct],
	[Amount],
	[PriceTotal],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrders]
	WHERE ID_Order like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrders_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Order],
	[ID_Product],
	[ID_OrderProduct],
	[Amount],
	[PriceTotal],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrders]
	WHERE ID_Order like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Description: Select record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_SelectByID]
(
	@ID_Order int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Order],
	[ID_Product],
	[ID_OrderProduct],
	[Amount],
	[PriceTotal],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrders]
WHERE
	[ID_Order] = @ID_Order
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrders_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Update 1 record in tbShopsOrders
CREATE PROCEDURE [dbo].[st_tbShopsOrders_Update]
(
	@ID_Order_find int,
	@ID_Product int,
	@ID_OrderProduct int,
	@Amount int,
	@PriceTotal float(53),
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsOrders]
SET
	[ID_Product] = @ID_Product,
	[ID_OrderProduct] = @ID_OrderProduct,
	[Amount] = @Amount,
	[PriceTotal] = @PriceTotal,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Order] = @ID_Order_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsOrdersDetail WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Count all record in tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_Count_Key]
(
	@ID_OrderProduct int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsOrdersDetail
WHERE
	[ID_OrderProduct] = @ID_OrderProduct
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Delete record in tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_Delete]
(
	@ID_OrderProduct int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsOrdersDetail]
WHERE
	[ID_OrderProduct] = @ID_OrderProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_Insert]
(
	@ID_Payment int,
	@ID_User int,
	@OrdersName nvarchar(100),
	@UserName nvarchar(100),
	@UserEmail nvarchar(100),
	@UserAddress nvarchar(100),
	@UserPhone nvarchar(100),
	@Status nvarchar(100),
	@DayIn datetime,
	@DayOut datetime,
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsOrdersDetail]
(
	[ID_Payment],
	[ID_User],
	[OrdersName],
	[UserName],
	[UserEmail],
	[UserAddress],
	[UserPhone],
	[Status],
	[DayIn],
	[DayOut],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Payment,
	@ID_User,
	@OrdersName,
	@UserName,
	@UserEmail,
	@UserAddress,
	@UserPhone,
	@Status,
	@DayIn,
	@DayOut,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_OrderProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Select all record in tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_OrderProduct],
	[ID_Payment],
	[ID_User],
	[OrdersName],
	[UserName],
	[UserEmail],
	[UserAddress],
	[UserPhone],
	[Status],
	[DayIn],
	[DayOut],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrdersDetail]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_OrderProduct],
	[ID_Payment],
	[ID_User],
	[OrdersName],
	[UserName],
	[UserEmail],
	[UserAddress],
	[UserPhone],
	[Status],
	[DayIn],
	[DayOut],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrdersDetail]
	WHERE ID_OrderProduct like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_OrderProduct],
	[ID_Payment],
	[ID_User],
	[OrdersName],
	[UserName],
	[UserEmail],
	[UserAddress],
	[UserPhone],
	[Status],
	[DayIn],
	[DayOut],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrdersDetail]
	WHERE ID_OrderProduct like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_SelectByID]
(
	@ID_OrderProduct int
)

AS

SET NOCOUNT ON

SELECT
	[ID_OrderProduct],
	[ID_Payment],
	[ID_User],
	[OrdersName],
	[UserName],
	[UserEmail],
	[UserAddress],
	[UserPhone],
	[Status],
	[DayIn],
	[DayOut],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsOrdersDetail]
WHERE
	[ID_OrderProduct] = @ID_OrderProduct
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Creater: Generate
--Description: Update 1 record in tbShopsOrdersDetail
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_Update]
(
	@ID_OrderProduct_find int,
	@ID_Payment int,
	@ID_User int,
	@OrdersName nvarchar(100),
	@UserName nvarchar(100),
	@UserEmail nvarchar(100),
	@UserAddress nvarchar(100),
	@UserPhone nvarchar(100),
	@Status nvarchar(100),
	@DayIn datetime,
	@DayOut datetime,
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsOrdersDetail]
SET
	[ID_Payment] = @ID_Payment,
	[ID_User] = @ID_User,
	[OrdersName] = @OrdersName,
	[UserName] = @UserName,
	[UserEmail] = @UserEmail,
	[UserAddress] = @UserAddress,
	[UserPhone] = @UserPhone,
	[Status] = @Status,
	[DayIn] = @DayIn,
	[DayOut] = @DayOut,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_OrderProduct] = @ID_OrderProduct_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_UpdateHidden]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_UpdateHidden]
(
	@ID_OrderProduct_find int,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsOrdersDetail]
SET
	[Hidden] = @Hidden
WHERE
	[ID_OrderProduct] = @ID_OrderProduct_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_UpdateStatus]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_UpdateStatus]
(
	@ID_OrderProduct_find int,
	@Status nvarchar(100)
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsOrdersDetail]
SET
	[Status] = @Status
WHERE
	[ID_OrderProduct] = @ID_OrderProduct_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsOrdersDetail_UpdateUserName]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsOrdersDetail_UpdateUserName]
(
	@ID_OrderProduct_find int,
	@UserName nvarchar(100)
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsOrdersDetail]
SET
	[UserName] = @UserName
WHERE
	[ID_OrderProduct] = @ID_OrderProduct_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsPayments WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_Count_Key]
(
	@ID_Payment int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsPayments
WHERE
	[ID_Payment] = @ID_Payment
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_Delete]
(
	@ID_Payment int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsPayments]
WHERE
	[ID_Payment] = @ID_Payment
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_Insert]
(
	@PaymentName nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsPayments]
(
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@PaymentName,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Payment
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Payment],
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsPayments]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_SelectAll_Active]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsPayments_SelectAll_Active]

AS

SET NOCOUNT ON

SELECT
	[ID_Payment],
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsPayments]
WHERE
	Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Payment],
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsPayments]
	WHERE ID_Payment like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsPayments
CREATE PROCEDURE [dbo].[st_tbShopsPayments_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Payment],
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsPayments]
	WHERE ID_Payment like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsPayments_SelectByID]
(
	@ID_Payment int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Payment],
	[PaymentName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsPayments]
WHERE
	[ID_Payment] = @ID_Payment
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsPayments_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsPayments_Update]
(
	@ID_Payment_find int,
	@PaymentName nvarchar(100),
	@Description ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsPayments]
SET
	[PaymentName] = @PaymentName,
	[Description] = @Description,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Payment] = @ID_Payment_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsProducts WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_Count_Key]
(
	@ID_Product int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbShopsProducts
WHERE
	[ID_Product] = @ID_Product
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_Delete]
(
	@ID_Product int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbShopsProducts]
WHERE
	[ID_Product] = @ID_Product
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_Insert]
(
	@ID_Catalog int,
	@ProductName nvarchar(200),
	@ProductCode varchar(20),
	@Image nvarchar(100),
	@PriceOut float,
	@Weight float,
	@Color nvarchar(30),
	@Amount int,
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbShopsProducts]
(
	[ID_Catalog],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceOut],
	[Weight],
	[Color],
	[Amount],
	[SummaryContent],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Catalog,
	@ProductName,
	@ProductCode,
	@Image,
	@PriceOut,
	@Weight,
	@Color,
	@Amount,
	@SummaryContent,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Product],
	[ID_Catalog],
	[ID_Manufacture],
	[ID_CurrencyUnit],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceIn],
	[PriceOut],
	[PriceDiscount],
	[PriceShow],
	[Weight],
	[Color],
	[Amount],
	[MfgDate],
	[ExpDate],
	[SummaryContent],
	[VAT],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsProducts]
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Product],
	[ID_Catalog],
	[ID_Manufacture],
	[ID_CurrencyUnit],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceIn],
	[PriceOut],
	[PriceDiscount],
	[PriceShow],
	[Weight],
	[Color],
	[Amount],
	[MfgDate],
	[ExpDate],
	[SummaryContent],
	[VAT],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsProducts]
	WHERE ID_Product like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbShopsProducts
CREATE PROCEDURE [dbo].[st_tbShopsProducts_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Product],
	[ID_Catalog],
	[ID_Manufacture],
	[ID_CurrencyUnit],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceIn],
	[PriceOut],
	[PriceDiscount],
	[PriceShow],
	[Weight],
	[Color],
	[Amount],
	[MfgDate],
	[ExpDate],
	[SummaryContent],
	[VAT],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbShopsProducts]
	WHERE ID_Product like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_SelectByID]
(
	@ID_Product int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Product],
	[ID_Catalog],
	[ID_Manufacture],
	[ID_CurrencyUnit],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceIn],
	[PriceOut],
	[PriceDiscount],
	[PriceShow],
	[Weight],
	[Color],
	[Amount],
	[MfgDate],
	[ExpDate],
	[SummaryContent],
	[VAT],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbShopsProducts]
WHERE
	[ID_Product] = @ID_Product
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_SelectByID_NotDate]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_SelectByID_NotDate]
(
	@ID_Product int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Product],
	[ID_Catalog],
	[ID_Manufacture],
	[ID_CurrencyUnit],
	[ProductName],
	[ProductCode],
	[Image],
	[PriceIn],
	[PriceOut],
	[PriceDiscount],
	[PriceShow],
	[Weight],
	[Color],
	[Amount],
	[MfgDate],
	[ExpDate],
	[SummaryContent],
	[VAT],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[Hidden]
FROM
	[tbShopsProducts]
WHERE
	[ID_Product] = @ID_Product
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_ShopsCatalog_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_ShopsCatalog_SelectByID]
(
	@ID_Product int
)

AS

SET NOCOUNT ON

SELECT
	*, tbShopsCatalogs.LinkSEO as linkSEOCatalog
FROM
	tbShopsProducts, tbShopsCatalogs
WHERE
tbShopsCatalogs.ID_Catalog = tbShopsProducts.ID_Catalog and
	[ID_Product] = @ID_Product
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_Update]
(
	@ID_Product_find int,
	@ID_Catalog int,
	@ProductName nvarchar(200),
	@ProductCode varchar(20),
	@Image nvarchar(100),
	@PriceOut float(53),
	@Weight float(53),
	@Color nvarchar(30),
	@Amount int,
	@SummaryContent nvarchar(500),
	@Description ntext,
	@TitleWeb nvarchar(200),
	@LinkSEO varchar(200),
	@H1SEO nvarchar(200),
	@KeywordSEO ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsProducts]
SET
	[ID_Catalog] = @ID_Catalog,
	[ProductName] = @ProductName,
	[ProductCode] = @ProductCode,
	[Image] = @Image,
	[PriceOut] = @PriceOut,
	[Weight] = @Weight,
	[Color] = @Color,
	[Amount] = @Amount,
	[SummaryContent] = @SummaryContent,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Product] = @ID_Product_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbShopsProducts_UpdateQuantity]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbShopsProducts_UpdateQuantity]
(
	@ID_Product_find int,
	@Amount int
)

AS

SET NOCOUNT ON

UPDATE
	[tbShopsProducts]
SET
	[Amount] = @Amount
WHERE
	[ID_Product] = @ID_Product_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbSlider WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_Count_Key]
(
	@ID_Slider int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbSlider
WHERE
	[ID_Slider] = @ID_Slider
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_Delete]
(
	@ID_Slider int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbSlider]
WHERE
	[ID_Slider] = @ID_Slider
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_Insert]
(
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbSlider]
(
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@Title,
	@Image,
	@SummaryContent,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Slider
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Slider],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbSlider]
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Slider],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbSlider]
	WHERE ID_Slider like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbSlider
CREATE PROCEDURE [dbo].[st_tbSlider_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Slider],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbSlider]
	WHERE ID_Slider like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbSlider_SelectByID]
(
	@ID_Slider int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Slider],
	[Title],
	[Image],
	[SummaryContent],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbSlider]
WHERE
	[ID_Slider] = @ID_Slider
GO
/****** Object:  StoredProcedure [dbo].[st_tbSlider_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[st_tbSlider_Update]
(
	@ID_Slider_find int,
	@Title nvarchar(200),
	@Image nvarchar(100),
	@SummaryContent nvarchar(500),
	@Description ntext,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbSlider]
SET
	[Title] = @Title,
	[Image] = @Image,
	[SummaryContent] = @SummaryContent,
	[Description] = @Description,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Slider] = @ID_Slider_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbUsers WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_Count_Key]
(
	@ID_User int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbUsers
WHERE
	[ID_User] = @ID_User
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_Delete]
(
	@ID_User int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbUsers]
WHERE
	[ID_User] = @ID_User
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_Insert]
(
	@ID_Catalog int,
	@UserName nvarchar(50),
	@Password varchar(50),
	@FullName nvarchar(100),
	@Image nvarchar(100),
	@Gender nvarchar(20),
	@Email varchar(100),
	@PhoneNumber varchar(20),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbUsers]
(
	[ID_Catalog],
	[UserName],
	[Password],
	[FullName],
	[Image],
	[Gender],
	[Email],
	[PhoneNumber],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@ID_Catalog,
	@UserName,
	@Password,
	@FullName,
	@Image,
	@Gender,
	@Email,
	@PhoneNumber,
	@Description,
	@TitleWeb,
	@LinkSEO,
	@H1SEO,
	@KeywordSEO,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_User
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_User],
	[ID_Catalog],
	[UserName],
	[Password],
	[FullName],
	[Image],
	[Gender],
	[Email],
	[PhoneNumber],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbUsers]
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_User],
	[ID_Catalog],
	[UserName],
	[Password],
	[FullName],
	[Image],
	[Gender],
	[Email],
	[PhoneNumber],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsers]
	WHERE ID_User like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_User],
	[ID_Catalog],
	[UserName],
	[Password],
	[FullName],
	[Image],
	[Gender],
	[Email],
	[PhoneNumber],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsers]
	WHERE ID_User like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_SelectByID]
(
	@ID_User int
)

AS

SET NOCOUNT ON

SELECT
	[ID_User],
	[ID_Catalog],
	[UserName],
	[Password],
	[FullName],
	[Image],
	[Gender],
	[Email],
	[PhoneNumber],
	[Description],
	[TitleWeb],
	[LinkSEO],
	[H1SEO],
	[KeywordSEO],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsers]
WHERE
	[ID_User] = @ID_User
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsers_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbUsers
CREATE PROCEDURE [dbo].[st_tbUsers_Update]
(
	@ID_User_find int,
	@ID_Catalog int,
	@UserName nvarchar(50),
	@Password varchar(50),
	@FullName nvarchar(100),
	@Image nvarchar(100),
	@Gender nvarchar(20),
	@Email varchar(100),
	@PhoneNumber varchar(20),
	@Description ntext,
	@TitleWeb nvarchar(100),
	@LinkSEO varchar(100),
	@H1SEO nvarchar(100),
	@KeywordSEO ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbUsers]
SET
	[ID_Catalog] = @ID_Catalog,
	[UserName] = @UserName,
	[Password] = @Password,
	[FullName] = @FullName,
	[Image] = @Image,
	[Gender] = @Gender,
	[Email] = @Email,
	[PhoneNumber] = @PhoneNumber,
	[Description] = @Description,
	[TitleWeb] = @TitleWeb,
	[LinkSEO] = @LinkSEO,
	[H1SEO] = @H1SEO,
	[KeywordSEO] = @KeywordSEO,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_User] = @ID_User_find
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_Count]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_Count]
(
	@Hidden bit
)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbUsersCatalogs WHERE [Hidden]=@Hidden )
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_Count_Key]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Count all record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_Count_Key]
(
	@ID_Catalog int

)

AS

SET NOCOUNT ON

SELECT (SELECT COUNT(*) FROM tbUsersCatalogs
WHERE
	[ID_Catalog] = @ID_Catalog
)
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_Delete]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Delete record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_Delete]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

DELETE FROM
	[tbUsersCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_Insert]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Insert 1 record into tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_Insert]
(
	@CatalogName nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

INSERT INTO [tbUsersCatalogs]
(
	[CatalogName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
)
VALUES
(
	@CatalogName,
	@Description,
	@AddTime,
	@EditTime,
	@Hidden
)

SELECT SCOPE_IDENTITY() AS ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_SelectAll]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_SelectAll]

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[CatalogName],
	[Description],
	[AddTime],
	[EditTime],
	[Hidden]
FROM
	[tbUsersCatalogs]
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_SelectAll_Active_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_SelectAll_Active_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[CatalogName],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsersCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%' and Hidden = 1
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_SelectAll_LikeKey]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select all like key record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_SelectAll_LikeKey]
(
	@Key nvarchar(200)
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[CatalogName],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsersCatalogs]
	WHERE ID_Catalog like N'%'+@Key+'%'
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_SelectByID]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Select record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_SelectByID]
(
	@ID_Catalog int
)

AS

SET NOCOUNT ON

SELECT
	[ID_Catalog],
	[CatalogName],
	[Description],
	[AddTime],
	[EditTime]
	[Hidden]
FROM
	[tbUsersCatalogs]
WHERE
	[ID_Catalog] = @ID_Catalog
GO
/****** Object:  StoredProcedure [dbo].[st_tbUsersCatalogs_Update]    Script Date: 16/05/2023 3:41:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

--Creater: Generate
--Description: Update 1 record in tbUsersCatalogs
CREATE PROCEDURE [dbo].[st_tbUsersCatalogs_Update]
(
	@ID_Catalog_find int,
	@CatalogName nvarchar(100),
	@Description ntext,
	@AddTime datetime,
	@EditTime datetime,
	@Hidden bit
)

AS

SET NOCOUNT ON

UPDATE
	[tbUsersCatalogs]
SET
	[CatalogName] = @CatalogName,
	[Description] = @Description,
	[AddTime] = @AddTime,
	[EditTime] = @EditTime,
	[Hidden] = @Hidden
WHERE
	[ID_Catalog] = @ID_Catalog_find
GO
