USE [Zakaz_Project_Khasanov_Nurshayakhova]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id_Employee] [int] NOT NULL,
	[FName] [nvarchar](20) NULL,
	[LName] [nvarchar](50) NULL,
	[Number_otdel] [int] NOT NULL,
	[Kod_position] [int] NOT NULL,
	[Oklad] [decimal](7, 2) NOT NULL,
	[Nadbavka] [decimal](6, 2) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id_Employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klient]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klient](
	[Kod_klient] [int] NOT NULL,
	[Name_klient] [nvarchar](50) NULL,
 CONSTRAINT [PK_Klient] PRIMARY KEY CLUSTERED 
(
	[Kod_klient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Otdel]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Otdel](
	[Number_otdel] [int] NOT NULL,
	[Name_otdel] [varchar](40) NULL,
	[Phone] [char](12) NULL,
 CONSTRAINT [PK_Otdel] PRIMARY KEY CLUSTERED 
(
	[Number_otdel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Kod_position] [int] NOT NULL,
	[Name_position] [nvarchar](20) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Kod_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[Number_Project] [int] NOT NULL,
	[Name_Project] [nvarchar](50) NULL,
	[Price_Project] [decimal](8, 0) NULL,
	[Kod_klient] [int] NOT NULL,
	[Begin_Project] [date] NULL,
	[End_Project] [date] NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Number_Project] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Project_execution]    Script Date: 28.04.2022 13:10:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project_execution](
	[Id_contract] [int] NOT NULL,
	[Id_employee] [int] NOT NULL,
	[Number_Project] [int] NOT NULL,
	[Quantity_day] [int] NULL,
	[Amount] [decimal](7, 2) NULL,
 CONSTRAINT [PK_Project_execution] PRIMARY KEY CLUSTERED 
(
	[Id_contract] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (401, N'Иванова', N'Ксения', 1001, 100101, CAST(20000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (402, N'Чумаков', N'Евгений', 1001, 100102, CAST(22000.00 AS Decimal(7, 2)), CAST(2500.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (403, N'Красиков', N'Михаил', 1002, 100201, CAST(24000.00 AS Decimal(7, 2)), CAST(3000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (404, N'Крынкина', N'Аграфена', 1002, 100602, CAST(30000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (405, N'Султанов', N'Амир', 1002, 100202, CAST(30000.00 AS Decimal(7, 2)), CAST(2700.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (406, N'Троицкий', N'Игорь', 1002, 100203, CAST(20000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (407, N'Сухой', N'Олег', 1002, 100203, CAST(25000.00 AS Decimal(7, 2)), CAST(3000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (408, N'Зайцева', N'Татьяна', 1002, 100204, CAST(34000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (409, N'Стрункин', N'Андрей', 1003, 100301, CAST(35000.00 AS Decimal(7, 2)), CAST(2900.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (410, N'Лисицин', N'Петр', 1003, 100301, CAST(35000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (411, N'Отрепьев', N'Евдоким', 1003, 100602, CAST(26000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (412, N'Аннушкин', N'Евлампий', 1003, 100302, CAST(26000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (413, N'Браткин', N'Павел', 1003, 100302, CAST(20000.00 AS Decimal(7, 2)), CAST(3000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (414, N'Субботина ', N'Анна', 1004, 100401, CAST(45000.00 AS Decimal(7, 2)), CAST(2200.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (415, N'Павлов', N'Антон', 1004, 100402, CAST(40000.00 AS Decimal(7, 2)), CAST(3000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (416, N'Семакин', N'Дмитрий', 1005, 100501, CAST(40000.00 AS Decimal(7, 2)), CAST(3200.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (417, N'Зарубина', N'Ольга', 1005, 100501, CAST(35000.00 AS Decimal(7, 2)), CAST(3500.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (418, N'Билан', N'Дмитрий', 1005, 100502, CAST(35000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (419, N'Захарова', N'Светлана', 1006, 100601, CAST(36000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (420, N'Примочкина', N'Евдокия', 1006, 100602, CAST(37000.00 AS Decimal(7, 2)), CAST(3800.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (421, N'Савушкин', N'Айрат', 1006, 100603, CAST(42000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (422, N'Брунов', N'Роман', 1006, 100603, CAST(41000.00 AS Decimal(7, 2)), CAST(2000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (423, N'Громушкин', N'Алексей', 1006, 100604, CAST(56000.00 AS Decimal(7, 2)), CAST(5000.00 AS Decimal(6, 2)))
INSERT [dbo].[Employee] ([Id_Employee], [FName], [LName], [Number_otdel], [Kod_position], [Oklad], [Nadbavka]) VALUES (424, N'Грамушкина', N'Аглая', 1006, 100604, CAST(59000.00 AS Decimal(7, 2)), CAST(6000.00 AS Decimal(6, 2)))
INSERT [dbo].[Klient] ([Kod_klient], [Name_klient]) VALUES (2001, N'АО «Спартак»')
INSERT [dbo].[Klient] ([Kod_klient], [Name_klient]) VALUES (2002, N'ЗАО «ЗУК»')
INSERT [dbo].[Klient] ([Kod_klient], [Name_klient]) VALUES (2003, N'ООО «РУМБА»')
INSERT [dbo].[Klient] ([Kod_klient], [Name_klient]) VALUES (2004, N'ЧП «Сальца»')
INSERT [dbo].[Klient] ([Kod_klient], [Name_klient]) VALUES (2005, N'ЗАО «Степ»')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1001, N'Экономический отдел', N'(843)2723508')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1002, N'ИТ-отдел', N'(843)2733509')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1003, N'Мастерская', N'(843)2733510')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1004, N'Отдел маркетинга', N'(843)2713528')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1005, N'Типография', N'(843)2733538')
INSERT [dbo].[Otdel] ([Number_otdel], [Name_otdel], [Phone]) VALUES (1006, N'Отдел проектирования', N'(843)2733548')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100101, N'Экономист')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100102, N'Бухгалтер')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100201, N'Стажер')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100202, N'Программист')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100203, N'Тестировщик')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100204, N'Админ. приложения')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100301, N'Мастер')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100302, N'Техник')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100401, N'Маркетолог')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100402, N'Снабженец')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100501, N'Верстальщик')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100502, N'Технический писатель')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100601, N'Администратор БД')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100602, N'Аналитик')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100603, N'Проектировщик')
INSERT [dbo].[Position] ([Kod_position], [Name_position]) VALUES (100604, N'Руководитель проекта')
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (301, N'Звезда Востока', CAST(100000 AS Decimal(8, 0)), 2001, CAST(N'2019-02-01' AS Date), CAST(N'2020-12-31' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (302, N'Каламбур', CAST(350000 AS Decimal(8, 0)), 2002, CAST(N'2019-01-12' AS Date), CAST(N'2019-04-30' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (303, N'Колледж', CAST(500000 AS Decimal(8, 0)), 2001, CAST(N'2018-10-17' AS Date), CAST(N'2019-12-31' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (304, N'Затейник', CAST(200000 AS Decimal(8, 0)), 2003, CAST(N'2020-01-01' AS Date), CAST(N'2021-12-31' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (305, N'Детские игры', CAST(300000 AS Decimal(8, 0)), 2002, CAST(N'2019-12-20' AS Date), CAST(N'2021-12-20' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (306, N'Танцуй с нами', CAST(400000 AS Decimal(8, 0)), 2002, CAST(N'2019-08-01' AS Date), CAST(N'2020-05-31' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (307, N'Бюджет семьи', CAST(200000 AS Decimal(8, 0)), 2004, CAST(N'2019-10-01' AS Date), CAST(N'2021-09-20' AS Date))
INSERT [dbo].[Project] ([Number_Project], [Name_Project], [Price_Project], [Kod_klient], [Begin_Project], [End_Project]) VALUES (308, N'Сидим дома', CAST(200000 AS Decimal(8, 0)), 2002, CAST(N'2018-03-30' AS Date), CAST(N'2020-09-20' AS Date))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (501, 401, 301, 40, CAST(10000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (502, 403, 302, 20, CAST(80000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (503, 404, 301, 53, CAST(75000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (504, 401, 303, 17, CAST(12000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (505, 405, 301, 19, CAST(90000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (506, 406, 306, 23, CAST(45000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (507, 402, 307, 25, CAST(46000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (508, 405, 302, 27, CAST(50000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (509, 407, 307, 24, CAST(54000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (510, 409, 308, 18, CAST(60000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (511, 402, 305, 60, CAST(70000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (512, 408, 302, 98, CAST(73000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (513, 410, 306, 101, CAST(20000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (514, 423, 308, 78, CAST(11000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (515, 403, 304, 15, CAST(80000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (516, 408, 307, 38, CAST(50000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (517, 407, 308, 45, CAST(60000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (518, 423, 305, 67, CAST(30000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (519, 424, 306, 76, CAST(75000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (520, 411, 306, 89, CAST(65000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (521, 415, 307, 91, CAST(45000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (522, 413, 301, 41, CAST(26000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (523, 416, 306, 31, CAST(34000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (524, 413, 304, 14, CAST(19000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (525, 420, 307, 18, CAST(45000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (526, 415, 303, 45, CAST(60000.00 AS Decimal(7, 2)))
INSERT [dbo].[Project_execution] ([Id_contract], [Id_employee], [Number_Project], [Quantity_day], [Amount]) VALUES (527, 416, 301, 67, CAST(45000.00 AS Decimal(7, 2)))
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Otdel] FOREIGN KEY([Number_otdel])
REFERENCES [dbo].[Otdel] ([Number_otdel])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Otdel]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([Kod_position])
REFERENCES [dbo].[Position] ([Kod_position])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
ALTER TABLE [dbo].[Project]  WITH CHECK ADD  CONSTRAINT [FK_Project_Klient] FOREIGN KEY([Kod_klient])
REFERENCES [dbo].[Klient] ([Kod_klient])
GO
ALTER TABLE [dbo].[Project] CHECK CONSTRAINT [FK_Project_Klient]
GO
ALTER TABLE [dbo].[Project_execution]  WITH CHECK ADD  CONSTRAINT [FK_Project_execution_Employee] FOREIGN KEY([Id_employee])
REFERENCES [dbo].[Employee] ([Id_Employee])
GO
ALTER TABLE [dbo].[Project_execution] CHECK CONSTRAINT [FK_Project_execution_Employee]
GO
ALTER TABLE [dbo].[Project_execution]  WITH CHECK ADD  CONSTRAINT [FK_Project_execution_Project] FOREIGN KEY([Number_Project])
REFERENCES [dbo].[Project] ([Number_Project])
GO
ALTER TABLE [dbo].[Project_execution] CHECK CONSTRAINT [FK_Project_execution_Project]
GO
