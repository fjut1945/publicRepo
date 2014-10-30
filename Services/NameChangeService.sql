CREATE SERVICE [NameChangeService]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[NewEmployeeAddedQueue]
	([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification])
GO
