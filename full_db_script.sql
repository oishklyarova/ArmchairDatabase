USE [master]
GO
/****** Object:  Database [Armchair]    Script Date: 07.06.2016 15:55:10 ******/
CREATE DATABASE [Armchair]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Armchair', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Armchair.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Armchair_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Armchair_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Armchair] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Armchair].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Armchair] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Armchair] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Armchair] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Armchair] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Armchair] SET ARITHABORT OFF 
GO
ALTER DATABASE [Armchair] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Armchair] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Armchair] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Armchair] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Armchair] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Armchair] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Armchair] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Armchair] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Armchair] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Armchair] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Armchair] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Armchair] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Armchair] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Armchair] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Armchair] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Armchair] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Armchair] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Armchair] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Armchair] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Armchair] SET  MULTI_USER 
GO
ALTER DATABASE [Armchair] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Armchair] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Armchair] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Armchair] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Armchair]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07.06.2016 15:55:11 ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 07.06.2016 15:55:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 07.06.2016 15:55:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 07.06.2016 15:55:12 ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 07.06.2016 15:55:12 ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 07.06.2016 15:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Hometown] [nvarchar](max) NULL,
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
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 07.06.2016 15:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[question] [ntext] NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Furnitures]    Script Date: 07.06.2016 15:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furnitures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[Description] [ntext] NULL,
	[Type_] [int] NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Likes]    Script Date: 07.06.2016 15:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Likes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[IdFurn] [int] NULL,
 CONSTRAINT [PK_Liked] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Promotions]    Script Date: 07.06.2016 15:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Promotions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK_Promotion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201605151429148_InitialCreate', N'Armchair_rest_server.Models.ArmchairDB', 0x1F8B0800000000000400CD57DB8EDB36107D2FD07F10F8D4021B732F2FE9424EB0B1D785D178D78836790D6869EC25CA8B4A520BFBDBFAD04FEA2F7468DD25DB6B6F374160C090C8993317CE1C8EFEFDFB9FF0FD5A8AE0098CE55A0DC9C5E09C04A0629D70B51A92CC2DDFBC25EFDFFDFC53789BC875F0A594BBF272A8A9EC903C3A975E536AE34790CC0E248F8DB67AE906B19694259A5E9E9FFF462F2E28200441AC20083F65CA7109DB177C1D691543EA3226663A01618B75DC89B6A8C11D93605316C390DC18193F326EBE1AB0EEAB0583CE0F723512DC08CED0A508C492044C29ED984387AF3F5B889CD16A15A5B8C0C4C32605945B3261A108E4BA163F36A6F34B1F13AD154BA838B34ECB13012FAE8A24D1AEFA8B524DAA24621A6F31DD6EE3A3DEA67248269951DC6506A3EF5ABB1E09E3250FA67A50019C05BBC4CEAA5AC192F2BFB36094092F3F549039C3C45930CF1682C77FC0E641FF096AA832219A4EA3DBB8D75AC0A5B9D12918B7F904CB2294694202DAD6A35DC54AADA193C73855EEEA920477689C2D045435D1C847E4B481DF4181610E9239730E8CF218B0CD6ACF7AC796FF2FAD611162639160C6D61F41ADDCE390E02309267C0D49B95278F05971EC4354722683E78C4C255B7D7B2B73C3E3CACA18622E9920C1DCE053C11F6F4910C5CCE77157520FA38FC1C686A779C5BF6A2421AD1BA0DF16C83E8E713CDEC28FB29EC71F7634073249D11FB6B0D48E29878CC0F51BADF62167A841636F97B7955F351DD29C0F4BDEA47B88339CB134C5C43588B45809A29C45476FA2D35945E61834B63BC8A5F2B6B2846D8345D9D945D3E8E9841BEBC6CCB105F347374A644FAC710A7B325C1AEA26BA4B1975DE4B0DFFDC3EEB8314D745ACD339C10825D2C03658A83C3BE0CD56DBB708333B3869A44526D53E5E3BA49DB34C533F5F391EA1A090960BF9D2F118054134318AA5E3315A34D0446A6DF4F142DA39946E1DD05E21746E8D6E651DEAC9AE4865BDEACD4E0F86453F3C3FE1F41A2417F144AB9F78E29B23DA580772E00506D15F622438C65B0BCC98E24B2CE8FC6225385B5C7666A31F674EA1D626E2D861E5BB8F07DCA7F5D901E0C48BAE3911A827669081CC2F92AD7F6D229D7CEBFF2FA4D6CD9E7C879BFD046F4FBBBDFBD7CBAB5CD0790F626E161A43C85DADB6ED8B2FF03E2984B4F9711462EAF8AA86F09F4A0A629FC91AB49499AAA52E338F01363D2A453A073303C712CCD38D717CC96287DB3158BB9DB9BE3091A1C8AD5C403255F7994B3377632DC88568CDBC213D6C7F3BA5B47D0EEFB7B5605F23047493630870AF3E645C2495DF937E61EE83F02553B4377A853327C2AD3615D29D56470215E91B430ACA93C303C8542098BD57117B8297F886F3E64758B1785372FB7E90E70FA29DF670CCD9CA30690B8C5ADF7FF053FFC5FFEE3FCB8EBF5523100000, N'6.1.3-40302')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0f624c99-8d70-4a22-81b0-6f836417f7d9', NULL, NULL, 0, N'AH6z+v/jMOpuZSUfs4XPoOX89KIe5tOJ9SsuJRqkQksPC6j+2lSfF4iZDz9EZmHLog==', N'80e952c9-292f-46a2-bd1a-0e7122540ee5', NULL, 0, 0, NULL, 0, 0, N'kedrov')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'167eaf67-5302-4fec-8db6-58180fa4a81b', NULL, NULL, 0, N'AJrDl4zBrHClGDLw/qaLBHzZ+ukL309t8HjVpnRD4E0n8qEWzuLKzShhTNXjxNY8Aw==', N'cc3d6e98-fd50-40f7-a261-9885a57de3d9', NULL, 0, 0, NULL, 0, 0, N'guest')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ad3e1804-7a46-41a8-9433-4dd97188ac9c', NULL, NULL, 0, N'AFtQClCVBo/0A/Og9NAte4/QW0ok4GWpPe99KAM6LXEMmt0O7NqDue45TK5QhMvcIw==', N'96a3fcdb-0233-431d-af53-417404fcf42d', NULL, 0, 0, NULL, 0, 0, N'winkme')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'b38a75a3-b3ad-4426-abf5-95d1177153f2', NULL, NULL, 0, N'AI5OzYXaBZXexGo+w6cjhORmeptJnu01MpFLwyzO3siqpgIQxulAbuVF9a9qK5jotw==', N'0491c2f6-36e2-4a9d-bf9e-2acf1260e8e0', NULL, 0, 0, NULL, 0, 0, N'Taiseer1')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e58c3af9-ca83-4228-8a2b-0b28d00652b4', NULL, NULL, 0, N'AHxEF1zuAuPGFzPdfHkKNI+N+THejpmH26JVkC+eRYWZVw7Hoaf13K1Cng3ZsFOaYw==', N'bd765b14-1ee7-4195-850b-fe560e6a9724', NULL, 0, 0, NULL, 0, 0, N'karambol')
