/*
======================================================================
Create Database and Schemas
======================================================================
Script Purpose: 
  This script creates a new database name DataWareHouse 
  Additionally, the script sets up three schemas within the database: 'bronze','silver'and'gold'
*/
USE master;
GO

-- Drop and recreate the   DataWareHouse database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWareHouse')
BEGIN
	ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWareHouse;
END;

GO

-- Create database
CREATE DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
