/* Final Project Procedures 

-- Retrieves and displays data
USE fictionalTtrpgParty;
CREATE PROC spCharacters
AS
SELECT * FROM Characters
ORDER BY CharacterName;
GO

EXEC spCharacters;

-- Takes 1 or more input parameters
USE fictionalTtrpgParty;
GO
CREATE PROC spGetCharacter
  @CharacterID int
AS
BEGIN
  SELECT * FROM Characters
  WHERE CharacterID = @CharacterID;
END
GO

EXEC spGetCharacter 1

-- Takes 1 or more input parameters and includes 1 or more output parameters
USE fictionalTtrpgParty;
GO
CREATE PROC spCharacterInfo
  @CharacterID int,
  @CharacterName varchar(50) OUTPUT,
  @PlayerName varchar(20) OUTPUT,
  @Race varchar(20) OUTPUT 
AS
SELECT @CharacterName = CharacterName, @PlayerName = PlayerName, @Race = Race
FROM Characters 
WHERE CharacterID = @CharacterID;
GO

DECLARE @CharacterName varchar(50);
DECLARE @PlayerName varchar(20);
DECLARE @Race varchar(20);
EXEC spCharacterInfo 1, @CharacterName OUTPUT, @PlayerName OUTPUT, @Race OUTPUT;
SELECT @CharacterName AS 'Character Name', @PlayerName AS 'Player Name', @Race AS 'Character Race';

-- Includes a return value 
USE fictionalTtrpgParty;
GO
CREATE PROC spClassCount
  @ClassID int
AS
DECLARE @CharacterCount int;
SELECT @CharacterCount = COUNT(*)
FROM CharacterClass 
WHERE ClassID = @ClassID;
RETURN @CharacterCount;
GO

DECLARE @CharacterCount int;
DECLARE @ClassID int = 2;
DECLARE @ClassType varchar(20) = (SELECT Type FROM Class WHERE ID = @ClassID)
EXEC @CharacterCount = spClassCount @ClassID;
PRINT 'There are ' + CONVERT(varchar, @CharacterCount) + ' character(s) of class ' + @ClassType + '.';
GO

Final Project User Defined Functions

-- scalar function
USE fictionalTtrpgParty;
GO
CREATE FUNCTION fnGetArtifact
  (@ItemType varchar(50) = '%')
  RETURNS int
BEGIN
    RETURN (SELECT ID FROM Artifacts WHERE ItemType Like @ItemType);
END; 
GO

SELECT ItemType, Cost, (SELECT VendorName FROM Vendors WHERE Artifacts.VendorID = VendorID) AS 'Vendor Name' FROM Artifacts 
WHERE ID = dbo.fnGetArtifact('Ale%');

-- table function
USE fictionalTtrpgParty;
GO
CREATE FUNCTION fnArtifacts
  (@ItemType varchar(50) = '%')
  RETURNS table
RETURN
  (SELECT * FROM Artifacts WHERE ItemType LIKE @ItemType);
GO

SELECT * FROM dbo.fnArtifacts('A%');

Final Project Triggers

 -- create archive table by copying character table without any rows
 USE fictionalTtrpgParty;
 GO
 SELECT * INTO CharactersTransaction
 FROM Characters
 WHERE 1=0;

-- update CharactersTransaction table and add activity column for status
 ALTER TABLE CharactersTransaction
 ADD Activity varchar(50);
 GO

-- create insert trigger
CREATE TRIGGER CharactersTransaction_INSERT ON Characters
  AFTER INSERT
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @CharacterID int
  DECLARE @CharacterName varchar(50)
  DECLARE @PlayerName varchar(20)
  DECLARE @Level int
  DECLARE @Race varchar(20)
  DECLARE @Gold int

  SELECT @CharacterID = INSERTED.CharacterID, @CharacterName = INSERTED.CharacterName, @PlayerName = INSERTED.PlayerName,
  @Level = INSERTED.Level, @Race = INSERTED.Race, @Gold = INSERTED.Gold
  FROM INSERTED

  INSERT INTO CharactersTransaction VALUES(@CharacterID, @CharacterName, @PlayerName, @Level, @Race, @Gold, 'Inserted')
END
GO
-- add row into characters to test insert trigger
INSERT INTO Characters VALUES(7, 'Vilve "LaVille" Viltchry', 'Dalton', 5, 'Ratfolk', 100);
GO
-- view data in characters archive
SELECT * FROM Characters;
GO

-- create delete trigger
CREATE TRIGGER CharactersTransaction_Delete ON Characters
  AFTER DELETE
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @CharacterID int
  DECLARE @CharacterName varchar(50)
  DECLARE @PlayerName varchar(20)
  DECLARE @Level int
  DECLARE @Race varchar(20)
  DECLARE @Gold int

  SELECT @CharacterID = DELETED.CharacterID, @CharacterName = DELETED.CharacterName, @PlayerName = DELETED.PlayerName,
  @Level = DELETED.Level, @Race = DELETED.Race, @Gold = DELETED.Gold
  FROM DELETED

  INSERT INTO CharactersTransaction VALUES(@CharacterID, @CharacterName, @PlayerName, @Level, @Race, @Gold, 'Deleted' )
END
GO
-- delete row from characters to test delete trigger
DELETE FROM Characters WHERE CharacterID = 7;
GO

-- view data in characters archive
SELECT * FROM CharactersTransaction;
GO

-- create update trigger
CREATE TRIGGER CharactersTransaction_Update ON Characters
  AFTER UPDATE
AS
BEGIN
  SET NOCOUNT ON;
  DECLARE @CharacterID int
  DECLARE @CharacterName varchar(50)
  DECLARE @PlayerName varchar(20)
  DECLARE @Level int
  DECLARE @Race varchar(20)
  DECLARE @Gold int

  SELECT @CharacterID = INSERTED.CharacterID, @CharacterName = INSERTED.CharacterName, @PlayerName = INSERTED.PlayerName,
  @Level = INSERTED.Level, @Race = INSERTED.Race, @Gold = INSERTED.Gold
  FROM INSERTED

  INSERT INTO CharactersTransaction VALUES(@CharacterID, @CharacterName, @PlayerName, @Level, @Race, @Gold, 'Updated' )
END
GO
-- insert a new row and then update the row (this will test the insert and update triggers)
INSERT INTO Characters VALUES(8, 'Dwindlin Flameguard', 'Norville', 5, 'Dwarf', 100);
GO
UPDATE Characters
SET Level = 6
WHERE CharacterID = 8;
GO

-- view data in customer archive
SELECT * FROM CharactersTransaction;*/