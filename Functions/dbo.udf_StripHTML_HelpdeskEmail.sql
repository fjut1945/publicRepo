SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[udf_StripHTML_HelpdeskEmail] (@HTMLText VARCHAR(MAX))
RETURNS VARCHAR(MAX) AS
BEGIN
	DECLARE @TruncateHere INT

	set @HTMLText = dbo.udf_stripHTML(@HTMLText)

	IF CHARINDEX('|',@HTMLText) > 0 
		BEGIN
			SET @TruncateHere = CHARINDEX('|',@HTMLText)-1
		END
	ELSE
		BEGIN
			SET @TruncateHere = LEN(@HTMLText)
		END
	
	SET @HTMLText = left(@HTMLText,@TruncateHere)

    RETURN LTRIM(RTRIM(@HTMLText))
END



GO
