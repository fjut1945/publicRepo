CREATE SERVICE [SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]
	([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification])
GO
