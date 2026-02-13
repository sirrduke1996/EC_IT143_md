-- Step 6: Compare UDF results to ad hoc query
-- Author: Sirr Duke
-- Date: 2026-02-13

SELECT ContactName,
       dbo.ufn_GetFirstName(ContactName) AS FirstName,
       dbo.ufn_GetLastName(ContactName) AS LastName
FROM dbo.t_w3_schools_customers;
