SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[eventslog] (
		[eventtype]      [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[objectname]     [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[objecttype]     [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[sqlcommand]     [varchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[username]       [varchar](256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[eventslog] SET (LOCK_ESCALATION = TABLE)
GO
