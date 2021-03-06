USE [College]
GO
/****** Object:  Table [dbo].[Discipline]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discipline](
	[ID_Discipline] [int] NOT NULL,
	[Name_Discipline] [nvarchar](255) NULL,
 CONSTRAINT [PK_Discipline] PRIMARY KEY CLUSTERED 
(
	[ID_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID_Group] [int] NOT NULL,
	[ID_Speciality] [int] NOT NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID_Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Speciality]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Speciality](
	[ID_Speciality] [int] NOT NULL,
	[Name_Speciality] [nvarchar](255) NULL,
 CONSTRAINT [PK_Speciality] PRIMARY KEY CLUSTERED 
(
	[ID_Speciality] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_Student] [int] NOT NULL,
	[LName] [nvarchar](30) NULL,
	[FName] [nvarchar](30) NULL,
	[Patronymic] [nvarchar](30) NULL,
	[ID_Group] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Study_Plan]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Study_Plan](
	[ID_Group] [int] NOT NULL,
	[ID_Discipline] [int] NOT NULL,
	[Number_Hours] [int] NULL,
 CONSTRAINT [PK_Study_Plan] PRIMARY KEY CLUSTERED 
(
	[ID_Group] ASC,
	[ID_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID_Teacher] [int] NOT NULL,
	[LName] [nvarchar](30) NULL,
	[FName] [nvarchar](30) NULL,
	[Patronymic] [nvarchar](30) NULL,
	[Salary] [decimal](8, 2) NULL,
	[Work_Experience] [decimal](3, 1) NULL,
	[Birth_Date] [date] NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[ID_Teacher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teacher_Discipline]    Script Date: 16.06.2022 13:14:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher_Discipline](
	[ID_Teacher] [int] NOT NULL,
	[ID_Discipline] [int] NOT NULL,
 CONSTRAINT [PK_Teacher_Discipline] PRIMARY KEY CLUSTERED 
(
	[ID_Teacher] ASC,
	[ID_Discipline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (301, N'Психология общения')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (302, N'Информационные технологии')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (303, N'Элементы высшей математики')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (304, N'История')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (305, N'Введение в специальность')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (306, N'Основы алгоритмизации и программирования')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (307, N'Введение в конфигурирование и программирование на платформе 1С')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (308, N'Иностранный язык')
INSERT [dbo].[Discipline] ([ID_Discipline], [Name_Discipline]) VALUES (309, N'Компьютерные сети')
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (101, 1)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (102, 2)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (103, 3)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (104, 1)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (105, 2)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (106, 3)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (107, 1)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (108, 2)
INSERT [dbo].[Group] ([ID_Group], [ID_Speciality]) VALUES (109, 3)
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (1, N'СИС')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (2, N'КСК')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (3, N'ВЕБ')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (4, N'МТС')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (5, N'АБД')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (6, N'ИСС')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (7, N'СИСА')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (8, N'П')
INSERT [dbo].[Speciality] ([ID_Speciality], [Name_Speciality]) VALUES (9, N'ОИБАС')
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (201, N'Серпухов', N'Виктор', N'Кузьмич', 101)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (202, N'Батталова', N'Анастасия', N'Юрьевна', 101)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (203, N'Кириллов', N'Валентин', N'Владиславович', 101)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (204, N'Игнатьев', N'Антон', N'Григорьевич', 102)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (205, N'Павлова', N'Юлия', N'Константиновна', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (206, N'Богданов', N'Николай', N'Филиппович', 102)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (207, N'Герасимов', N'Вячеслав', N'Емельянович', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (208, N'Лебедева', N'Виктория', N'Михайловна', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (209, N'Гусева', N'Ксения', N'Фомина', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (210, N'Соловьева', N'Виктория', N'Даниловна', 104)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (211, N'Дорофьева', N'Полина', N'Константиновна', 104)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (212, N'Семёнова', N'Эмилия', N'Алиевна', 104)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (213, N'Воронцова', N'Милана', N'Матвеевна', 105)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (214, N'Лукьянова', N'Кристина', N'Тимофеевна', 105)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (215, N'Романова', N'Виктория', N'Александровна', 105)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (216, N'Максимова', N'Ева', N'Александровна', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (217, N'Иванова', N'Виктория', N'Дмитриевна', 106)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (218, N'Бобров', N'Руслан', N'Романович', 106)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (219, N'Филиппов', N'Роман', N'Ильич', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (220, N'Дмитриева', N'Маргарита', N'Всеволодовна', 107)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (221, N'Соболева', N'Надежда', N'Владимировна', 107)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (222, N'Савельев', N'Павел', N'Романович', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (223, N'Шишкин', N'Егор', N'Глебович', 108)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (224, N'Борисова', N'Екатерина', N'Александровна', 108)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (225, N'Баранова', N'София', N'Ильинична', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (226, N'Воронова', N'Александра', N'Марковна', NULL)
INSERT [dbo].[Student] ([ID_Student], [LName], [FName], [Patronymic], [ID_Group]) VALUES (227, N'Петрова', N'Вера', N'Романовна', NULL)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (101, 301, 100)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (101, 305, 90)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (102, 303, 80)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (102, 304, 70)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (103, 301, 90)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (103, 305, 80)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (104, 307, 110)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (104, 308, 120)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (105, 301, 100)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (105, 309, 130)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (106, 301, 80)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (106, 302, 90)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (107, 304, 70)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (107, 305, 120)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (108, 305, 110)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (108, 307, 100)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (109, 301, 95)
INSERT [dbo].[Study_Plan] ([ID_Group], [ID_Discipline], [Number_Hours]) VALUES (109, 308, 105)
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (401, N'Долгова', N'Фарида', N'Рахимовна', CAST(60000.00 AS Decimal(8, 2)), CAST(5.0 AS Decimal(3, 1)), CAST(N'1990-10-23' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (402, N'Минина', N'Дарья', N'Дмитриевна', CAST(65000.00 AS Decimal(8, 2)), CAST(10.0 AS Decimal(3, 1)), NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (403, N'Ахтамова', N'Елена', N'Арсеньевна', CAST(55000.00 AS Decimal(8, 2)), NULL, CAST(N'1980-01-31' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (404, N'Цветкова', N'Мария', N'Дмитриевна', CAST(70000.00 AS Decimal(8, 2)), CAST(5.0 AS Decimal(3, 1)), CAST(N'1975-06-22' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (405, N'Плетнева', N'Софья', N'Даниловна', CAST(75000.00 AS Decimal(8, 2)), CAST(4.0 AS Decimal(3, 1)), CAST(N'1988-07-18' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (406, N'Гараева', N'Инесса', N'Петровна', CAST(80000.00 AS Decimal(8, 2)), CAST(4.0 AS Decimal(3, 1)), NULL)
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (407, N'Мазепа', N'Иван', N'Степанович', NULL, CAST(4.0 AS Decimal(3, 1)), CAST(N'1999-05-08' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (408, N'Леонтьевич', N'Василий', N'Кочубей', CAST(70000.00 AS Decimal(8, 2)), NULL, CAST(N'1985-03-05' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (409, N'Искра', N'Иван', N'Иванович', CAST(75000.00 AS Decimal(8, 2)), CAST(5.0 AS Decimal(3, 1)), CAST(N'2000-02-01' AS Date))
INSERT [dbo].[Teacher] ([ID_Teacher], [LName], [FName], [Patronymic], [Salary], [Work_Experience], [Birth_Date]) VALUES (410, N'Даддалов', N'Антон', N'Евгеньевич', NULL, CAST(5.0 AS Decimal(3, 1)), NULL)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (401, 301)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (401, 302)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (401, 309)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (402, 304)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (402, 305)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (402, 306)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (403, 307)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (403, 308)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (403, 309)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (404, 301)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (404, 303)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (404, 304)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (405, 304)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (405, 306)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (405, 307)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (406, 307)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (406, 308)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (406, 309)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (407, 301)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (407, 303)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (407, 309)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (408, 302)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (408, 306)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (408, 308)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (409, 301)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (409, 307)
INSERT [dbo].[Teacher_Discipline] ([ID_Teacher], [ID_Discipline]) VALUES (409, 308)
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Speciality1] FOREIGN KEY([ID_Speciality])
REFERENCES [dbo].[Speciality] ([ID_Speciality])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Speciality1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group1] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Group1]
GO
ALTER TABLE [dbo].[Study_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Study_Plan_Discipline1] FOREIGN KEY([ID_Discipline])
REFERENCES [dbo].[Discipline] ([ID_Discipline])
GO
ALTER TABLE [dbo].[Study_Plan] CHECK CONSTRAINT [FK_Study_Plan_Discipline1]
GO
ALTER TABLE [dbo].[Study_Plan]  WITH CHECK ADD  CONSTRAINT [FK_Study_Plan_Group] FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Study_Plan] CHECK CONSTRAINT [FK_Study_Plan_Group]
GO
ALTER TABLE [dbo].[Teacher_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Discipline_Discipline1] FOREIGN KEY([ID_Discipline])
REFERENCES [dbo].[Discipline] ([ID_Discipline])
GO
ALTER TABLE [dbo].[Teacher_Discipline] CHECK CONSTRAINT [FK_Teacher_Discipline_Discipline1]
GO
ALTER TABLE [dbo].[Teacher_Discipline]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_Discipline_Teacher] FOREIGN KEY([ID_Teacher])
REFERENCES [dbo].[Teacher] ([ID_Teacher])
GO
ALTER TABLE [dbo].[Teacher_Discipline] CHECK CONSTRAINT [FK_Teacher_Discipline_Teacher]
GO
