/*
==================================================================
Create Database and Schemas
==================================================================
Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. Additionally, the script set up three schemas
  within the database: 'bronze', 'silver', and 'gold'.

WARNING:
  Runnuing this script will drop the entire 'Datawarehouse' database if it exists.
  All data in the database will be permenently deleted. Proceed with caution 
  and ensure you have proper backup before running this script.
*/

USE master;
Go

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

--Create the 'Datawarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
Go

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO













