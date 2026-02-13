-- Step 4: Tested first/last name extraction with sample data
-- Author: Sirr Duke
-- Date: 2026-02-13

-- Verified using W3Schools dataset and CHARINDEX/LEFT/RIGHT functions
SELECT TOP 10 ContactName,
       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName,
       RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS LastName
FROM dbo.t_w3_schools_customers;
