CREATE QUEUE [dbo].[SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]
	WITH
		STATUS = ON,
		RETENTION = OFF,
		ACTIVATION (
			STATUS = ON,
			PROCEDURE_NAME = [dbo].[SqlQueryNotificationStoredProcedure-374eb665-4b78-4c3d-83f2-5707d536a002],
			MAX_QUEUE_READERS = 1,
			EXECUTE AS OWNER
			),
		POISON_MESSAGE_HANDLING (STATUS = ON)
ON [PRIMARY]
GO
