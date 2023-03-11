USE [ChatDemo]
GO
/****** Object:  Table [dbo].[ChatMessage]    Script Date: 10.03.2023 18:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChatMessage](
	[Id_Chat] [int] IDENTITY(1,1) NOT NULL,
	[Sender_Id] [int] NOT NULL,
	[Chatroom_Id] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_ChatMessage] PRIMARY KEY CLUSTERED 
(
	[Id_Chat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chatroom]    Script Date: 10.03.2023 18:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chatroom](
	[Id_Chatroom] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Chatroom] PRIMARY KEY CLUSTERED 
(
	[Id_Chatroom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10.03.2023 18:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id_Department] [int] IDENTITY(1,1) NOT NULL,
	[Name_Dapertment] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id_Department] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10.03.2023 18:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_Employee] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
	[Department_Id] [int] NOT NULL,
	[Username] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeChat]    Script Date: 10.03.2023 18:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeChat](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Chatroom_Id] [int] NOT NULL,
	[Employee_Id] [int] NOT NULL,
 CONSTRAINT [PK_EmployeeChat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChatMessage] ON 

INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (1, 1, 1, CAST(N'2023-03-07T00:00:00.000' AS DateTime), N'Hi')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (2, 2, 1, CAST(N'2023-03-07T00:00:00.000' AS DateTime), N'W')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (3, 1, 3, CAST(N'2023-02-08T00:00:00.000' AS DateTime), N'Лох')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (6, 2, 1, CAST(N'2023-03-08T15:06:38.827' AS DateTime), N'sss')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (19, 2, 1, CAST(N'2023-03-08T18:24:18.573' AS DateTime), N'Hi Kaban')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (20, 2, 3, CAST(N'2023-03-08T18:24:35.810' AS DateTime), N'kii')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (21, 1, 3, CAST(N'2023-03-08T18:26:21.930' AS DateTime), N'Dima loh')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (22, 1, 1, CAST(N'2023-03-08T18:26:45.780' AS DateTime), N'books')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (23, 1, 1, CAST(N'2023-03-10T18:03:09.767' AS DateTime), N'аа')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (24, 1, 1, CAST(N'2023-03-10T18:03:16.520' AS DateTime), N'2')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (25, 2, 1, CAST(N'2023-03-10T18:20:05.913' AS DateTime), N'123')
SET IDENTITY_INSERT [dbo].[ChatMessage] OFF
GO
SET IDENTITY_INSERT [dbo].[Chatroom] ON 

INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (1, N'Важное!!')
INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (3, N'О своём')
SET IDENTITY_INSERT [dbo].[Chatroom] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id_Department], [Name_Dapertment]) VALUES (1, N'Admin')
INSERT [dbo].[Department] ([Id_Department], [Name_Dapertment]) VALUES (2, N'IT Helpdesk')
INSERT [dbo].[Department] ([Id_Department], [Name_Dapertment]) VALUES (3, N'Sales')
INSERT [dbo].[Department] ([Id_Department], [Name_Dapertment]) VALUES (4, N'Marketing')
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id_Employee], [Name], [Department_Id], [Username], [Password]) VALUES (1, N'Филипп', 1, N'211901', N'1111')
INSERT [dbo].[Employee] ([Id_Employee], [Name], [Department_Id], [Username], [Password]) VALUES (2, N'Санёк', 2, N'211902', N'2222')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeChat] ON 

INSERT [dbo].[EmployeeChat] ([Id], [Chatroom_Id], [Employee_Id]) VALUES (1, 1, 1)
INSERT [dbo].[EmployeeChat] ([Id], [Chatroom_Id], [Employee_Id]) VALUES (2, 1, 2)
INSERT [dbo].[EmployeeChat] ([Id], [Chatroom_Id], [Employee_Id]) VALUES (4, 3, 1)
SET IDENTITY_INSERT [dbo].[EmployeeChat] OFF
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Chatroom] FOREIGN KEY([Chatroom_Id])
REFERENCES [dbo].[Chatroom] ([Id_Chatroom])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Chatroom]
GO
ALTER TABLE [dbo].[ChatMessage]  WITH CHECK ADD  CONSTRAINT [FK_ChatMessage_Employee] FOREIGN KEY([Sender_Id])
REFERENCES [dbo].[Employee] ([Id_Employee])
GO
ALTER TABLE [dbo].[ChatMessage] CHECK CONSTRAINT [FK_ChatMessage_Employee]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Department] ([Id_Department])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[EmployeeChat]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeChat_Chatroom] FOREIGN KEY([Chatroom_Id])
REFERENCES [dbo].[Chatroom] ([Id_Chatroom])
GO
ALTER TABLE [dbo].[EmployeeChat] CHECK CONSTRAINT [FK_EmployeeChat_Chatroom]
GO
ALTER TABLE [dbo].[EmployeeChat]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeChat_Employee] FOREIGN KEY([Employee_Id])
REFERENCES [dbo].[Employee] ([Id_Employee])
GO
ALTER TABLE [dbo].[EmployeeChat] CHECK CONSTRAINT [FK_EmployeeChat_Employee]
GO
