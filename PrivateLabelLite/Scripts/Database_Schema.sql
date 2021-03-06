GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[CompanyId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Created] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[CompanyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CompanyOrder]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyOrder](
	[RecordId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CompanyId] [numeric](18, 0) NOT NULL,
	[SalesOrderId] [nvarchar](50) NOT NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompanyOrder] PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Configs]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Configs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Configs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Enduser]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enduser](
	[EnduserId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[SAPEnduserId] [uniqueidentifier] NULL,
	[CompanyId] [numeric](18, 0) NULL,
	[Created] [datetime] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Enduser] PRIMARY KEY CLUSTERED 
(
	[EnduserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logs]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Message] [nvarchar](max) NULL,
	[ErrorCode] [nvarchar](max) NULL,
	[Result] [nvarchar](max) NULL,
	[Key] [int] NULL,
	[IsSuccess] [bit] NULL,
	[IsValid] [bit] NULL,
	[DateTime] [datetime] NULL,
	[Browser] [nvarchar](50) NULL,
	[CurrentExecutionFilePath] [nvarchar](max) NULL,
	[RequestType] [nvarchar](50) NULL,
	[UserHostAddress] [nvarchar](max) NULL,
	[UserHostName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderHeader]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeader](
	[OrderNumber] [nvarchar](50) NOT NULL,
	[OrderDate] [datetime] NULL,
	[OrderType] [nvarchar](50) NULL,
	[EndUserName] [nvarchar](100) NULL,
	[EndUserEmail] [nvarchar](100) NULL,
	[TotalSalesPrice] [numeric](18, 2) NULL,
	[Status] [nvarchar](50) NULL,
	[Domain] [nvarchar](100) NULL,
	[CurrencySymbol] [nvarchar](10) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
	[LastUpdated] [datetime] NULL,
	[OrderJson] [nvarchar](max) NULL,
	[PONumber] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderLine]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderLine](
	[LineId] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[Sku] [nvarchar](50) NOT NULL,
	[SkuName] [nvarchar](200) NULL,
	[ManufacturerPartNumber] [nvarchar](50) NULL,
	[UnitPrice] [numeric](18, 0) NULL,
	[Quantity] [nvarchar](50) NULL,
	[LineStatus] [nvarchar](50) NULL,
	[CurrencySymbol] [nvarchar](10) NULL,
	[CurrencyCode] [nvarchar](10) NULL,
 CONSTRAINT [PK_OrderLine] PRIMARY KEY CLUSTERED 
(
	[OrderNumber] ASC,
	[Sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[Sku] [nvarchar](50) NOT NULL,
	[SkuName] [nvarchar](200) NULL,
	[ManufacturerPartNumber] [nvarchar](50) NULL,
	[Article] [nvarchar](50) NULL,
	[VendorMapId] [nvarchar](100) NULL,
	[ProductType] [nvarchar](50) NULL,
	[QtyMin] [int] NULL,
	[QtyMax] [int] NULL,
	[LastUpdated] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[Sku] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteContent]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubscriptionSummaryDetail]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriptionSummaryDetail](
	[OrderNumber] [nvarchar](50) NOT NULL,
	[VendorId] [nvarchar](50) NULL,
	[VendorName] [nvarchar](50) NULL,
	[SKU] [nvarchar](50) NULL,
	[SkuName] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[Article] [nvarchar](50) NULL,
	[PaymentMethod] [nvarchar](50) NULL,
	[EndCustomerName] [nvarchar](50) NULL,
	[EndCustomerEmail] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[OrderSource] [nvarchar](50) NULL,
	[UnitPrice] [nvarchar](50) NULL,
	[CurrencySymbol] [nvarchar](50) NULL,
	[CurrencyCode] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[LineStatus] [nvarchar](50) NULL,
	[Domain] [nvarchar](50) NULL,
	[MsSubscriptionId] [nvarchar](50) NULL,
	[MicrosoftId] [nvarchar](50) NULL,
	[SubscriptionHistoryJson] [nvarchar](max) NULL,
	[SubscriptionId] [uniqueidentifier] NOT NULL,
	[MappingStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_SubscriptionSummaryDetail] PRIMARY KEY CLUSTERED 
(
	[SubscriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 6/12/2018 11:32:59 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_Company]
GO
ALTER TABLE [dbo].[CompanyOrder]  WITH CHECK ADD  CONSTRAINT [FK_CompanyOrder_OrderHeader] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[OrderHeader] ([OrderNumber])
GO
ALTER TABLE [dbo].[CompanyOrder] CHECK CONSTRAINT [FK_CompanyOrder_OrderHeader]
GO
ALTER TABLE [dbo].[Enduser]  WITH CHECK ADD  CONSTRAINT [FK_Enduser_Company] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([CompanyId])
GO
ALTER TABLE [dbo].[Enduser] CHECK CONSTRAINT [FK_Enduser_Company]
GO
ALTER TABLE [dbo].[OrderLine]  WITH CHECK ADD  CONSTRAINT [FK_OrderLine_OrderHeader] FOREIGN KEY([OrderNumber])
REFERENCES [dbo].[OrderHeader] ([OrderNumber])
GO
ALTER TABLE [dbo].[OrderLine] CHECK CONSTRAINT [FK_OrderLine_OrderHeader]
GO
/****** Object:  StoredProcedure [dbo].[procGetCompanySalesOrders]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procGetCompanySalesOrders
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			04-Sep-2017		neeraj.katiyar@blue-thread.com			Get User's
1.1			18-Jan-2018		neeraj.katiyar@blue-thread.com			sort by companyName
***************************************************************************

procGetCompanySalesOrders 6,'sandeep','',10,1
*/  

CREATE procedure [dbo].[procGetCompanySalesOrders]
(
	@CompanyId numeric(18,0),
	@EndUser nvarchar(100),
	@SalesOrderNo nvarchar(100),
	@rowCount int,
	@Pageno int
)
as

begin
declare @fromRow as int,@TotalRecords as int
                                   
set @fromRow=@rowCount*@Pageno 

Declare @temp table(
    companyId int
    )

Insert into @temp
Select CompanyId
From EndUser
Where Email like '%'+@EndUser + '%' or name like '%'+@EndUser + '%'

If (IsNull(@EndUser,'')> '')
  Begin
    
    Set @CompanyId = -1
  End

select	@TotalRecords = COUNT(C.CompanyId)
From Company C , CompanyOrder S	
Where C.CompanyId = S.CompanyId and
      (IsNUll(@CompanyId,0) = 0 or (C.CompanyId = @CompanyId or C.CompanyId in (select CompanyId from @temp))) and
	 (IsNUll(@SalesOrderNo,'') = '' or S.SalesOrderId like '%' + @SalesOrderNo +'%') 

select * from(
			 select  ROW_NUMBER() over (order by C.Name) Row, C.Name CompanyName, S.SalesOrderId, C.CompanyId, RecordId, S.Created , S.CreatedBy,@TotalRecords TotalRecords
			 From     CompanyOrder S	Left Join Company C
			 on   S.CompanyId = C.CompanyId
			 Where C.CompanyId = S.CompanyId and
				  (IsNUll(@CompanyId,0) = 0 or (C.CompanyId = @CompanyId or C.CompanyId in (select CompanyId from @temp))) and
				  (IsNUll(@SalesOrderNo,'') = '' or S.SalesOrderId like '%' + @SalesOrderNo +'%') 
	        ) r
Where Row between @fromRow-@rowCount+1 AND  @fromRow


end

GO
/****** Object:  StoredProcedure [dbo].[procGetSubscriptionSummary]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****************************************************************************          
PROCEDURE NAME:   procGetSubscriptionSummary
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			15-May-2018		karan.pasrija@blue-thread.com			Create
1.1			23-May-2018		karan.pasrija@blue-thread.com			Filter added for Order Number
1.2			25-May-2018		karan.pasrija@blue-thread.com			Quanity taken from OrderLine table instead of SubscriptionSummaryDetail table
1.3         29-May-2018		karan.pasrija@blue-thread.com			Not showing orders which having status as cancelled
procGetSubscriptionSummary '20','1','Akshay Corps','','','',''
****************************************************************************/ 
CREATE procedure [dbo].[procGetSubscriptionSummary]
  @PageSize INT, 
  @PageNum  INT,
  @CompanyName nvarchar(50),
  @Domain nvarchar(50),
  @ProductName nvarchar(50),
  @ResellerPO nvarchar(50),
  @OrderNumber nvarchar(50)
	as
begin
;WITH TempResult AS(
    SELECT (case when isnull(SSD.Domain,'') = '' then OH.Domain else SSD.Domain End) Domain,SSD.OrderNumber,SSD.SkuName,SSD.SKU,isnull(OL.Quantity,'') Quantity,SSD.SubscriptionId,SSD.Company,SSD.MappingStatus,OL.LineStatus,SSD.CreatedDate,OH.PONumber,OH.[Status],OH.OrderDate
    FROM SubscriptionSummaryDetail SSD left join OrderHeader OH on SSD.OrderNumber=OH.OrderNumber left join OrderLine OL on SSD.OrderNumber = OL.OrderNumber and SSD.SKU = OL.Sku
	where (Isnull(@CompanyName,'') = '' or SSD.Company = @CompanyName) and
	(ISnull(@Domain,'')= '' or SSD.Domain like '%' + @Domain + '%') and
	(ISnull(@ProductName,'')= '' or SSD.SkuName like '%' + @ProductName + '%') and
	(ISnull(@ResellerPO,'')= '' or OH.PONumber like '%' + @ResellerPO + '%') and
	(ISnull(@OrderNumber,'')= '' or SSD.OrderNumber like '%' + @OrderNumber + '%') and 
	SSD.SkuName not like '%Azure%' and SSD.UnitPrice <> '0' and
	OH.[Status] <> 'cancelled'
), TempCount AS (
    SELECT COUNT(*) AS MaxRows FROM TempResult
)
SELECT  Domain,OrderNumber,SkuName,SKU,Quantity,SubscriptionId,Company,MappingStatus,LineStatus,PONumber,[Status],OrderDate,CreatedDate,MaxRows
FROM TempResult, TempCount
ORDER BY TempResult.MappingStatus
    OFFSET (@PageNum-1)*@PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY
End



GO
/****** Object:  StoredProcedure [dbo].[procGetUsers]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procGetUsers
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			04-Sep-2017		neeraj.katiyar@blue-thread.com			Get User's
1.1			18-Jan-2018		neeraj.katiyar@blue-thread.com			sort by companyName
****************************************************************************/  

CREATE procedure [dbo].[procGetUsers]
(
	@Id numeric(18,0),
	@UserName nvarchar(100),
	@CompanyName nvarchar(100),
	@rowCount int,
	@pageNo int,
	@orderBy nvarchar(50),
	@CompanyId numeric(18,0)
)
as

begin
declare @fromRow as int,@TotalRecords as int
                                   
set @fromRow=@rowCount*@Pageno 


select	@TotalRecords =  COUNT(U.EnduserId) 	
From	     EndUser U join Company C
on	      U.CompanyId = C.CompanyId 
Where	(U.EnduserId = @Id OR @Id = 0)and
		(@CompanyId = 0 or C.CompanyId = @CompanyId) and
		(U.Name = ''  or U.Name like IsnULL(@UserName,'') + '%') and
		(Isnull(@CompanyName,'') = '' or C.Name = @CompanyName)




select * from(
			 select   ROW_NUMBER() over (order by C.Name ) as Row, U.EnduserId,U.Name EndUserName, C.Name CompanyName, U.Email, @TotalRecords TotalRecords
			 From     EndUser U join Company C
			 on	     U.CompanyId = C.CompanyId 
			 Where    (U.EnduserId = @Id OR @Id = 0)and
				     (@CompanyId = 0 or C.CompanyId = @CompanyId) and
					(U.Name = ''  or U.Name like IsnULL(@UserName,'') + '%') and
					(Isnull(@CompanyName,'') = '' or C.Name = @CompanyName)
	        ) r
Where Row between @fromRow-@rowCount+1 AND  @fromRow

end


GO
/****** Object:  StoredProcedure [dbo].[procGetUserSubscriptions]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****************************************************************************          
PROCEDURE NAME:   procGetUserSubscriptions
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			15-May-2018		karan.pasrija@blue-thread.com			Create

procGetUserSubscriptions '20','1','Akshay Corps','','','',''
****************************************************************************/ 
CREATE procedure [dbo].[procGetUserSubscriptions]

  @PageSize INT, 
  @PageNum  INT,
  @EndUserEmail nvarchar(50),
  @EndUserName nvarchar(50),
  @ProductName nvarchar(50)
	as
begin
 declare @CompanyDetail as table(companyId nvarchar(50))
 declare @CompanyDetail1 as table(companyName nvarchar(50))
  insert into @CompanyDetail
  Select companyid from Enduser where Email = @EndUserEmail
 

  Insert into @CompanyDetail1
  select C.name from Company C inner join @CompanyDetail CD on CD.CompanyId = C.CompanyId
;WITH TempResult AS(
  SELECT SSD.Domain,SSD.OrderNumber,SSD.SkuName,SSD.SKU,isnull(OL.Quantity,'') Quantity,SSD.SubscriptionId,SSD.Company,SSD.MappingStatus,SSD.LineStatus,SSD.CreatedDate,OH.PONumber,OH.[Status],OH.OrderDate
    FROM SubscriptionSummaryDetail SSD left join OrderLine OL on SSD.OrderNumber = OL.OrderNumber and SSD.SKU = OL.Sku
	inner Join @CompanyDetail1 cd1 on cd1.companyName = ssd.Company
	left join OrderHeader OH on SSD.OrderNumber=OH.OrderNumber 
	where
	(ISnull(@ProductName,'')= '' or SSD.SkuName like '%' + @ProductName + '%') and
	SSD.MappingStatus = 'MAPPED' and
    OH.[Status] <> 'cancelled'
	), TempCount AS (
    SELECT COUNT(*) AS MaxRows FROM TempResult
)
SELECT  Domain,OrderNumber,SkuName,SKU,Quantity,SubscriptionId,Company,MappingStatus,LineStatus,PONumber,[Status],OrderDate,CreatedDate,MaxRows
FROM TempResult, TempCount
ORDER BY TempResult.MappingStatus
    OFFSET (@PageNum-1)*@PageSize ROWS
    FETCH NEXT @PageSize ROWS ONLY
end
GO
/****** Object:  StoredProcedure [dbo].[procInsertIntoLogs]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procInsertIntoLogs
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			15-May-2018		karan.pasrija@blue-thread.com			Created
****************************************************************************/ 
CREATE procedure [dbo].[procInsertIntoLogs]
(
@message nvarchar(max),
@ErrorCode nvarchar(max),
@Result nvarchar(max),
@Key int,
@IsSuccess bit,
@IsValid bit,
@TimeStamp datetime,
@Browser nvarchar(max),
@CurrentExecutionFilePath nvarchar(max),
@RequestType nvarchar(max),
@UserHostAddress nvarchar(max),
@UserHostName nvarchar(max)

)
as
begin
insert into Logs([Message],ErrorCode,Result,[Key],IsSuccess,IsValid,[DateTime],Browser,CurrentExecutionFilePath,RequestType,
UserHostAddress,UserHostName) values (@message,@ErrorCode,@Result,@Key,@IsSuccess,@IsValid,@TimeStamp,@Browser,@CurrentExecutionFilePath,
@RequestType,@UserHostAddress,@UserHostName)
end

GO
/****** Object:  StoredProcedure [dbo].[procXmlDeleteCompanyOrderMapping]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procXmlDeleteCompanyOrderMapping
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       	-----     							-----------          
1.0				22-Jan-18		karan.pasrija@blue-thread.com		Created
****************************************************************************/  

CREATE proc [dbo].[procXmlDeleteCompanyOrderMapping]
 @recordIds xml
 As
 BEGIN

 Declare @SalesOrderTable table(SalesOrderId nvarchar(50)) /*table to store salesorderid */
 insert into @SalesOrderTable(SalesOrderId) 
 select salesorderid
	From	CompanyOrder
	Where	RecordId in ( 
							Select c.value('.','numeric(18,0)')    
							From 
								 @recordIds.nodes('RecordIds/RecordId') T(c)
						  )
 
   delete from companyorder where SalesOrderId in(select SalesOrderId from @SalesOrderTable) 
   delete from orderline where OrderNumber  in(select SalesOrderId from @SalesOrderTable) 
   delete from OrderHeader where OrderNumber in(select SalesOrderId from @SalesOrderTable) 
  END
GO
/****** Object:  StoredProcedure [dbo].[procXmlGetOrders]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procXmlGetOrders
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			30-Nov-2017		neeraj.katiyar@blue-thread.com			Create
1.1			29-Dec-2017		neeraj.katiyar@blut-thread.com			do not get cancelled order
1.2			18-jan-2018		neeraj.katiyar@blut-thread.com			select result(order by CompanyName)
****************************************************************************/  

CREATE procedure [dbo].[procXmlGetOrders]
(
	@IsAdmin bit,
	@UserEmailId nvarchar(100),
	@OrderNumber nvarchar(50),
	@UserName nvarchar(100),
	@SkuName nvarchar(100),
	@rowCount int,
	@Pageno int,
	@CompanyName nvarchar(100)
)
as

begin
  

Declare @fromRow as int,@TotalRecords as int, @CompanyId as int                                   
set @fromRow=@rowCount*@Pageno   

Select @CompanyId = (Select Top 1 Companyid from Enduser where Email = @UserEmailId),
       @UserName = Isnull(@UserName,''), @UserEmailId = ISNULL(@UserEmailId,''),
	  @SkuName = ISNULL(@SkuName,''), @OrderNumber = ISNULL(@OrderNumber,''), @CompanyName = ISNULL(@CompanyName,'')

Set @TotalRecords = ( 
					   Select	 Count(OrderNumber) 
					   From	 (
								Select  Oh.OrderNumber,
									   (
										  Select	P.SkuName '@SkuName' 
										  From	OrderLine Ol join Product P on Ol.Sku = P.Sku
										  Where	Ol.OrderNumber = Oh.OrderNumber and 
												Ol.SkuName like '%' + @SkuName + '%'
										  for	xml path('OrderLine'), root('OrderLines'),Type 
									   ) OrderLines 
								From	   OrderHeader Oh Join CompanyOrder Co on Oh.OrderNumber = Co.SalesOrderId
								Where  (Oh.Status <> 'Cancelled') and ( (@IsAdmin = 1) or (Co.CompanyId = @CompanyId )) and
									  (@OrderNumber = '' or Oh.OrderNumber like '%' + @OrderNumber + '%') and
									  (Oh.EndUserName like '%' + @UserName + '%') and
									  ((@IsAdmin = 0 or @CompanyName = '') or 
									   (Co.CompanyId in (Select CompanyId 
													 from Company 
													 where name like '%' + @CompanyName + '%'
													 )
									   )
									  )					 
							 ) Result
					   Where	 OrderLines is not null
				  )



    Select * From (
				Select ROW_NUMBER() over (order by C.Name) Row, Oh.OrderNumber,Oh.OrderDate,Oh.OrderType,Oh.Status,Oh.Domain,Oh.EndUserName,
					  Oh.EndUserEmail,Oh.TotalSalesPrice,Oh.CurrencySymbol,Oh.CurrencyCode,@TotalRecords TotalRecords, C.CompanyId, C.Name CompanyName,
				    (
					   Select	 Ol.LineId '@LineId', Ol.Sku '@Sku',P.SkuName '@SkuName' ,Ol.Quantity '@Quantity' ,Ol.UnitPrice '@UnitPrice',
							 Ol.ManufacturerPartNumber '@ManufacturerPartNumber',Ol.LineStatus '@LineStatus',Ol.CurrencySymbol '@CurrencySymbol',
							 Ol.CurrencyCode '@CurrencyCode'
					   From	 OrderLine Ol join Product P on Ol.Sku = P.Sku
					   Where	 Ol.OrderNumber = Oh.OrderNumber and 
							 Ol.SkuName like '%' + @SkuName + '%'
					   for	 xml path('OrderLine'), root('OrderLines'),Type 
				    ) OrderLines 
				From  OrderHeader Oh Join CompanyOrder Co on Oh.OrderNumber = Co.SalesOrderId
					 Join Company C on Co.CompanyId = C.CompanyId
				Where  (Oh.Status <> 'Cancelled') and ( (@IsAdmin = 1) or (Co.CompanyId = @CompanyId )) and
									  (@OrderNumber = '' or Oh.OrderNumber like '%' + @OrderNumber + '%') and
									  (Oh.EndUserName like '%' + @UserName + '%') and
									  ((@IsAdmin = 0 or @CompanyName = '') or 
									   (Co.CompanyId in (Select CompanyId 
													 from Company 
													 where name like '%' + @CompanyName + '%'
													 )
									   )
									  )					 
			 ) Result
    Where	  (Row Between @fromRow -@rowCount + 1 And @fromRow ) and
		  OrderLines is not null
end
GO
/****** Object:  StoredProcedure [dbo].[procXmlInsertCompanies]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procXmlInsertCompanies
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			08-Jan-18		neeraj.katiyar@blue-thread.com			
****************************************************************************/  



Create procedure [dbo].[procXmlInsertCompanies]
(
	@Companies xml	,
	@CreatedBy nvarchar(100)
)
as

begin
  

    Insert Into Company(Name,Created,CreatedBy)
    Select c.value('.','nvarchar(100)'),GETDATE(),@CreatedBy      
    From 
		 @Companies.nodes('Companies/Company') T(c) left join 
		 Company Com On  c.value('.','nvarchar(100)') = Com.Name
    Where Com.Name is null





end
GO
/****** Object:  StoredProcedure [dbo].[procXmlRemoveEndUser]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procXmlRemoveEndUser
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       	-----     							-----------          
1.0				19-Jan-18		karan.pasrija@blue-thread.com		Created
****************************************************************************/  

CREATE proc [dbo].[procXmlRemoveEndUser] 
 @customerIds xml
 as
 Begin

	Delete
	From	Enduser 
	Where	EnduserId in ( 
							Select c.value('.','numeric(18,0)')    
							From 
								 @customerIds.nodes('CustomerIds/CustomerId') T(c)
						  )
 End
GO
/****** Object:  StoredProcedure [dbo].[procXmlUpsertProducts]    Script Date: 6/12/2018 11:32:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****************************************************************************          
PROCEDURE NAME:   procXmlInsertProducts
AUTHOR:			
DATE:			  	
DESCRIPTION:          
------------          
 
          
REVISION 		 DATE     		EMAIL								DESCRIPTION          
-------- 		 ----       		-----     							-----------          
1.0			11-Dec-2017		neeraj.katiyar@blue-thread.com			
****************************************************************************/  



CREATE procedure [dbo].[procXmlUpsertProducts]
(
	@Products xml	
)
as

begin
  

Insert Into Product(Sku,SkuName,ManufacturerPartNumber,Article,VendorMapId,ProductType,QtyMin,QtyMax,LastUpdated)
Select c.value('@Sku','nvarchar(100)'),c.value('@SkuName','nvarchar(200)'),c.value('@ManufacturerPartNumber','nvarchar(100)'),
       c.value('@Article','nvarchar(100)'), c.value('@VendorMapId','nvarchar(100)'),c.value('@ProductType','nvarchar(100)'),
	  c.value('@QtyMin','int'),c.value('@QtyMax','int'),c.value('@LastUpdated','datetime')
From 
       @Products.nodes('Products/Product') T(c) left join Product P On  c.value('@Sku','nvarchar(100)') = P.SKU
	  Where P.Sku is null


Update P
Set	  P.SkuName = c.value('@SkuName','nvarchar(200)'),P.ManufacturerPartNumber =c.value('@ManufacturerPartNumber','nvarchar(100)'),
       P.Article = c.value('@Article','nvarchar(100)'),P.VendorMapId = c.value('@VendorMapId','nvarchar(100)'),P.ProductType = c.value('@ProductType','nvarchar(100)'),
	  P.QtyMin = c.value('@QtyMin','int'),P.QtyMax = c.value('@QtyMax','int'), P.LastUpdated = c.value('@LastUpdated','datetime')
From 
       @Products.nodes('Products/Product') T(c) left join Product P On  c.value('@Sku','nvarchar(100)') = P.SKU
	   
      
 Select 1 IsValid


end
GO

