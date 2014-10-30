SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [SqlQueryNotificationStoredProcedure-374eb665-4b78-4c3d-83f2-5707d536a002] AS BEGIN BEGIN TRANSACTION; RECEIVE TOP(0) conversation_handle FROM [SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]; IF (SELECT COUNT(*) FROM [SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002] WHERE message_type_name = 'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer') > 0 BEGIN DROP SERVICE [SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]; DROP QUEUE [SqlQueryNotificationService-374eb665-4b78-4c3d-83f2-5707d536a002]; DROP PROCEDURE [SqlQueryNotificationStoredProcedure-374eb665-4b78-4c3d-83f2-5707d536a002]; END COMMIT TRANSACTION; END
GO
