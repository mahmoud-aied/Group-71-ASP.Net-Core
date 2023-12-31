USE [master]
GO
/****** Object:  Database [vehiclesDB]    Script Date: 27-Jun-23 1:53:51 AM ******/
CREATE DATABASE [vehiclesDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vehiclesDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\vehiclesDB.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'vehiclesDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\vehiclesDB_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [vehiclesDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vehiclesDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vehiclesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vehiclesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vehiclesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vehiclesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vehiclesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [vehiclesDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [vehiclesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vehiclesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vehiclesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vehiclesDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vehiclesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vehiclesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vehiclesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vehiclesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vehiclesDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [vehiclesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vehiclesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vehiclesDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vehiclesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vehiclesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vehiclesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vehiclesDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vehiclesDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vehiclesDB] SET  MULTI_USER 
GO
ALTER DATABASE [vehiclesDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vehiclesDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vehiclesDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vehiclesDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [vehiclesDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [vehiclesDB]
GO
/****** Object:  Schema [fov]    Script Date: 27-Jun-23 1:53:51 AM ******/
CREATE SCHEMA [fov]
GO
/****** Object:  Table [dbo].[vehicleColours]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleColours](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ColourName] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleDetails]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[YearOfManufacture] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CurrentMileage] [float] NOT NULL CONSTRAINT [DF_VehicleDetails_CurrentMileage]  DEFAULT ((0)),
	[Model_ID] [int] NULL,
	[FuelType_ID] [int] NULL,
	[Colour_ID] [int] NULL,
 CONSTRAINT [PK_VehicleDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vehicleFeatures]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleFeatures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Features] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vehicleFuelType]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleFuelType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FuelType] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vehicleManufactures]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleManufactures](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Mf_Name] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vehicleModels]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehicleModels](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [nvarchar](200) NULL,
	[ManufacturerID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [fov].[FeaturesOfVehicle]    Script Date: 27-Jun-23 1:53:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [fov].[FeaturesOfVehicle](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_ID] [int] NULL,
	[Feature_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[vehicleColours] ON 

INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (1, N'red')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (2, N'blue')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (3, N'orange')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (4, N'white')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (5, N'black')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (6, N'green')
INSERT [dbo].[vehicleColours] ([id], [ColourName]) VALUES (7, N'pink')
SET IDENTITY_INSERT [dbo].[vehicleColours] OFF
SET IDENTITY_INSERT [dbo].[VehicleDetails] ON 

INSERT [dbo].[VehicleDetails] ([id], [YearOfManufacture], [Price], [CurrentMileage], [Model_ID], [FuelType_ID], [Colour_ID]) VALUES (1, N'2014', 500000, 0, 1, 2, 3)
INSERT [dbo].[VehicleDetails] ([id], [YearOfManufacture], [Price], [CurrentMileage], [Model_ID], [FuelType_ID], [Colour_ID]) VALUES (2, N'2020', 100000, 0, 2, 1, 4)
INSERT [dbo].[VehicleDetails] ([id], [YearOfManufacture], [Price], [CurrentMileage], [Model_ID], [FuelType_ID], [Colour_ID]) VALUES (3, N'2023', 300000, 0, 3, 3, 3)
INSERT [dbo].[VehicleDetails] ([id], [YearOfManufacture], [Price], [CurrentMileage], [Model_ID], [FuelType_ID], [Colour_ID]) VALUES (4, N'2010', 230000, 0, 1, 2, 4)
INSERT [dbo].[VehicleDetails] ([id], [YearOfManufacture], [Price], [CurrentMileage], [Model_ID], [FuelType_ID], [Colour_ID]) VALUES (5, N'2022', 1200000, 0, 10, 4, 3)
SET IDENTITY_INSERT [dbo].[VehicleDetails] OFF
SET IDENTITY_INSERT [dbo].[vehicleFeatures] ON 

INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (1, N'Air Conditioning')
INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (2, N'Alloy Wheels')
INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (3, N'CD Player')
INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (4, N'Electric Windows')
INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (5, N'Auto')
INSERT [dbo].[vehicleFeatures] ([id], [Features]) VALUES (6, N'Manual')
SET IDENTITY_INSERT [dbo].[vehicleFeatures] OFF
SET IDENTITY_INSERT [dbo].[vehicleFuelType] ON 

INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (1, N'Diesel')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (2, N'Gasoline')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (3, N'Ethanol')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (4, N'BioDiesel')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (5, N'Propane')
SET IDENTITY_INSERT [dbo].[vehicleFuelType] OFF
SET IDENTITY_INSERT [dbo].[vehicleManufactures] ON 

INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (1, N'VW')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (2, N'Toyota')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (3, N'Nissan')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (4, N'Stellantis')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (5, N'Hyundai Kia')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (6, N'Ford')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (7, N'Honda')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (8, N'Tesla')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (9, N'Suzuki')
INSERT [dbo].[vehicleManufactures] ([id], [Mf_Name]) VALUES (10, N'Mercedes-Benz')
SET IDENTITY_INSERT [dbo].[vehicleManufactures] OFF
SET IDENTITY_INSERT [dbo].[vehicleModels] ON 

INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (1, N'JETTA', 1)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (2, N'VW', 1)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (3, N'Porsche', 1)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (4, N'Lexus', 2)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (5, N'Toyota', 2)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (6, N'Nissan', 3)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (7, N'LADA (2015-)', 3)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (8, N'Infiniti', 3)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (9, N'Alpine', 3)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (10, N'Fiat (2021-)', 4)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (11, N'Kia', 5)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (12, N'Hyundai', 5)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (13, N'Lincoln', 6)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (14, N'Honda', 7)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (15, N'Tesla', 8)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (16, N'Suzuki', 9)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (17, N'Mercedes-Benz (2022-)', 10)
INSERT [dbo].[vehicleModels] ([id], [ModelName], [ManufacturerID]) VALUES (18, N'smart (2022-)', 10)
SET IDENTITY_INSERT [dbo].[vehicleModels] OFF
SET IDENTITY_INSERT [fov].[FeaturesOfVehicle] ON 

INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (1, 1, 1)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (2, 1, 2)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (3, 1, 3)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (4, 1, 4)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (5, 2, 1)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (6, 3, 1)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (7, 4, 1)
INSERT [fov].[FeaturesOfVehicle] ([id], [Vehicle_ID], [Feature_ID]) VALUES (8, 5, 1)
SET IDENTITY_INSERT [fov].[FeaturesOfVehicle] OFF
ALTER TABLE [dbo].[VehicleDetails]  WITH CHECK ADD  CONSTRAINT [FK_VehicleDetails_vehicleColours] FOREIGN KEY([Colour_ID])
REFERENCES [dbo].[vehicleColours] ([id])
GO
ALTER TABLE [dbo].[VehicleDetails] CHECK CONSTRAINT [FK_VehicleDetails_vehicleColours]
GO
ALTER TABLE [dbo].[VehicleDetails]  WITH CHECK ADD  CONSTRAINT [FK_VehicleDetails_vehicleFuelType] FOREIGN KEY([FuelType_ID])
REFERENCES [dbo].[vehicleFuelType] ([id])
GO
ALTER TABLE [dbo].[VehicleDetails] CHECK CONSTRAINT [FK_VehicleDetails_vehicleFuelType]
GO
ALTER TABLE [dbo].[VehicleDetails]  WITH CHECK ADD  CONSTRAINT [FK_VehicleDetails_vehicleModels] FOREIGN KEY([Model_ID])
REFERENCES [dbo].[vehicleModels] ([id])
GO
ALTER TABLE [dbo].[VehicleDetails] CHECK CONSTRAINT [FK_VehicleDetails_vehicleModels]
GO
ALTER TABLE [dbo].[vehicleModels]  WITH CHECK ADD  CONSTRAINT [FK_vehicleModels_vehicleManufactures] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[vehicleManufactures] ([id])
GO
ALTER TABLE [dbo].[vehicleModels] CHECK CONSTRAINT [FK_vehicleModels_vehicleManufactures]
GO
ALTER TABLE [fov].[FeaturesOfVehicle]  WITH CHECK ADD  CONSTRAINT [FK_FeaturesOfVehicle_VehicleDetails] FOREIGN KEY([Vehicle_ID])
REFERENCES [dbo].[VehicleDetails] ([id])
GO
ALTER TABLE [fov].[FeaturesOfVehicle] CHECK CONSTRAINT [FK_FeaturesOfVehicle_VehicleDetails]
GO
ALTER TABLE [fov].[FeaturesOfVehicle]  WITH CHECK ADD  CONSTRAINT [FK_FeaturesOfVehicle_vehicleFeatures] FOREIGN KEY([Feature_ID])
REFERENCES [dbo].[vehicleFeatures] ([id])
GO
ALTER TABLE [fov].[FeaturesOfVehicle] CHECK CONSTRAINT [FK_FeaturesOfVehicle_vehicleFeatures]
GO
USE [master]
GO
ALTER DATABASE [vehiclesDB] SET  READ_WRITE 
GO
