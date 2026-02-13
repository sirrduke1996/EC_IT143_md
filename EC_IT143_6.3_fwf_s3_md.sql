-- Step 3: Test ad hoc query for first name
-- Author: Sirr Duke
-- Date: 2026-02-13

SELECT ContactName,
       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName,
       RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS LastName
FROM dbo.t_w3_schools_customers;
-- Step 3: Test ad hoc query for first name
-- Author: Sirr Duke
-- Date: 2026-02-13

SELECT ContactName,
       LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) AS FirstName,
       RIGHT(ContactName, LEN(ContactName) - CHARINDEX(' ', ContactName)) AS LastName
FROM dbo.t_w3_schools_customers;
