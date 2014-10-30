CREATE QUEUE [dbo].[SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]
	WITH
		STATUS = ON,
		RETENTION = OFF,
		ACTIVATION (
			STATUS = ON,
			PROCEDURE_NAME = [dbo].[SqlQueryNotificationStoredProcedure-eb4a51df-e13c-4435-b747-6060f962399f],
			MAX_QUEUE_READERS = 1,
			EXECUTE AS OWNER
			),
		POISON_MESSAGE_HANDLING (STATUS = ON)
ON [PRIMARY]
GO
