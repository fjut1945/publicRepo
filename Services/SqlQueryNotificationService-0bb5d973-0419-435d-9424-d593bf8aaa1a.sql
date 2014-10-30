CREATE SERVICE [SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]
	([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification])
GO
