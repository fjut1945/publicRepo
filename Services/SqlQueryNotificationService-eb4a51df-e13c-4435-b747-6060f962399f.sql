CREATE SERVICE [SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]
	([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification])
GO
