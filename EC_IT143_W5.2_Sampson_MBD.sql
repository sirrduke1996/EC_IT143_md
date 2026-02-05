/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_Sampson_MD.sql
PURPOSE: Answer analysis questions for the Sampson community dataset

MODIFICATION LOG:
Ver      Date        Author            Description
-----   ----------   ----------------  ---------------------------------------------------------------------------
1.0     02/05/2026   Mustapha Dukuly   Built script for EC IT143 Week 5.2 Final Project

RUNTIME:
< 1 second

NOTES:
This script answers four analysis questions using the Sampson database tables.
Aggregate functions and grouping are used to support analysis.
******************************************************************************************************************/

USE Sampson;
GO

-- Q1 (Author: Mustapha Dukuly)
-- How many family records exist in the database?
-- A1: This query counts all rows in the Family_Data table.

SELECT 
    COUNT(*) AS TotalFamilies
FROM dbo.Family_Data;


-- Q2 (Author: Classmate)
-- How many customers have total credit recorded?
-- A2: This query counts customer credit records.

SELECT 
    COUNT(*) AS TotalCustomersWithCredit
FROM dbo.tblCustomerTotalCredit;


-- Q3 (Author: Mustapha Dukuly)
-- What is the total credit amount issued to customers?
-- A3: This query calculates the total credit value.

SELECT 
    SUM(TotalCredit) AS TotalCreditIssued
FROM dbo.tblCustomerTotalCredit;


-- Q4 (Author: Classmate)
-- How many visa cost records exist?
-- A4: This query counts all visa-related records.

SELECT 
    COUNT(*) AS TotalVisaRecords
FROM dbo.FBS_Viza_Costmo;
