SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [Person].[Address] (
		[AddressID]           [int] IDENTITY(1, 1) NOT FOR REPLICATION NOT NULL,
		[AddressLine1]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[AddressLine2]        [nvarchar](60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[City]                [nvarchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[StateProvinceID]     [int] NOT NULL,
		[PostalCode]          [nvarchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[SpatialLocation]     [geography] NULL,
		[rowguid]             [uniqueidentifier] NOT NULL ROWGUIDCOL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Person].[Address]
	ADD
	CONSTRAINT [PK_Address_AddressID]
	PRIMARY KEY
	CLUSTERED
	([AddressID])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key (clustered) constraint', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'PK_Address_AddressID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Clustered index created by a primary key constraint.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'PK_Address_AddressID'
GO
ALTER TABLE [Person].[Address]
	ADD
	CONSTRAINT [DF_Address_rowguid]
	DEFAULT (newid()) FOR [rowguid]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Default constraint value of NEWID()', 'SCHEMA', N'Person', 'TABLE', N'Address', 'CONSTRAINT', N'DF_Address_rowguid'
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK_Address_rowguid]
	ON [Person].[Address] ([rowguid])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique nonclustered index. Used to support replication samples.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'AK_Address_rowguid'
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode]
	ON [Person].[Address] ([AddressLine1], [AddressLine2], [City], [StateProvinceID], [PostalCode])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'IX_Address_AddressLine1_AddressLine2_City_StateProvinceID_PostalCode'
GO
CREATE NONCLUSTERED INDEX [IX_Address_StateProvinceID]
	ON [Person].[Address] ([StateProvinceID])
	ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', N'Nonclustered index.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'INDEX', N'IX_Address_StateProvinceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Primary key for Address records.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'First street address line.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressLine1'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Second street address line.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'AddressLine2'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Name of the city.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'City'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Postal code for the street address.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'PostalCode'
GO
EXEC sp_addextendedproperty N'MS_Description', N'ROWGUIDCOL number uniquely identifying the record. Used to support a merge replication sample.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'rowguid'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Latitude and longitude of this address.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'SpatialLocation'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Unique identification number for the state or province. Foreign key to StateProvince table.', 'SCHEMA', N'Person', 'TABLE', N'Address', 'COLUMN', N'StateProvinceID'
GO
EXEC sp_addextendedproperty N'MS_Description', N'Street address information for customers, employees, and vendors.', 'SCHEMA', N'Person', 'TABLE', N'Address', NULL, NULL
GO
GRANT DELETE
	ON [Person].[Address]
	TO [guest]
GO
ALTER TABLE [Person].[Address] SET (LOCK_ESCALATION = TABLE)
GO
