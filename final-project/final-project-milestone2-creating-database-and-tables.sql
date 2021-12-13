CREATE DATABASE fictionalTtrpgParty;

GO
USE fictionalTtrpgParty;
CREATE TABLE Characters(
	CharacterID int NOT NULL,
	CharacterName varchar(50) NOT NULL,
	PlayerName varchar(20) NOT NULL,
	Level int NOT NULL,
	Race varchar(20) NOT NULL,
	Gold int NOT NULL,
	PRIMARY KEY(CharacterID)
);
GO
CREATE TABLE Class(
	ID int NOT NULL,
	Type varchar(20) NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE CharacterClass(
	CharacterID int NOT NULL,
	ClassID int NOT NULL,
	PRIMARY KEY(CharacterID, ClassID)
);
GO
CREATE TABLE Level(
	ID int NOT NULL,
	xp int NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Vendors(
	VendorID int NOT NULL,
	VendorName varchar(50) NOT NULL,
	Town int NOT NULL,
	Wares varchar(100),
	PRIMARY KEY(VendorID)
);
GO
CREATE TABLE Artifacts(
	ID int NOT NULL,
	ItemType varchar(50) NOT NULL,
	Cost DECIMAL(10,2),
	VendorID INT NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Acquisitions(
	AcquisitionID int NOT NULL,
	CharacterID int NOT NULL,
	ArtifactID int NOT NULL,
	Quantity int NOT NULL,
	Type varchar(30) NOT NULL,
	PRIMARY KEY(AcquisitionID)
);
GO
CREATE TABLE XP(
	ID int NOT NULL,
	Source varchar(50) NOT NULL,
	Value int NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE CharacterXP(
	ID int NOT NULL,
	CharacterID int NOT NULL,
	XPID int NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Towns(
	ID int NOT NULL,
	Town varchar(50) NOT NULL,
	Description varchar(200) NOT NULL,
	SpecialQltys varchar(50),
	PRIMARY KEY(ID)
);