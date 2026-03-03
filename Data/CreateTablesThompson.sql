-- Step 1: Create a login at the server level

use master;

CREATE LOGIN NandaSurendra

WITH PASSWORD = 'MI$T353Instructor';



-- Step 2: Switch to your target database

USE MIST353_NFL_RDB_Thompson;



-- Step 3: Create a database user mapped to the login

CREATE USER NandaSurendra

FOR LOGIN NandaSurendra;



-- Step 4: Grant EXECUTE permission on all stored procedures and UDFs

GRANT EXECUTE TO NandaSurendra;



-- Read access to all tables

GRANT SELECT TO NandaSurendra;
-- Create tables for first iteration 
--use master;

--CREATE DATABASE MIST353_NFL_RDB_Thompson;

--DROP DATABASE MIST353_NFL_RDB_Thompson;
--CREATE DATABASE MIST353_NFL_RDB_Thompson;
use MIST353_NFL_RDB_Thompson;

if(OBJECT_ID('Team') IS NOT NULL)
    DROP TABLE Team;
    if(OBJECT_ID('ConferenceDivision') IS NOT NULL)
    DROP TABLE ConferenceDivision;


-- Create tables for for first iteration
GO

create TABLE ConferenceDivision(
    ConferenceDivisionID INT identity (1,1)
        CONSTRAINT PK_ConferenceDivision PRIMARY KEY,
    Conference NVARCHAR(50) NOT NULL,
        CONSTRAINT CK_ConferenceNames CHECK (Conference IN ('AFC', 'NFC')),
    Division NVARCHAR(50) NOT NULL,
        CONSTRAINT CK_DivisionNames CHECK (Division IN ('East', 'West', 'North', 'South')),
    CONSTRAINT UK_ConferenceDivision UNIQUE (Conference, Division)
);

create TABLE Team (
    TeamID INT identity(1,1)
         CONSTRAINT PK_Team PRIMARY KEY,
    TeamName VARCHAR(50) NOT NULL,
    TeamCityState VARCHAR(50) NOT NULL,
    Teamcolors VARCHAR(50) NOT NULL,
    ConferenceDivisionID INT NOT NULL,
        CONSTRAINT FK_ConferenceDivision_Team FOREIGN KEY (ConferenceDivisionID) REFERENCES ConferenceDivision(ConferenceDivisionID)
);

/*alter table ConferenceDivision
NOCHECK CONSTRAINT CK_ConferenceNames;

alter table ConferenceDivision
CHECK CONSTRAINT CK_ConferenceNames WITH CHECK CHECK CONSTRAINT CK_ConferenceNames;