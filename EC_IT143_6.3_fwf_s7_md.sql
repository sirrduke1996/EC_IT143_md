-- Step 7: Test function with no matching results
-- Author: Sirr Duke
-- Date: 2026-02-13

-- Using a CTE to simulate empty dataset
WITH EmptyCTE AS
(
    SELECT ContactName
    FROM dbo.t_w3_schools_customers
    WHERE CustomerID = 0
)
SELECT ContactName,
       dbo.ufn_GetFirstName(ContactName) AS FirstName,
       dbo.ufn_GetLastName(ContactName) AS LastName
FROM EmptyCTE;
