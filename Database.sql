USE [WebBanHangOnline]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/03/2024 11:20:39 CH ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/03/2024 11:20:39 CH ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/03/2024 11:20:39 CH ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/03/2024 11:20:39 CH ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Adv]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Adv](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[image] [nvarchar](500) NULL,
	[Type] [int] NOT NULL,
	[Link] [nvarchar](500) NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Adv] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Category]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](150) NULL,
	[SeoTitle] [nvarchar](150) NULL,
	[SeoDescription] [nvarchar](150) NULL,
	[SeoKeyWords] [nvarchar](150) NULL,
	[IsActive] [bit] NOT NULL,
	[Position] [int] NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Contact]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Website] [nvarchar](150) NULL,
	[Email] [nvarchar](150) NULL,
	[Message] [nvarchar](4000) NULL,
	[Isread] [bit] NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_New]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_New](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeyWords] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_New] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Order]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[CustomerName] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[TotalAmount] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_OrderDetail]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_OrderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.tb_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Post]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Post](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeyWords] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Product]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Alias] [nvarchar](max) NULL,
	[ProductCode] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Detail] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PriceSale] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsHome] [bit] NOT NULL,
	[IsSale] [bit] NOT NULL,
	[IsFeature] [bit] NOT NULL,
	[IsHot] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[ProductCategoryID] [int] NOT NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeyWords] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_ProductCategory]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ProductCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Icon] [nvarchar](max) NULL,
	[SeoTitle] [nvarchar](max) NULL,
	[SeoDescription] [nvarchar](max) NULL,
	[SeoKeyWords] [nvarchar](max) NULL,
	[CreateBy] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Modifieddate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.tb_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_Subscribe]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Subscribe](
	[id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.tb_Subscribe] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_SystemSetting]    Script Date: 28/03/2024 11:20:39 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_SystemSetting](
	[SettingKey] [nvarchar](50) NOT NULL,
	[SettingValue] [nvarchar](4000) NULL,
	[SettingDescription] [nvarchar](4000) NULL,
 CONSTRAINT [PK_dbo.tb_SystemSetting] PRIMARY KEY CLUSTERED 
(
	[SettingKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202403251556433_CreatedDataabase', N'WebBanHangOnline.Migrations.Configuration', 0x1F8B0800000000000400ED5DDD6EDCB815BE2FD07718CC555BA41EDBD92CD2C0DE85D78EBB83E6C7CD38BBBD3364897684D548B392261BA3E893F5A28FD457282991E23F454A9466261502041E91FC0E7F0ECF210FCF21FFFBEFFF9C7DFF659DCC3E83BC88B3F47C7E72743C9F8134CCA2387D3C9F6FCB873FBF9C7FFFDDEF7F77F63A5A7F99FD44F23D47F960C9B4389F7F2ACBCDABC5A2083F8175501CADE330CF8AECA13C0AB3F52288B2C5E9F1F15F1627270B0021E6106B363BFBB04DCB780DAA1FF0E765968660536E83E46D1681A4C0DF61CAAA429DBD0BD6A0D80421389FFF0CEE7F08D21F83F4F17D9AC42938AA8BCC6717491CC0EAAC40F2309F05699A9541092BFBEA630156659EA58FAB0DFC1024B74F1B00F33D04490170235ED1ECB6ED393E45ED59D082042ADC1665B676043C798E3B682116EFD4CDF3A6036117BE865D5D3EA15657DD783EBF883ECF67229D5797498EF2683BF8E8F5F5112CF96C26A63F6BD802720FFAF76C76B94DCA6D0ECE53B02DF3207936BBD9DE2771F837F0749BFD02D2F3749B246C1D612D611AF7017EBAC9B30DC8CBA70FE001D73C8EE6B3055F6E21166C8A3165EA862DD3F2F9E97CF60E120FEE13D0B000D309AB32CBC15F410AF2A004D14D5096208723B88C40D589127581D66D5C268090834C0727D17CF636F8F206A48FE52738BD5EC069731D7F0111F982ABF0318DE19C8385CA7C0B14553493BD024598C79B9A5DB4C45F1CDB1137D38AD7C1A3A9897EA820F8B6613323BC89D35F06AFE6650E209FFCF0642004FFF44628BA82FF115AE8EF5B28439D7B064EE7F8210651E413CC7B1F9C2DA8DC324AB34B58F5C72C7FEA28D248F149AEED9F5CAB34FAE073CB4E7ADA36D14C6B05325F7DD94A68E476417EFD39CB23D378F9A1B52C2EC232FEDCF4E10F5996802075E6AE9BAC88D9CEE9A667261530980A80A4DE059FE3C74A840944DF81DF20A77D004995587C8A37F5CAFF0826DC5195709D67EB0F59521768BEDFDD06F9232861753345E22ADBE6A14355201F95EABAA0146565B804A9367CAAAA3AD6CA1136ACA35E84252795D843259E7EFD2AD117AD328893C1C92C5BF62D9E84349EB5CBAB7E5AC5629DE0A7C2D6EB046FE42CD6099E46DCD33A61D2F03BD1F0546F76D5F244732AB53C51BA9DD42AD2D01DF52A2A3A29D669AF3929D649B14E8A7552AC7BA6582DB7ACA26A556F68BBD973B3B40CC2AEEA15979E34AC8116FA7F7C050B07A4884B1F84CD745EAFCD5ACF0F95B7A028CC7AEF9B632F474CCB020AAF6812B57B2B6AAD05DBFB3C0239599475126E0CC224E00CB4AA7E5AB6126C391EC8B3681B96FD61E290722F08E3750087FF26877F61979B97F3D92A0C10A03BFADFB701EE11A73A6AD70655CF29170655CA1DC38105BB3A905325ABB6228BB3A5BD1E127DFD6AE0BB269F50413E595AC4A8F2F45ACAE0DEEC3ED7A7596E5235B0AF3CC872574D5A0D26C85B16510351BFF994A53B207B1145395CF08C4FF816F24A72B1CEB669B96F32745A61EDC3669657483EF496522BA8555B37DB31514EDDCCC775E94931FCBF1ECD6206F0A4FC266BF5408334E4A2BF425F05C97014FCA8C465F1634617495D4D17CB826D6A77946BA836A134EC0FF46356F607F1E4C28685C17438B2378723D33A7027EB406126A8CF36F83C648FCF2D08757964273D5DC65EFE7A5233FA2C1227D7F6FD75371853FC2DC37164ECA43B26DD71C0BA43E3C3DD476948C7E46DDAA593D220A20ED130698CB74DC8E845B17907CA2352F0A886BCCE21DC6F59FECB118BF86C665D8EAA95535BB5F2FCE4FEE1F9CB17DF06D1F36FBF01CF5F745131CB0E2A861EEBA864FEE9CB21647E8BC9F8F4C5B75EA86AF9FC63014747C9E4EC78DFE16C94BDE55489B11559BCB03482F2CFD60475FF591BD554666F6556D4A02E338190187B3690FA0E4BD79AE356DB7BB4A8B837B29A61CDDD943FE0D5B6CF41F0B7426F73E8F1B924EAB022B2E7B0A7A204EB1528CBAA05DDB88CC5D829A7E13AC0BCEE1CC796D50EEB30FB2E4CFAA720D99A74B127E72D4CCD6EBFD289A635F75D6C3670D82B4E4312BF0BFF09103B65BF4359F35DC3EC9E5C05C6F10CE8278B6DD7B016542EB3F421CED7A0B7EFE34D5014700917FD18149F46301784DB1CCEBC5519AC37E30CFABBEDFA1E4DE8F168791B9ADBDFB2EB2084CB83D7292AD51BEF4D16FE926DCBD76965DAF85886B22EB704F0529D8B300445710D99194497AC0F4BB7E319247477BD87BC4C8278ADDE440AEAE18E64A51B49750E6933A9C9A6DA509AAAFA267B8C53BBAA92ACFAAAD6395AAB8AB3B9561581D9D514E7D457B4CAD05ACF3A97B72D7A3542FEF7E815ECFE6FD2FBAD45863FE2D8D50EBF1A3E4474F8CD1BA2D4B6A61FD4B99F65DB4A08F89F0D15ECFECF86AA9AF0F3E7B8727EB6B05C91CC8ABDA48351AC7DCE09351B7B3A70CD1C9BF8383240375D2E8A220BE36A16105B381BC0CFD71CAEDE66A668FEBA05F81600D806C8D331D26E90EEF9FC4F524768E09AF37C0A474FDD79CC93B9C893EFD32B908012CC901B0FF2B6BA0C8A3088E45180FD11F15F201B831C4DD800ED700A380DE3B494793E4EC3781324869A0B652CCD81A84E0DBA987205362045D2C4D0FF3664597F24997C4345E8AAB69E395B306C64E62E3E8A55C70F9A9056CA10F5350FF60CA6B9D6E910384C59F511584C390607C1630AC7721D5F98BCCC2973E068A10139C3582305BB72118B6DD3A013DBE97B6604DED377820DF126C87037124EE796A0954DAD3E0A8CDC13BDD046E1C976D73BA9860371655B5F8D21175B3AC3A60A0AEFE0DD494A2134D3289874719A1D259319DD9EBB76AFA50DF51F4B5EAAC7C6811D772632154E2E3A3E3179BC5036E1FDAE469191063F1B45C5A8F7CC206252DF4B36ECA0E6036B66D4F7840D71B5B3CC488CA83194EBC6BCCD6A4EC75D3AE31D85275BCCF51ABEC426E34118D3DC632330A7B94B6C2AA075FCDA0583E2E3115B0610CF4AF68D4185431A0D83622BEE280CCAF7D80E1894EF928363D0FA54CC76FC8523B27D634FFE6C6E7CB56EECAE1DF026D71F7BC69AB5B9BBBA742E4E412EB3E7D53D4A045F54F1FEB09EF848A8C0D675914510F80A94CD2D1C9F8BF98C5AD809D7A2E79CA42D0F5F14EF0163A002A0FBFC1694CADE2E15AFBEB694C477E44B656B0B6B5BE5EB3BFD9455279705B640F0F73F4830DC76D2064A0BD2DE134DFC88DC1964DB6907611C53C984D38289FD0A241C7E8FD302220A28132015622DA08D63B50A8DF1DA6E83613D679550BC7B6E0B1C0E929027A3A8421CBA8C38CC18FB0CAF9B1D6089738B1116AF76045846EA715280B92194C9A2BA9B5B14C12D877B4D3BB0B0914478CB691E539E9D1EA236E6DB65D166E15A54B9D1861327DEC8A93C7362AA8D25A5A1E1EA53A6A15AAEBA3F476E7EDB6188ED7108D30A22670D3D6138C510819ABAF767056D40A0822BACACF46E767A9657644560E29B36FBBA8CEC8D81C48BF9341C6432125B9B892D87DEDA303C4CB7A842EEE45E69B359DA5A2D993660C56CE80C839191C15128FBDE9DA27321953BC6C686E66245631A8607C3D0412D162F4D2791C678EF25A2E0DB7B4965C87131E5F4EA25C1ECA2E925D218EFBD8479B4BD9314C604077342AF2EE2B7FE9E261B71CA6A76A94DDAD9A27E5E197F385B68DE613E7B1B6C3668D94C4BE22FB355FD28F3E59F57EE0F15AF6B8C45C8F5B6B8A76E2895591E3C0221B5BE06F43ACE8BF22A2883FB00B9A45D466B299B724FAE59441392CCB65B1E43B2982699D1DF75016DFC14DCA8CBF60B5CFE1A366E8D8C2095B32F33F4CA5233F432769004B92296F3324BB6EB547FE2A72F8D2FF06001F0277B0C2ED68D45E212ECF1F07BC35CA3EA4F0EEDAA7C90B966555FEC11EAD7845984FA8B3D02BDDB8345A15F5D91F0E51D32184EB0C7E32FF06001F9147744B1B5EC7719ED6C214C05C97C274D3AC9C8CA4F60ABE9CDAC9E7D4C72DD1ED062A6EB8BEEEF74C7975EB218F8D3EE4406BD8A8805A35F9D90B49513D39C50E9954202244DB0C7A3B709B260F4AB3D127D129745A25F277177F0E20E99D57CC839058E858853969AA49B1B5E7D4CC143A98E2E4C284B7959B5745D56B18E85DCC434381CEAD126A9DD556A4FB2764F656D6DCBF7216DAB73527771AB2E36C9DB49DE4EF27692B72E8807216F1B47112F1B79EC5AD2611FAF2B398CE045FFF3E5EB2FF608CDD38C2C48F3D11E07DF0EC4A2E04F0E0C471E56E4B88D7C7499EEF5BB89FC64AFBF4D53FDE0A77A8BAB81FB74675DC0DCA7BCB1F430D3BE893F6421B441897A1C262C8733FAE8A3754C58D5BB273C4E2C3FF167C2A06F8FB030F4EB7EB1A047E6EBCA7663315CFDE41027BA32D9D5D988C0BD9DC72171290E0C57DF7AC7315CFDC961D3411EB7E3B61DE4A3C306887DAB8EDB06B109434E84498B1D981633F88375B011A8BDA66CCC04BA925FB7A58038C449728D4B982C0F7EF43AF36A9984537FDE8568246F94F1DB84FA9B0B8ADC30F2CD05A579A38C076A3EBBB5AB949BE5A4803C9E2BCA3711A8E6DB64C7B2C09B94F97E2B73CFFE2462204F67ED7E88DE25BE356AFD121627CDC2C9B7C48437499B3D95363A2F657709C385F8B98B177371ED4C144DB30399BC77343AB2BFB6CF916A6227BB8F961E42D7E724AA9AED755DA4B51E855CBCC2A2E82E63D9D9E83121A73E868D06A9BA8F97A1EC306ADBC7190EFB968E2CE975827E5783CD07067B19702E94B8C3A09BCBEB753F7D568757FDBAA77A2CD0F0ADDA0A3C9CE28C6858F5C8E97BC326BAE0BB0E61204288B83B7FB4220CA375E95B362C06FD3AAED9DE87A0121F9A91C0983487D6710FCE708DE4525C660EF7AA0C3F69B824C731206FC7482341123AE1697A549DC3614729BD16C36D2EA55487F01EF9DD182ED6474EEE80ADA8B398E660FF969F96E16CE172B23D367D67465CEBEDF12A5B1B00DC6F995D5FB7D16F9DADC1184648FB59A6334F77700B38FAD9114BB18C60BFEF254B69A3A5FBB1547DD54A3F96D260E86510F7F2052F828CCF75E8316FD8E72C046BBEFE390F3D9E1BE30ECA1E52C4B498A5A18EBF34BF9B88691CADCC8551572D4741D1558B0B1C392D862FD759E633D28D643B7084321CAD7E4D2E931820814E32BC0DD2F8011465FD84CBFCF4F8E4743EAB0E43EB00771C98FD4ABC7FCC2A52FBE4398AD406D17A2116778FF746284511711E528A872AC578E7315EBE8D5187B63EB3E4FABA5D6D12AE29A49F833CFC14E4FCA32BE891534754C563A24AEC17C71CB6CD334A38B0DA2F28FB0054D5CDAE6FFA5581D67EEB44EDD73CEE1FD6C1973F76038BD8A78391E5B96C7F3A58C6E24DD79EC03AB5D3FAE52BCD332BD3A455B8AB78E036DBE92FD4D2EEEDD2CCB9F596B8C3D69A1E6CF985A6AE0E35EE7DEC2EBE68F074771138892B7FE24A8A40FE8A25D5E9BE4AAA8E7825F3F8742FA8A56AA1D36D36313E4BCC584B77FD2ED3087C399FFFB32AF66AB6FCC71D2DF96C56F971BF9A1DCFFED5E1417BB5D0EED41AB3A4EE0AA913CFDD86CE834C9EE4A93F792A87187FC502756F977E93409D04EA2450BF0A81AA8C1E3E58995A9F187916A94D68B2DFED1E3E3EF60BDA842E1B60BF397637619158E669D2EEC3A4D5C6FF1EECC46D2289DD94302ED64B03DFD0D06337E24DC19EE463FA2E5004C2781D24E8B405FE5554C726272F61778701023C7546A7414AB6F6203726FC4AD8AF8EBD6B99B076485C68B10F44ECAAE403AA0933F601C6C519EF0DFB4E8A67D0EDB7F23DDD439DF5FB6ED2BC610383A71DBD6DA70DA94F99F8E13D167924A4B8FB6A9D8413F74168E288FB805441C47D003C9CA9C9F1C29D168A93C5A887CA9DF4B747FD3D3951F4F37CEAA6E2427F136C12009300E82400F4E1B376B35F768F6D9FFDD4B2A29E9BA72F3DD979DB54316A34FAABFAFC6CB62C3EA6F1AF5B98700B3B1469626EE5FFAD2F4389FC06A9BEA2FFEA3228DA1788E5ACEAE0D7F63124245CBB1CAE7EEAA2FC92A7E7F0935674A84D5DB4476DAC875D134B3B8696D5CF33DFAA577988D143307790CBF603A28F73B51B147D646BFBE0B0650D83D4619DC2C7C77A3EF75105C9F622613D5AC6A8D38352563464D58779C3CA1AECE7FC51D081D6A04CB8658F5D3717BCEA6559CA85AEFA1A0B12BAEA17CF4B17CA31AADDB11441A97A296DD3583118B57BD514D1A7DD4D6734EED47571414AEE7075A908FD1C43520EB2A9DFAF1527138AEA63ADC3C4A20EBFD7A3119CBE371E2DD19C8A1237A6684DEBAD4D3B730A35F3ACD1B95678C6DE25DFEB588B79EC976CC0C16F771A2B227D6FB8C9801B53BD7F4C3FBEDD26658C16799022AC9D14F9FC3EBD020928C10C99F0D1B9CA655084817C492EAA75A4AB030AC060C957BF79CA7F920021FF811C4D9E00AD658A320F6239E4F7268FD330DE0489D85A21A3E5FE0EB5A3811453AEC006A4683A33ADB22163BAE3F46CD1A00ADDD9D67CEEF567339F207FEDC36094CAB39CA55F7F387856D1BCE5B587BC5289AD3BFD531BCC60D5BE47EC68E12FA3B00AEB7E27D5817C1F8471742F3778E71AF3FB243239ED4B20E34819FE588B1CB8EAF9473C07E3E6BD98368EF8C19E358A9A0CC44BC6B3C061B84AE93EA421A53875DF9D54AA67C29DB2FEDD06F1AB134D2E633BB270BAD13F2E340A0BB1876E778A9BFD98F1E3CEE7D801E41346E125F9DC4A511F9A380857B5DC166C63C970622D8B3B6F6D0FD546622EC14E7EA7BA998C1954D1ACCE8EA994363A9BD5062C1D9FE1D44118ADFD9ACC41794D77F19BC361EF2E984D7567D9C1301BB68969980DA77E8DCCA6BB126ECF994D71B3F9C1F0DAAEF4E78E39CD5A858EC868C2657BC4FA215E8C27311ABEBFAF09A5F93C9F516B296134F4B5BE52EF7C1EDD6770C8B119FFFEAE4A5B9851E9A65382A6491A7C9AA18548650295F0ABAF1AE82AAD05B5369749B0F5670D6E9DD8D627384259D1252445D72324BD8502B73992A870A91A4A5C1E1B6A3A3A660AED8340369BF2389014DD5090743B0A0646957298295AB32DBF0392C8F2C92A9A17C5E61D286B2D624B8C8A672D419A454F943ECCD146987A8DC91499344D9F3239DAE870CE500A5A7CBA8E1E9FAB85A6A48665F929E63077A9DB38E2ED837120711E3359BCC572A18D579346DA388F99365E718BB4195DC7097A462B3059A8C8D79CCD70EB1871AED7AFCE6BA62D5792D1345521951E59F055B768167FA6A46897E1D0C953C3586557BF7AA6D264EE4D531C8128DAD77650A23A2A61EAAA54257A2BA25852A3E63A8CA3CE6AAF1A522B0BBFD9C6CF0E9759F7A88DBA72795F232E989775436EB24277ADF20EC65D610E55B4B8CD686A309B3235E7130C4DD7297CF53356FD3B4163B65374848D81CFBC13665A22A5597609A73B354F0EF8EF14A2ECDA3B457B79FE909DC22975CDA5F9FE3B05AF23DBFB44F712DC905DE273EA48F7E23769678B7A91843FC09FD2FDF7678B0FDB14F9A5D6BFAE40113F52883388998290330D347996E943462C14428D481631760B8AC62828838BBC8C1FE08E13262397D46A4D5CB9F921C7E87B102DD3F7DB72B32D6193C1FA3EE1F40EB27498E89F2DA43A9FBDAF3CF20B1F4D80D58C912BEFFBF4876D9C444DBDAF155E621A086442C10EA0682C4BE408FAF8D420BD935E5CD201E1EE6B2C3FB760BD492058F13E5D052896DBBD6E90FDDE80C7207CA23E813A90F681E0BBFDEC2A0E1EF3605D600C5A1EFE843C1CADBF7CF73FDFFC22A1FB180100, N'6.2.0-61023')
GO
SET IDENTITY_INSERT [dbo].[tb_Category] ON 

INSERT [dbo].[tb_Category] ([id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeyWords], [IsActive], [Position], [CreateBy], [CreatedDate], [Modifieddate], [ModifiedBy]) VALUES (1, N'Trang chủ', N'trang-chu', N'cgfxhsbakl', N'dhj', N'd', N'd', 0, 1, NULL, CAST(N'2024-03-26T22:32:16.290' AS DateTime), CAST(N'2024-03-26T22:32:16.290' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeyWords], [IsActive], [Position], [CreateBy], [CreatedDate], [Modifieddate], [ModifiedBy]) VALUES (2, N'Giới thiệu', N'gioi-thieu', N'sd', N'bdc', N'dj', N'de', 0, 2, NULL, CAST(N'2024-03-26T22:32:31.330' AS DateTime), CAST(N'2024-03-26T22:32:31.330' AS DateTime), NULL)
INSERT [dbo].[tb_Category] ([id], [Title], [Alias], [Description], [SeoTitle], [SeoDescription], [SeoKeyWords], [IsActive], [Position], [CreateBy], [CreatedDate], [Modifieddate], [ModifiedBy]) VALUES (3, N'Tin tức', N'tin-tuc', N'cfd', N'è', N'ff', N'đ', 0, 4, NULL, CAST(N'2024-03-26T22:32:48.407' AS DateTime), CAST(N'2024-03-26T22:33:23.330' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_Category] OFF
GO
SET IDENTITY_INSERT [dbo].[tb_New] ON 

INSERT [dbo].[tb_New] ([id], [Title], [Alias], [Description], [Detail], [Image], [CategoryID], [SeoTitle], [SeoDescription], [SeoKeyWords], [IsActive], [CreateBy], [CreatedDate], [Modifieddate], [ModifiedBy]) VALUES (1, N'cơ hội săn deal giá hời trong tháng 4', N'co-hoi-san-deal-gia-hoi-trong-thang-4', N'df', N'<div class="card-header" style="box-sizing: border-box; padding: 0.75rem 1.25rem; margin-bottom: 0px; background-color: rgb(108, 117, 125); border-bottom: 1px solid rgba(0, 0, 0, 0.125); position: relative; border-top-left-radius: 0.25rem; border-top-right-radius: 0.25rem; color: rgb(255, 255, 255); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">
<h3>Custom Elements</h3>
</div>

<div class="card-body" style="box-sizing: border-box; flex: 1 1 auto; min-height: 1px; padding: 1.25rem; color: rgb(33, 37, 41); font-family: &quot;Source Sans Pro&quot;, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, &quot;Helvetica Neue&quot;, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">
<form>
<div class="row" style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: -7.5px; margin-left: -7.5px;">
<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">
<div class="custom-control custom-checkbox" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input style="height:1.25rem; margin:0px; width:1rem" type="checkbox" value="option1" />Custom Checkbox</div>

<div class="custom-control custom-checkbox" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input checked="checked" style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Custom Checkbox checked</div>

<div class="custom-control custom-checkbox" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Custom Checkbox disabled</div>

<div class="custom-control custom-checkbox" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input checked="checked" style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Custom Checkbox with custom color</div>

<div class="custom-control custom-checkbox" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input checked="checked" style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Custom Checkbox with custom color outline</div>
</div>
</div>

<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">
<div class="custom-control custom-radio" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input name="customRadio" style="height:1.25rem; width:1rem" type="radio" />Custom Radio</div>

<div class="custom-control custom-radio" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input checked="checked" name="customRadio" style="height:1.25rem; width:1rem" type="radio" />Custom Radio checked</div>

<div class="custom-control custom-radio" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input style="height:1.25rem; width:1rem" type="radio" />Custom Radio disabled</div>

<div class="custom-control custom-radio" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input checked="checked" name="customRadio2" style="height:1.25rem; width:1rem" type="radio" />Custom Radio with custom color</div>

<div class="custom-control custom-radio" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 1.5rem; -webkit-print-color-adjust: exact;"><input name="customRadio2" style="height:1.25rem; width:1rem" type="radio" />Custom Radio with custom color outline</div>
</div>
</div>
</div>

<div class="row" style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: -7.5px; margin-left: -7.5px;">
<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">Custom Select&nbsp;<select>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 1</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 2</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 3</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 4</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 5</option>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</select></div>
</div>

<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">Custom Select Disabled&nbsp;<select>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 1</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 2</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 3</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 4</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 5</option>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</select></div>
</div>
</div>

<div class="row" style="box-sizing: border-box; display: flex; flex-wrap: wrap; margin-right: -7.5px; margin-left: -7.5px;">
<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">Custom Select Multiple&nbsp;<select multiple="multiple">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 1</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 2</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 3</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 4</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 5</option>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</select></div>
</div>

<div class="col-sm-6" style="box-sizing: border-box; position: relative; width: 174px; padding-right: 7.5px; padding-left: 7.5px; flex: 0 0 50%; max-width: 50%;">
<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">Custom Select Multiple Disabled&nbsp;<select multiple="multiple">&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 1</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 2</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 3</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 4</option>&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<option>option 5</option>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</select></div>
</div>
</div>

<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">
<div class="custom-control custom-switch" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 2.25rem; -webkit-print-color-adjust: exact;"><input style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Toggle this custom switch element</div>
</div>

<div class="form-group" style="box-sizing: border-box; margin-bottom: 1rem;">
<div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success" style="box-sizing: border-box; position: relative; z-index: 1; min-height: 1.5rem; padding-left: 2.25rem; -webkit-print-color-adjust: exact;"><input style="height:1.25rem; margin:0px; width:1rem" type="checkbox" />Toggle this custom switch element with custom colors danger/success</div>
</div>
</form>
</div>
', N'/Uploads/images/Screenshot%202023-10-25%20231023.png', 3, N'df', N'dfd', N'ư', 1, NULL, CAST(N'2024-03-27T01:53:12.000' AS DateTime), CAST(N'2024-03-27T19:14:33.353' AS DateTime), NULL)
INSERT [dbo].[tb_New] ([id], [Title], [Alias], [Description], [Detail], [Image], [CategoryID], [SeoTitle], [SeoDescription], [SeoKeyWords], [IsActive], [CreateBy], [CreatedDate], [Modifieddate], [ModifiedBy]) VALUES (5, N'cơ hội săn deal giá hời trong tháng 3', N'co-hoi-san-deal-gia-hoi-trong-thang-3', NULL, NULL, N'/Uploads/images/body2.jpg', 3, NULL, NULL, NULL, 0, NULL, CAST(N'2024-03-27T21:53:08.137' AS DateTime), CAST(N'2024-03-27T21:53:08.137' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tb_New] OFF
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
ALTER TABLE [dbo].[tb_New]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_New_dbo.tb_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tb_Category] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_New] CHECK CONSTRAINT [FK_dbo.tb_New_dbo.tb_Category_CategoryID]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[tb_Order] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Order_OrderId]
GO
ALTER TABLE [dbo].[tb_OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Product_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[tb_Product] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_OrderDetail] CHECK CONSTRAINT [FK_dbo.tb_OrderDetail_dbo.tb_Product_ProductId]
GO
ALTER TABLE [dbo].[tb_Post]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_Post_dbo.tb_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tb_Category] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Post] CHECK CONSTRAINT [FK_dbo.tb_Post_dbo.tb_Category_CategoryID]
GO
ALTER TABLE [dbo].[tb_Product]  WITH CHECK ADD  CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryID] FOREIGN KEY([ProductCategoryID])
REFERENCES [dbo].[tb_ProductCategory] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tb_Product] CHECK CONSTRAINT [FK_dbo.tb_Product_dbo.tb_ProductCategory_ProductCategoryID]
GO
