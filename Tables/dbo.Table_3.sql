SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_3] (
		[sgf]       [smallint] NULL,
		[dfhe]      [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[movie]     [smalldatetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_3] SET (LOCK_ESCALATION = TABLE)
GO
