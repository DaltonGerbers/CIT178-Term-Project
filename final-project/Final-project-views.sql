/* Final Project Views

USE fictionalTtrpgParty;
GO

-- View #1 
-- updatable view --
CREATE VIEW PlayerCharacters
AS
SELECT CharacterID, CharacterName, Level, Race
FROM Characters;
GO

--original data--
SELECT * FROM PlayerCharacters;

-- updating price --

GO
UPDATE PlayerCharacters
SET CharacterName = 'Cassius Mercvauld'
WHERE CharacterID = 4;
GO

-- displaying new data--

SELECT * FROM PlayerCharacters;

-- I was rather similar to the example, there, I hope that is alright*/

/*  View #2  */

--  creating view --
GO
CREATE VIEW PlayerClasses
AS
SELECT Characters.CharacterName, Class.Type
FROM Customers JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
GO

-- using the view to display the data --
SELECT * FROM CustomerOrders;