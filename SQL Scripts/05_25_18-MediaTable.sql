/*
   Friday, May 25, 20189:40:50 AM
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
CREATE TABLE dbo.[05_25_18-MediaTable]
	(
	Id int NOT NULL IDENTITY (1, 1),
	MediaTypeId int NOT NULL,
	ConditionId int NOT NULL,
	Title varchar(200) NOT NULL,
	DatePurchased date NULL,
	DateAdded date NOT NULL,
	IsLentOut bit NOT NULL,
	IsSold bit NULL,
	Notes varchar(200) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.[05_25_18-MediaTable] ADD CONSTRAINT
	[DF_05_25_18-MediaTable_DateAdded] DEFAULT getdate() FOR DateAdded
GO
ALTER TABLE dbo.[05_25_18-MediaTable] ADD CONSTRAINT
	[PK_05_25_18-MediaTable] PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.[05_25_18-MediaTable] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[05_25_18-MediaTable]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[05_25_18-MediaTable]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[05_25_18-MediaTable]', 'Object', 'CONTROL') as Contr_Per 