
-- Mahmoud Ayed Bayomi

-- Task No.2
-------------

/*

	The following data model is designed to hold information relating to Vehicle Details,
	in particular Vehicle Manufacturers, Models and associated Vehicle information.
	For this scenario we need to define the following facts:

	These facts define the requirements which the Database must meet and should be agreed
	between the Database User and the Database Designer prior to physical creation.

	The draft facts have been defined as:

	The Entities required should include:

	Vehicle Manufacturers
	Vehicle Models
	Vehicle Details
	Vehicle Features
	Vehicle Fuel Types
	Vehicle Colour

	The Entities are related as follows:

	One Vehicle Manufacturer can have zero, one or many Vehicle Models
	One Vehicle Model can have zero, one or many Vehicle Details
	One Vehicle Fuel Type can have zero, one or many Vehicle Details.
	One Vehicle can have zero, one or many Vehicle Features, a Vehicle Feature can be associated with many Vehicle Details


	The design allows a Vehicle to have multiple Vehicle Features (Air Conditioning, Alloy Wheels, CD Player, Electric Windows etc.)
	assigned to it. These Vehicle Features can also be associated with many of the Vehicles,
	therefore we have a Many-To-Many relationship defined. 
	This is broken into the two separate One-To-Many relationships 
	shown using the LINK table - tblLINKFeaturesToVehicles.

*/


create database vehiclesDB

use vehiclesDB
create table vehicleManufactures
(
	id int primary key identity,
	Mf_Name nvarchar(200)
)

create table vehicleModels
(
	id int primary key identity,
	ModelName nvarchar(200)
)

create table vehicleFeatures
(
	id int primary key identity,
	Features nvarchar(200)
)

create table vehicleFuelType
(
	id int primary key identity,
	FuelType nvarchar(200)
)

create table vehicleColours
(
	id int primary key identity,
	ColourName nvarchar(200)
)




create schema fov

create table fov.FeaturesOfVehicle
(
	id int primary key identity,
	Vehicle_ID int,
	Feature_ID int
)

select * from [dbo].[VehicleDetails]
select * from [dbo].[vehicleFeatures]
select * from [dbo].[vehicleColours]
select * from [dbo].[vehicleFuelType]
select * from [dbo].[vehicleManufactures]
select * from [dbo].[vehicleModels]
select * from [fov].[FeaturesOfVehicle]




select [ModelName] , id from [dbo].[vehicleModels]



















