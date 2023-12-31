USE [vehiclesDB]
GO
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
SET IDENTITY_INSERT [dbo].[vehicleFuelType] ON 

INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (1, N'Diesel')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (2, N'Gasoline')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (3, N'Ethanol')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (4, N'BioDiesel')
INSERT [dbo].[vehicleFuelType] ([id], [FuelType]) VALUES (5, N'Propane')
SET IDENTITY_INSERT [dbo].[vehicleFuelType] OFF
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
