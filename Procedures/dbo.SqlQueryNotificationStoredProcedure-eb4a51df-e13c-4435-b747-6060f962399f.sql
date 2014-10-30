SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SqlQueryNotificationStoredProcedure-eb4a51df-e13c-4435-b747-6060f962399f] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN DROP SERVICE [SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]; DROP QUEUE [SqlQueryNotificationService-eb4a51df-e13c-4435-b747-6060f962399f]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-eb4a51df-e13c-4435-b747-6060f962399f]; END COMMIT TRANSACTION; END
GO
