CREATE QUEUE [dbo].[SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]
	WITH
		STATUS = ON,
		RETENTION = OFF,
		ACTIVATION (
			STATUS = ON,
			PROCEDURE_NAME = [dbo].[SqlQueryNotificationStoredProcedure-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f],
			MAX_QUEUE_READERS = 1,
			EXECUTE AS OWNER
			),
		POISON_MESSAGE_HANDLING (STATUS = ON)
ON [PRIMARY]
GO
