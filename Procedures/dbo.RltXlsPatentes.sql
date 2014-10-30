SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[RltXlsPatentes] (@arquivo VARCHAR(102), @sessionid VARCHAR(50), @usuario VARCHAR(50), @procs VARCHAR(MAX))
AS
BEGIN
    
	WITH OCORR AS
	(
		SELECT anu.myid,
		ROW_NUMBER() OVER (PARTITION BY Anu.MyID order by anu.myId) AS [Rows]
        from TestDatabase.dbo.TEST_Table2 AS Anu
		
	)

	SELECT * INTO #TMPOCORR FROM OCORR WHERE Rows = 4;
	SELECT * INTO #TMPOCORR1 FROM OCORR WHERE Rows = 5;

	WITH PROXRETRIB AS
	(
		/*asd*/SELECT anu.myid,dsd.MyOtherContent1,
		ROW_NUMBER() OVER (PARTITION BY Anu.MyID order by anu.myId) AS [Rows]
        from TestDatabase.dbo.TEST_Table1 AS Anu
		inner join TEST_Table2 dsd on anu.MyID = dsd.MyID	and anu.MyContent = dsd.MyOtherContent1		
	)

	SELECT * INTO #TMPPROXRETRIB FROM PROXRETRIB WHERE Rows = 1
	
END
GO
