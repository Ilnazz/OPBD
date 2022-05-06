USE [Zakaz_Project_Khasanov_Nurshayakhova]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06.05.2022 13:16:29 ******/
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
/****** Object:  Table [dbo].[Klient]    Script Date: 06.05.2022 13:16:29 ******/
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
/****** Object:  Table [dbo].[Otdel]    Script Date: 06.05.2022 13:16:29 ******/
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
/****** Object:  Table [dbo].[Position]    Script Date: 06.05.2022 13:16:29 ******/
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
/****** Object:  Table [dbo].[Project]    Script Date: 06.05.2022 13:16:29 ******/
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
/****** Object:  Table [dbo].[Project_execution]    Script Date: 06.05.2022 13:16:29 ******/
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
