-- Create tables for first iteration 
--use master;

-- CREATE DATABASE MIST353_NFL_RDB_Thompson;

--DROP DATABASE MIST353_NFL_RDB_Thompson;

use MIST353_NFL_RDB_Thompson;

-- Create tables for for first iteration

create TABLE Team (
    TeamID INT identity(1,1)
    CONSTRAINT PK_Team PRIMARY KEY,
    TeamName VARCHAR(50) NOT NULL,
    TeamCityState VARCHAR(50) NOT NULL,
    Teamcolors VARCHAR(50) NOT NULL,
    ConferenceDivisionID INT NOT NULL,
    CONSTRAINT FK_ConferenceDivision_Team FOREIGN KEY (ConferenceDivisionID) REFERENCES ConferenceDivision(ConferenceDivisionID)
);

create TABLE ConferenceDivision(
    ConferenceDivisionID INT identity (1,1)
    CONSTRAINT PK_ConferenceDivision PRIMARY KEY,
    Conference NVARCHAR(50) NOT NULL,
    CONSTRAINT CK_ConferenceNames CHECK (Conference IN ('AFC', 'NFC')),
    Division NVARCHAR(50) NOT NULL,
    CONSTRAINT CK_DivisionNames CHECK (Division IN ('East', 'West', 'North', 'South'))
);