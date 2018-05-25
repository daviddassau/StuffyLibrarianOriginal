/*
   Friday, May 25, 20189:56:12 AM
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
CREATE TABLE dbo.SoldMedia
	(
	Id int NOT NULL IDENTITY (1, 1),
	MediaId int NOT NULL,
	Buyer varchar(50) NOT NULL,
	Amount money NULL,
	SoldDate date NOT NULL,
	Notes varchar(200) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.SoldMedia ADD CONSTRAINT
	PK_SoldMedia PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.SoldMedia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.SoldMedia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.SoldMedia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.SoldMedia', 'Object', 'CONTROL') as Contr_Per 