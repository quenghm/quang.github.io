USE [MotelManagement]
GO
/****** Object:  Table [dbo].[Announcement]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcement](
	[aid] [int] NOT NULL,
	[title] [nvarchar](200) NULL,
	[content] [nvarchar](2000) NULL,
	[time] [date] NULL,
 CONSTRAINT [PK_Announcement] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contract]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contract](
	[cid] [int] NOT NULL,
	[from] [date] NULL,
	[to] [date] NULL,
 CONSTRAINT [PK_Contract] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagerAccount]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagerAccount](
	[id] [int] NOT NULL,
	[username] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
 CONSTRAINT [PK_ManagerAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parent]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent](
	[pid] [int] NOT NULL,
	[pname] [nvarchar](150) NULL,
	[phonnumber] [nvarchar](50) NULL,
 CONSTRAINT [PK_Parent] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[reid] [int] NULL,
	[title] [nvarchar](50) NULL,
	[content] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[rid] [int] NOT NULL,
	[price] [int] NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[sid] [int] NOT NULL,
	[sname] [nvarchar](150) NULL,
	[gender] [bit] NULL,
	[idcard] [nvarchar](50) NULL,
	[phonnumber] [nvarchar](50) NULL,
	[email] [nvarchar](150) NULL,
	[grade] [int] NULL,
	[address] [nvarchar](150) NULL,
	[pid] [int] NULL,
	[rid] [int] NULL,
	[bid] [int] NULL,
	[cid] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentAccount]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentAccount](
	[id] [int] NOT NULL,
	[username] [nvarchar](150) NULL,
	[password] [nvarchar](150) NULL,
	[sid] [int] NULL,
 CONSTRAINT [PK_StudentAccount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentBill]    Script Date: 3/20/2022 8:55:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentBill](
	[bid] [int] NOT NULL,
	[month] [int] NULL,
	[electric] [float] NULL,
	[water] [float] NULL,
	[reduce] [float] NULL,
	[rid] [int] NULL,
 CONSTRAINT [PK_StudentBill] PRIMARY KEY CLUSTERED 
(
	[bid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Announcement] ([aid], [title], [content], [time]) VALUES (0, N'test title', N'first announcement', CAST(N'2021-09-01' AS Date))
INSERT [dbo].[Announcement] ([aid], [title], [content], [time]) VALUES (1, N'Electric Bill', N'Students are required to pay their electricity bills by the 14th', CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Announcement] ([aid], [title], [content], [time]) VALUES (2, N'Water Bill', N'Students are required to pay their electricity bills by the 11th', CAST(N'2022-03-01' AS Date))
INSERT [dbo].[Announcement] ([aid], [title], [content], [time]) VALUES (3, N'Clear grass', N'Students proceed to clear the grass around the motel', CAST(N'2022-03-20' AS Date))
GO
INSERT [dbo].[Contract] ([cid], [from], [to]) VALUES (1, CAST(N'2022-01-01' AS Date), CAST(N'2022-01-10' AS Date))
GO
INSERT [dbo].[ManagerAccount] ([id], [username], [password]) VALUES (1, N'manager', N'12345')
GO
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (1, N'testparent', N'3333')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (2, N'Lường Thị Phúng', N'0368478710')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (3, N'Tòng Văn Định', N'0374534809')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (4, N'Lường Văn Mừng', N'0342023512')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (5, N'Tòng Văn xuân', N'0396572522')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (6, N'Lường Văn Mừng', N'0342023512')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (7, N'Hà Văn Đêm', N'0852243839')
INSERT [dbo].[Parent] ([pid], [pname], [phonnumber]) VALUES (8, N'Lường Văn Hoa', N'0855779897')
GO
INSERT [dbo].[Report] ([reid], [title], [content]) VALUES (1, N'123', N' 345')
GO
INSERT [dbo].[Room] ([rid], [price]) VALUES (1, 300)
INSERT [dbo].[Room] ([rid], [price]) VALUES (2, 150)
INSERT [dbo].[Room] ([rid], [price]) VALUES (3, 150)
INSERT [dbo].[Room] ([rid], [price]) VALUES (4, 150)
INSERT [dbo].[Room] ([rid], [price]) VALUES (5, 150)
INSERT [dbo].[Room] ([rid], [price]) VALUES (6, 150)
INSERT [dbo].[Room] ([rid], [price]) VALUES (7, 300)
INSERT [dbo].[Room] ([rid], [price]) VALUES (8, 150)
GO
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (1, N't6', 0, N'888', N'123456787', N'new', 14, N'vn', 1, 1, 1, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (2, N'Lò Thị Ôn', 0, N'014305999299', N'0375482515', N'lothion879@gmail.com', 11, N'Pha Khinh - Quỳnh Nhai - Sơn La', 2, 6, 2, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (3, N'Tòng Thị Thủ', 0, N'014304013775', N'0379357302', N'tongthu699@gmail.com', 12, N'Pha Khinh - Quỳnh Nhai - Sơn La', 3, 7, 3, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (4, N'Lường Văn Dũng', 1, N'014206003732', N'0395722884', N'luongvandung599@gmail.com', 10, N'Pha Khinh - Quỳnh Nhai - Sơn La', 4, 1, 4, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (5, N'Tòng thị Yến', 0, N'014304000568', N'0868960641', N'tongthiyen04@gmail.com', 12, N'Pha Khinh - Quỳnh Nhai - Sơn La', 5, 7, 5, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (6, N'Lường Thị Ái', 0, N'014304000529', N'0328651643', N'aithiluong04@gmail.com', 12, N'Pha Khinh - Quỳnh Nhai - Sơn La', 4, 1, 6, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (7, N'Hà Thị May', 0, N'014304000293', N'0824025146', N'mayh2778@gmail.com', 12, N'Pha Khinh - Quỳnh Nhai - Sơn La', 6, 4, 7, 1)
INSERT [dbo].[Student] ([sid], [sname], [gender], [idcard], [phonnumber], [email], [grade], [address], [pid], [rid], [bid], [cid]) VALUES (8, N'Lường Thị Nga', NULL, N'014305000363', N'0338723270', N'lunga363@gmail.com', 11, N'Pha Khinh - Quỳnh Nhai - Sơn La', 7, 6, 8, 1)
GO
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (1, N'test', N'123', 1)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (2, N'onlt', N'123', 2)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (3, N'thutt', N'123', 3)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (4, N'dunglv', N'123', 4)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (5, N'yentt', N'123', 5)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (6, N'ailt', N'123', 6)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (7, N'mayht', N'123', 7)
INSERT [dbo].[StudentAccount] ([id], [username], [password], [sid]) VALUES (8, N'ngalt', N'123', 8)
GO
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (1, 1, 2, 3, 0, NULL)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (2, 1, 33.468, 35.35, 0, 6)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (3, 1, 33.468, 35.35, 0, 7)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (4, 1, 33.468, 35.35, 0, 1)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (5, 1, 33.468, 35.35, 0, 7)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (6, 1, 33.468, 35.35, 0, 1)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (7, 1, 33.468, 35.35, 0, 4)
INSERT [dbo].[StudentBill] ([bid], [month], [electric], [water], [reduce], [rid]) VALUES (8, 1, 33.468, 35.35, 0, 6)
GO
