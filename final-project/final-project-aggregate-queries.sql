/*USE fictionalTtrpgParty;
SELECT MIN(Characters.Level) AS [Minimum Character Level],
		MAX(Characters.Level) AS [Maximum Character Level],
		AVG(Characters.Level) AS [Average Character Level]
FROM Characters;

SELECT Characters.CharacterName, Characters.Gold AS [Current Gold], SUM(Acquisitions.Quantity) * Artifacts.Cost + 0 AS [Past Expenditure]
FROM Characters
JOIN Acquisitions ON Characters.CharacterID = Acquisitions.CharacterID
JOIN Artifacts ON Acquisitions.ArtifactID = Artifacts.ID
WHERE Acquisitions.Type LIKE '%Store%'
GROUP BY Characters.CharacterName, Characters.Gold, Artifacts.Cost;

SELECT Characters.CharacterName, SUM(XP.Value) AS [Total XP Earned], COUNT(CharacterXP.CharacterID) AS [XP Rewards Won]
FROM Characters
JOIN CharacterXP ON Characters.CharacterID = CharacterXP.CharacterID
JOIN XP ON CharacterXP.XPID = XP.ID
GROUP BY Characters.CharacterName, CharacterXP.CharacterID;

SELECT COUNT(Characters.CharacterID) AS [Number of Characters],
		AVG(Characters.Level) AS [Average Character Level]
FROM Characters;*/
