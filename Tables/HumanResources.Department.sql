SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [HumanResources].[Department] (
		[DepartmentID]     [smallint] IDENTITY(1, 1) NOT NULL,
		[Name]             [dbo].[Name] NOT NULL,
		[w]                [nvarchar](52) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[ModifiedDate]     [datetime] NOT NULL,
		[sad]              [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [HumanResources].[Department]
	ADD
	CONSTRAINT [PK_Department_DepartmentID]
	PRIMARY KEY
	CLUSTERED
	([DepartmentID])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'CONSTRAINT', N'PK_Department_DepartmentID'
GO
ALTER TABLE [HumanResources].[Department]
	ADD
	CONSTRAINT [DF_Department_ModifiedDate]
	DEFAULT (getdate()) FOR [ModifiedDate]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Department_Name]
	ON [HumanResources].[Department] ([Name])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'INDEX', N'AK_Department_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Department records.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'COLUMN', N'DepartmentID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Date and time the record was last updated.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'COLUMN', N'ModifiedDate'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the group to which the department belongs.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', 'COLUMN', N'w'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Lookup table containing the departments within the Adventure Works Cycles company.', 'SCHEMA', N'HumanResources', 'TABLE', N'Department', NULL, NULL
GO
ALTER TABLE [HumanResources].[Department] SET (LOCK_ESCALATION = TABLE)
GO
