SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[WorkflowStep] (
		[Id]                     [int] IDENTITY(1, 1) NOT FOR REPLICATION NOT NULL,
		[Title]                  [nvarchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[Description]            [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[NotifyParticipants]     [bit] NOT NULL,
		[SortIndex]              [int] NOT NULL,
		[BlanketSerieId]         [int] NOT NULL,
		[NotifyMessage]          [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[EngineVersion]          [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[anothertestcolumn]      [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[justere]                [dbo].[OrderNumber] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkflowStep]
	ADD
	CONSTRAINT [PK_WorkflowStep]
	PRIMARY KEY
	CLUSTERED
	([Id])
	WITH FILLFACTOR=75
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[WorkflowStep]
	ADD
	CONSTRAINT [DF_WorkflowStep_EngineVersion]
	DEFAULT ((1)) FOR [EngineVersion]
GO
ALTER TABLE [dbo].[WorkflowStep] SET (LOCK_ESCALATION = TABLE)
GO
