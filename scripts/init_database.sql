/*
=========================================================================
Create Database and Schemas
=========================================================================
Script Purpose
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, this script sets up 3 schemas in the database: 'bronze', 'silver' and 'gold'.
WARNING:
    If the 'DataWarehouse' database already exists, running this script will drop the entire database.
    All data in the database will be permanently deleted
*/

USE master
GO

--Drop and recreate the 'DataWarehouse' Database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO

-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
GO
