/*
   Friday, May 25, 201810:01:37 AM
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
CREATE TABLE dbo.LentMedia
	(
	Id int NOT NULL IDENTITY (1, 1),
	MediaId int NOT NULL,
	LendeeName varchar(100) NOT NULL,
	MediaConditionId int NOT NULL,
	DateLent date NOT NULL,
	Notes varchar(200) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.LentMedia ADD CONSTRAINT
	PK_LentMedia PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.LentMedia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.LentMedia', 'Object', 'CONTROL') as Contr_Per 