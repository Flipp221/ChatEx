USE [ChatDemo]
GO
/****** Object:  Table [dbo].[ChatMessage]    Script Date: 11.03.2023 9:48:52 ******/
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
/****** Object:  Table [dbo].[Chatroom]    Script Date: 11.03.2023 9:48:52 ******/
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
/****** Object:  Table [dbo].[Department]    Script Date: 11.03.2023 9:48:52 ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 11.03.2023 9:48:52 ******/
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
/****** Object:  Table [dbo].[EmployeeChat]    Script Date: 11.03.2023 9:48:52 ******/
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

INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (37, 2, 1, CAST(N'2023-03-11T09:42:36.267' AS DateTime), N'222')
INSERT [dbo].[ChatMessage] ([Id_Chat], [Sender_Id], [Chatroom_Id], [Date], [Message]) VALUES (38, 1, 1, CAST(N'2023-03-11T09:43:29.307' AS DateTime), N'123')
SET IDENTITY_INSERT [dbo].[ChatMessage] OFF
GO
SET IDENTITY_INSERT [dbo].[Chatroom] ON 

INSERT [dbo].[Chatroom] ([Id_Chatroom], [Topic]) VALUES (1, N'Беседа чётких пацанов!')
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
INSERT [dbo].[EmployeeChat] ([Id], [Chatroom_Id], [Employee_Id]) VALUES (6, 1, 2)
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
