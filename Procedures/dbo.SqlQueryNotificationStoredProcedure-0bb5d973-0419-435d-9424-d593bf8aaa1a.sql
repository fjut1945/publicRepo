SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SqlQueryNotificationStoredProcedure-0bb5d973-0419-435d-9424-d593bf8aaa1a] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN DROP SERVICE [SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]; DROP QUEUE [SqlQueryNotificationService-0bb5d973-0419-435d-9424-d593bf8aaa1a]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-0bb5d973-0419-435d-9424-d593bf8aaa1a]; END COMMIT TRANSACTION; END
GO
