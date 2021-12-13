USE fictionalTtrpgParty;
GO
CREATE INDEX idx_AcqCharacter ON Acquisitions(CharacterID);
GO
CREATE INDEX idx_Artifact ON Acquisitions(ArtifactID);
GO
CREATE INDEX idx_Vendor ON Artifacts(VendorID);
GO
CREATE INDEX idx_Character ON CharacterClass(CharacterID);
GO
CREATE INDEX idx_Class ON CharacterClass(ClassID);
GO
CREATE INDEX idx_Level ON Characters(Level);
GO
CREATE INDEX idx_XPCharacter ON CharacterXP(CharacterID);
GO
CREATE INDEX idx_XP ON CharacterXP(XPID);
GO
CREATE INDEX idx_Town ON Vendors(Town);
GO