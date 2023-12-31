USE [dbTest]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [varchar](10) NULL,
	[CountryId] [int] NULL,
	[Status] [bit] NULL,
	[orderby] [int] NULL,
 CONSTRAINT [PK_CityId] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[orderby] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[id] [int] NULL,
	[num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scores]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scores](
	[ID] [int] NULL,
	[score] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test1]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[num] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2023/10/24 下午 05:29:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[age] [int] NULL,
	[sex] [tinyint] NULL,
	[CountryId] [varchar](50) NULL,
	[CityId] [varchar](50) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1, N'廣州', 1, 1, 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (2, N'深圳', 1, 1, 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (3, N'珠海', 1, 1, 3)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1002, N'小南', 2, 1, 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1003, N'小西', 2, 1, 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1004, N'小東', 2, 1, 3)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1005, N'海南', 3, 1, 1)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1006, N'海西', 3, 1, 2)
INSERT [dbo].[City] ([CityId], [CityName], [CountryId], [Status], [orderby]) VALUES (1007, N'海東', 3, 1, 3)
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 

INSERT [dbo].[Country] ([CountryId], [CountryName], [Status], [orderby]) VALUES (1, N'廣東', N'1', 1)
INSERT [dbo].[Country] ([CountryId], [CountryName], [Status], [orderby]) VALUES (2, N'深圳', N'1', 2)
INSERT [dbo].[Country] ([CountryId], [CountryName], [Status], [orderby]) VALUES (3, N'上海', N'1', 2)
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
INSERT [dbo].[Logs] ([id], [num]) VALUES (1, 1)
INSERT [dbo].[Logs] ([id], [num]) VALUES (2, 1)
INSERT [dbo].[Logs] ([id], [num]) VALUES (3, 1)
INSERT [dbo].[Logs] ([id], [num]) VALUES (4, 2)
INSERT [dbo].[Logs] ([id], [num]) VALUES (5, 1)
INSERT [dbo].[Logs] ([id], [num]) VALUES (6, 2)
INSERT [dbo].[Logs] ([id], [num]) VALUES (7, 2)
INSERT [dbo].[Logs] ([id], [num]) VALUES (8, 11)
INSERT [dbo].[Logs] ([id], [num]) VALUES (9, 11)
INSERT [dbo].[Logs] ([id], [num]) VALUES (10, 11)
INSERT [dbo].[Logs] ([id], [num]) VALUES (11, 12)
INSERT [dbo].[Logs] ([id], [num]) VALUES (11, 13)
GO
INSERT [dbo].[Scores] ([ID], [score]) VALUES (1, CAST(3.50 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (2, CAST(3.65 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (3, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (4, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (5, CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (6, CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (7, CAST(3.85 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (8, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (9, CAST(4.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (10, CAST(8.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (11, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (12, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (13, CAST(3.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (14, CAST(3.65 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (15, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (16, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (17, CAST(5.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (18, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (19, CAST(6.00 AS Decimal(18, 2)))
INSERT [dbo].[Scores] ([ID], [score]) VALUES (20, CAST(7.00 AS Decimal(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[test1] ON 

INSERT [dbo].[test1] ([id], [num]) VALUES (1, 1)
INSERT [dbo].[test1] ([id], [num]) VALUES (2, 1)
INSERT [dbo].[test1] ([id], [num]) VALUES (3, 1)
INSERT [dbo].[test1] ([id], [num]) VALUES (4, 2)
INSERT [dbo].[test1] ([id], [num]) VALUES (5, 1)
INSERT [dbo].[test1] ([id], [num]) VALUES (6, 2)
INSERT [dbo].[test1] ([id], [num]) VALUES (7, 2)
SET IDENTITY_INSERT [dbo].[test1] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [UserName], [age], [sex], [CountryId], [CityId]) VALUES (1, N'sam', 25, 1, N'1', N'1')
INSERT [dbo].[User] ([UserId], [UserName], [age], [sex], [CountryId], [CityId]) VALUES (2, N'ken', 32, 1, N'1', N'2')
INSERT [dbo].[User] ([UserId], [UserName], [age], [sex], [CountryId], [CityId]) VALUES (3, N'jake', 55, 1, N'2', N'2')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
