/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_MyFC_MD.sql
PURPOSE: Answer analysis questions for the MyFC community dataset

MODIFICATION LOG:
Ver      Date        Author            Description
-----   ----------   ----------------  ---------------------------------------------------------------------------
1.1     02/05/2026   Mustapha Dukuly   Fixed column-name errors after SSMS validation

RUNTIME:
< 1 second

NOTES:
This script avoids assumed column names and focuses on row-based and table-level analysis.
******************************************************************************************************************/

USE MyFC;
GO

/*---------------------------------------------------------------
Q1 (Author: Mustapha Dukuly)
How many total player records exist in the Player Fact table?
----------------------------------------------------------------*/
SELECT 
    COUNT(*) AS TotalPlayerRecords
FROM dbo.tblPlayerFact;


/*---------------------------------------------------------------
Q2 (Author: Classmate)
How many players are stored in the Player Dimension table?
----------------------------------------------------------------*/
SELECT 
    COUNT(*) AS TotalPlayers
FROM dbo.tblPlayerDim;


/*---------------------------------------------------------------
Q3 (Author: Mustapha Dukuly)
How many teams exist in the Team Dimension table?
----------------------------------------------------------------*/
SELECT 
    COUNT(*) AS TotalTeams
FROM dbo.tblTeamDim;


/*---------------------------------------------------------------
Q4 (Author: Classmate)
How many team-player summary records exist?
----------------------------------------------------------------*/
SELECT 
    COUNT(*) AS TotalTeamPlayerSummaries
FROM dbo.tblTeamPlayerCount;
