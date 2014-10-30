CREATE QUEUE [dbo].[SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]
	WITH
		STATUS = ON,
		RETENTION = OFF,
		ACTIVATION (
			STATUS = ON,
			PROCEDURE_NAME = [dbo].[SqlQueryNotificationStoredProcedure-0bb5d973-0419-435d-9424-d593bf8aaa1a],
			MAX_QUEUE_READERS = 1,
			EXECUTE AS OWNER
			),
		POISON_MESSAGE_HANDLING (STATUS = ON)
ON [PRIMARY]
GO
