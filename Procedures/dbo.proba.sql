SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC dbo.proba 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	 


    -- Insert statements for procedure here
	SELECT * FROM Person.Address a INNER JOIN Person.BusinessEntityAddress bea ON bea.AddressID = a.AddressID
END
GO
