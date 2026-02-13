-- Step 8: Next question
-- Author: Sirr Duke
-- Date: 2026-02-13

-- How can we handle middle names when extracting last names?
SELECT ContactName,
       dbo.ufn_GetFirstName(ContactName) AS FirstName,
       dbo.ufn_GetLastName(ContactName) AS LastName
FROM dbo.t_w3_schools_customers;
