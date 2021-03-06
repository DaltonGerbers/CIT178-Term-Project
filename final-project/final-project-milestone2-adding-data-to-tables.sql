/*USE fictionalTtrpgParty;
GO
INSERT INTO Class VALUES (1, 'Alchemist')
INSERT INTO Class VALUES (2, 'Barbarian')
INSERT INTO Class VALUES (3, 'Bard')
INSERT INTO Class VALUES (4, 'Cavalier')
INSERT INTO Class VALUES (5, 'Cleric')
INSERT INTO Class VALUES (6, 'Druid')
INSERT INTO Class VALUES (7, 'Fighter')
INSERT INTO Class VALUES (8, 'Gunslinger')
INSERT INTO Class VALUES (9, 'Inquisitor')
INSERT INTO Class VALUES (10, 'Magus')
INSERT INTO Class VALUES (11, 'Monk')
INSERT INTO Class VALUES (12, 'Oracle')
INSERT INTO Class VALUES (13, 'Paladin')
INSERT INTO Class VALUES (14, 'Ranger')
INSERT INTO Class VALUES (15, 'Rogue')
INSERT INTO Class VALUES (16, 'Shifter')
INSERT INTO Class VALUES (17, 'Sorcerer')
INSERT INTO Class VALUES (18, 'Summoner')
INSERT INTO Class VALUES (19, 'Vigilante')
INSERT INTO Class VALUES (20, 'Witch')
INSERT INTO Class VALUES (21, 'Wizard')

INSERT INTO Level VALUES (1, 0)
INSERT INTO Level VALUES (2, 2000)
INSERT INTO Level VALUES (3, 5000)
INSERT INTO Level VALUES (4, 9000)
INSERT INTO Level VALUES (5, 15000)
INSERT INTO Level VALUES (6, 23000)
INSERT INTO Level VALUES (7, 35000)
INSERT INTO Level VALUES (8, 51000)
INSERT INTO Level VALUES (9, 75000)
INSERT INTO Level VALUES (10, 105000)
INSERT INTO Level VALUES (11, 155000)
INSERT INTO Level VALUES (12, 220000)
INSERT INTO Level VALUES (13, 315000)
INSERT INTO Level VALUES (14, 445000)
INSERT INTO Level VALUES (15, 635000)
INSERT INTO Level VALUES (16, 890000)
INSERT INTO Level VALUES (17, 1300000)
INSERT INTO Level VALUES (18, 1800000)
INSERT INTO Level VALUES (19, 2550000)
INSERT INTO Level VALUES (20, 3600000)

INSERT INTO Towns VALUES (1, 'Wheatfield', 'Small farming town', 'Plentiful food')
INSERT INTO Towns VALUES (2, 'Capitol City', 'The capitol of the land', 'High prices')
INSERT INTO Towns VALUES (3, 'Thnattleburg', 'A human settlment in a forest', 'Not much to spare')
INSERT INTO Towns VALUES (4, 'Oeofree Point', 'A shipping town in the south', 'Imported goods')
INSERT INTO Towns VALUES (5, 'Atlantis', 'Legendary city, thought to be lost', 'Underwater')
INSERT INTO Towns VALUES (6, 'Countryside', 'Anywhere', NULL)

INSERT INTO XP VALUES (1, 'Orc(20) Fight', 2700)
INSERT INTO XP VALUES (2, 'Bugbear(10) Fight', 6000)
INSERT INTO XP VALUES (3, 'Orc(25) Fight', 3375)
INSERT INTO XP VALUES (4, 'Goblin(20) Fight', 2700)
INSERT INTO XP VALUES (5, 'Goblin(15) Fight', 2025)
INSERT INTO XP VALUES (6, 'Dire Bear(1) Fight', 3200)
INSERT INTO XP VALUES (7, 'Flesh Golem(1) Fight', 3200)
INSERT INTO XP VALUES (8, 'Chicken(1) Fight', 65)

INSERT INTO Characters VALUES (1, 'Herauld Hirrith', 'Jacob', 5, 'Tiefling', 100)
INSERT INTO Characters VALUES (2, 'Sha-Geth', 'Jacob', 5, 'Ratfolk', 160)
INSERT INTO Characters VALUES (3, 'Hoggard Schourchaughrdliee', 'Dalton', 5, 'Human', 35)
INSERT INTO Characters VALUES (4, 'Cassius Mercvald', 'James', 6, 'Half-Orc', 300)
INSERT INTO Characters VALUES (5, 'Blamzorpk', 'Paul', 5, 'Elf', 40)
INSERT INTO Characters VALUES (6, 'Robert', 'Robert', 3, 'Human', 100)

INSERT INTO Vendors VALUES (1, 'Hasno', 1, 'Potions')
INSERT INTO Vendors VALUES (2, 'Big Bread Bhol', 1, 'Big Bread')
INSERT INTO Vendors VALUES (3, 'Lillard', 2, 'Produce')
INSERT INTO Vendors VALUES (4, 'Mythrol', 2, 'Magic Items')
INSERT INTO Vendors VALUES (5, 'Nornigan', 3, 'Adventuring Supplies')
INSERT INTO Vendors VALUES (6, 'Murress', 4, 'Tavern Goods')
INSERT INTO Vendors VALUES (7, 'No Vendor', 6, NULL)

INSERT INTO Artifacts VALUES (1, 'Ale', 0.5, 6)
INSERT INTO Artifacts VALUES (2, 'Big Bread', 0.5, 2)
INSERT INTO Artifacts VALUES (3, 'Healing Potion', 50, 1)
INSERT INTO Artifacts VALUES (4, 'Rations', 0.5, 5)
INSERT INTO Artifacts VALUES (5, 'Spell Components', 10, 4)
INSERT INTO Artifacts VALUES (6, 'Alchemist Jug', NULL, 4)
INSERT INTO Artifacts VALUES (7, 'Immovable Rod', 1000, 4)
INSERT INTO Artifacts VALUES (8, 'Magic Sword', 500, 4)
INSERT INTO Artifacts VALUES (9, 'Summoning Hat', NULL, 4)
INSERT INTO Artifacts VALUES (10, 'Monkey Paw', NULL, 7)

INSERT INTO CharacterClass VALUES (1, 7)
INSERT INTO CharacterClass VALUES (2, 20)
INSERT INTO CharacterClass VALUES (3, 2)
INSERT INTO CharacterClass VALUES (3, 13)
INSERT INTO CharacterClass VALUES (4, 4)
INSERT INTO CharacterClass VALUES (5, 21)
INSERT INTO CharacterClass VALUES (6, 14)

INSERT INTO CharacterXP VALUES (1, 4, 1)
INSERT INTO CharacterXP VALUES (2, 4, 2)
INSERT INTO CharacterXP VALUES (3, 1, 3)
INSERT INTO CharacterXP VALUES (4, 5, 4)
INSERT INTO CharacterXP VALUES (5, 2, 5)
INSERT INTO CharacterXP VALUES (6, 1, 6)
INSERT INTO CharacterXP VALUES (7, 4, 7)
INSERT INTO CharacterXP VALUES (8, 6, 8)

INSERT INTO Acquisitions VALUES (1, 3, 1, 4, 'Store')
INSERT INTO Acquisitions VALUES (2, 5, 5, 1, 'Store')
INSERT INTO Acquisitions VALUES (3, 6, 4, 10, 'Store')
INSERT INTO Acquisitions VALUES (4, 2, 3, 3, 'Store')
INSERT INTO Acquisitions VALUES (5, 3, 1, 7, 'Store')
INSERT INTO Acquisitions VALUES (6, 4, 8, 1, 'Store')
INSERT INTO Acquisitions VALUES (7, 3, 1, 5, 'Store')
INSERT INTO Acquisitions VALUES (8, 2, 3, 3, 'Store')
INSERT INTO Acquisitions VALUES (9, 6, 2, 1, 'Store')
INSERT INTO Acquisitions VALUES (10, 2, 9, 1, 'Starting equipment')
INSERT INTO Acquisitions VALUES (11, 1, 7, 1, 'Dungeon')
INSERT INTO Acquisitions VALUES (12, 4, 8, 1, 'Store')
INSERT INTO Acquisitions VALUES (13, 2, 6, 1, 'Dungeon')
INSERT INTO Acquisitions VALUES (14, 6, 10, 1, 'Enemy loot')*/