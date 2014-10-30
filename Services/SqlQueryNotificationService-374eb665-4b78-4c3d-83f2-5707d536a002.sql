CREATE SERVICE [SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]
	AUTHORIZATION [dbo]
	ON QUEUE [dbo].[SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]
	([http://schemas.microsoft.com/SQL/Notifications/PostQueryNotification])
GO
