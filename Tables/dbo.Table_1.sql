SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Table_1] (
		[asdasasdda]     [nchar](12) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[123sada123]     [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[dfjhdfgj]       [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[fdgjfdj]        [nchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Table_1] SET (LOCK_ESCALATION = TABLE)
GO