INSERT [dbo].[AspNetUsers] ([Id], [Hometown], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'f989a10b-23d0-4538-9634-fcd8fe420ebe', NULL, NULL, 0, N'ANE7qLbBKb1Jo6i9sXAIYTztjydGuVNk2T8ocPz/Ah7S1Ka9kpt3MKBnW18LWQQOUQ==', N'd0964df7-94c9-40d1-b50e-92d2585b7a7d', NULL, 0, 0, NULL, 0, 0, N'Taiseer')
SET IDENTITY_INSERT [dbo].[Feedbacks] ON 

INSERT [dbo].[Feedbacks] ([id], [email], [title], [question]) VALUES (1, N'vyu@ygi', N'15', N'e5eyyfuf')
INSERT [dbo].[Feedbacks] ([id], [email], [title], [question]) VALUES (2, N'afa@wer', N'wwtwg', N'wfwwt')
INSERT [dbo].[Feedbacks] ([id], [email], [title], [question]) VALUES (14, N'dfw@sow', N's', N's')
INSERT [dbo].[Feedbacks] ([id], [email], [title], [question]) VALUES (15, N'dfw@sow', N'sfsfs', N'sffsffs')
SET IDENTITY_INSERT [dbo].[Feedbacks] OFF
SET IDENTITY_INSERT [dbo].[Furnitures] ON 

INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (1, N'Ekero', N'img/armchair1.png', CAST(1750.00 AS Decimal(18, 2)), N'Мягкое кресло сделано для Ikea, Швеция.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (2, N'The perfect country armchair', N'img/armchair2.png', CAST(1800.00 AS Decimal(18, 2)), N'Натуральное льняное кресло.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (3, N'Natuzzi Living', N'img/armchair3.png', CAST(1900.00 AS Decimal(18, 2)), N'Новый модный дизайн, Италия.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (4, N'Pottery Barn’s Cardiff Tufted Armchair', N'img/armchair4.png', CAST(1750.00 AS Decimal(18, 2)), N'Мягкое элегантное кресло.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (5, N'VIOSKI', N'img/armchair5.png', CAST(1800.00 AS Decimal(18, 2)), N'Элегантный модернизм, Италия.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (6, N'Eastside Digs', N'img/armchair6.png', CAST(1900.00 AS Decimal(18, 2)), N'Это кресло, как забытые песни Beatles.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (7, N'Магнолия', N'img/sofa1.png', CAST(4750.00 AS Decimal(18, 2)), N'Каркас выполнен из натурального дерева и фанеры.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (8, N'Гамма', N'img/sofa2.png', CAST(7000.00 AS Decimal(18, 2)), N'Механизм раскладки: французская раскладушка, седафлекс.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (9, N'Венеция', N'img/sofa3.png', CAST(8300.00 AS Decimal(18, 2)), N'На заказ с выбором тканей(обивки) и размером(ДxГxВ) 205x90x90см..', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (10, N'Наполеон', N'img/armchair7.png', CAST(1750.00 AS Decimal(18, 2)), N'В производстве кресла используются только экологически чистые материалы.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (11, N'Bergen', N'img/armchair8.png', CAST(1800.00 AS Decimal(18, 2)), N'Мягкое кресло Bergen, производство фабрики Signal (Сигнал) Польша.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (12, N'Bruno', N'img/armchair9.png', CAST(1900.00 AS Decimal(18, 2)), N'Каркас кресла прочный и надежный.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (13, N'Leonar', N'img/armchair10.png', CAST(1750.00 AS Decimal(18, 2)), N'воплощает в себе оптимальное сочетание удобства и изысканного стиля.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (14, N'Arto', N'img/armchair11.png', CAST(2000.00 AS Decimal(18, 2)), N'Ножки кресла надежны и устойчивы, выполнен из дерева бука.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (15, N'Калифорния', N'img/sofa4.png', CAST(4750.00 AS Decimal(18, 2)), N'С помощью современного механизма трансформации превращается в полноценную кровать, а также  имеет вместительный бельевой ящик..', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (16, N'Твист', N'img/armchair12.png', CAST(2300.00 AS Decimal(18, 2)), N'Элегантный дизайн, удобная посадка, эргономичная спинка.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (17, N'Элвис', N'img/sofa5.png', CAST(7000.00 AS Decimal(18, 2)), N'Ниша, тисненый винил и вместительный бар подчеркнут ваши высокие стандарты стиля и комфорта.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (18, N'Лаура', N'img/sofa6.png', CAST(8300.00 AS Decimal(18, 2)), N'диван для ежедневного сна с механизмом разложения Еврокнижка.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (19, N'Ekero', N'img/armchair13.png', CAST(1750.00 AS Decimal(18, 2)), N'Мягкое кресло сделано для Ikea, Швеция.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (20, N'The perfect country armchair', N'img/armchair14.png', CAST(1800.00 AS Decimal(18, 2)), N'Натуральное льняное кресло.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (21, N'Natuzzi Living', N'img/armchair15.png', CAST(1900.00 AS Decimal(18, 2)), N'Новый модный дизайн, Италия.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (22, N'Pottery Barn’s Cardiff Tufted Armchair', N'img/armchair16.png', CAST(1750.00 AS Decimal(18, 2)), N'Мягкое элегантное кресло.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (23, N'VIOSKI', N'img/armchair17.png', CAST(1800.00 AS Decimal(18, 2)), N'Элегантный модернизм, Италия.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (24, N'Eastside Digs', N'img/armchair18.png', CAST(1900.00 AS Decimal(18, 2)), N'Это кресло, как забытые песни Beatles.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (25, N'Магнолия', N'img/sofa7.png', CAST(4750.00 AS Decimal(18, 2)), N'Каркас выполнен из натурального дерева и фанеры.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (26, N'Гамма', N'img/sofa8.png', CAST(7000.00 AS Decimal(18, 2)), N'Механизм раскладки: французская раскладушка, седафлекс.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (27, N'Венеция', N'img/sofa9.png', CAST(8300.00 AS Decimal(18, 2)), N'На заказ с выбором тканей(обивки) и размером(ДxГxВ) 205x90x90см..', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (28, N'Наполеон', N'img/armchair19.png', CAST(1750.00 AS Decimal(18, 2)), N'В производстве кресла используются только экологически чистые материалы.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (29, N'Bergen', N'img/armchair20.png', CAST(1800.00 AS Decimal(18, 2)), N'Мягкое кресло Bergen, производство фабрики Signal (Сигнал) Польша.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (30, N'Bruno', N'img/armchair21.png', CAST(1900.00 AS Decimal(18, 2)), N'Каркас кресла прочный и надежный.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (31, N'Leonar', N'img/armchair22.png', CAST(1750.00 AS Decimal(18, 2)), N'воплощает в себе оптимальное сочетание удобства и изысканного стиля.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (32, N'Arto', N'img/armchair23.png', CAST(2000.00 AS Decimal(18, 2)), N'Ножки кресла надежны и устойчивы, выполнен из дерева бука.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (33, N'Твист', N'img/armchair24.png', CAST(2300.00 AS Decimal(18, 2)), N'Элегантный дизайн, удобная посадка, эргономичная спинка.', 1)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (34, N'Калифорния', N'img/sofa10.png', CAST(4750.00 AS Decimal(18, 2)), N'С помощью современного механизма трансформации превращается в полноценную кровать, а также  имеет вместительный бельевой ящик..', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (35, N'Элвис', N'img/sofa11.png', CAST(7000.00 AS Decimal(18, 2)), N'Ниша, тисненый винил и вместительный бар подчеркнут ваши высокие стандарты стиля и комфорта.', 2)
INSERT [dbo].[Furnitures] ([Id], [Name], [Image], [Price], [Description], [Type_]) VALUES (36, N'Лаура', N'img/sofa12.png', CAST(8300.00 AS Decimal(18, 2)), N'диван для ежедневного сна с механизмом разложения Еврокнижка.', 2)
SET IDENTITY_INSERT [dbo].[Furnitures] OFF
SET IDENTITY_INSERT [dbo].[Likes] ON 

INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (1, N'guest', 2)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (2, N'karambol', 11)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (6, N'karambol', 6)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (7, N'karambol', 7)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (8, N'guest', 6)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (12, N'karambol', 10)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (18, N'karambol', 5)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (19, N'karambol', 1)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (22, N'kedrov', 15)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (23, N'kedrov', 25)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (24, N'kedrov', 7)
INSERT [dbo].[Likes] ([Id], [UserName], [IdFurn]) VALUES (25, N'kedrov', 9)
SET IDENTITY_INSERT [dbo].[Likes] OFF
SET IDENTITY_INSERT [dbo].[Promotions] ON 

INSERT [dbo].[Promotions] ([Id], [Description]) VALUES (1, N'При покупке дивана и кресла вы можете расчитывать на 15% скидку, до конца месяца')
INSERT [dbo].[Promotions] ([Id], [Description]) VALUES (2, N'При покупке дивана и двух кресел вы можете расчитывать на 20% скидку, до конца месяца')
SET IDENTITY_INSERT [dbo].[Promotions] OFF
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
USE [master]
GO
ALTER DATABASE [Armchair] SET  READ_WRITE 
GO
