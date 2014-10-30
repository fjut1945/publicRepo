SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SqlQueryNotificationStoredProcedure-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN DROP SERVICE [SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]; DROP QUEUE [SqlQueryNotificationService-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-5f15d2e7-1dcd-4ac2-8b27-6edfb923d14f]; END COMMIT TRANSACTION; END
GO
