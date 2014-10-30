SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC sp_renum_patente @natura varchar(2), @processoa varchar(7), @naturn varchar(2), @processon varchar(7)
AS

SET XACT_ABORT ON

BEGIN TRAN
    insert into TEST_Table1 values(2,'sd', 'asda')
COMMIT TRAN

GO
