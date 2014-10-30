CREATE TYPE [dbo].[TestType]
	FROM [nvarchar](40)
	NOT NULL
GO
ALTER AUTHORIZATION
	ON TYPE :: [dbo].[TestType]
	TO [dbo]
GO
