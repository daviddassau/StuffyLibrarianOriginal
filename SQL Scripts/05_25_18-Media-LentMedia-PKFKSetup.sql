/*
   Friday, May 25, 201810:14:02 AM
   User: 
   Server: DESKTOP-FLN7PJC
   Database: MixedMediaInventoryTracker
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Media SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Media', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Media', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Media', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.LentMedia ADD CONSTRAINT
	FK_LentMedia_Media FOREIGN KEY
	(
	MediaId
	) REFERENCES dbo.Media
	(
	Id
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.LentMedia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'CONTROL') as Contr_Per 