-- Step 3: Research triggers using AFTER UPDATE
-- Author: Sirr Duke
-- Date: 2026-02-13

-- Sample update to see what values need to be captured
UPDATE dbo.t_w3_schools_customers
SET Address = '123 New Address'
WHERE CustomerID = 1;

SELECT CustomerID, Address
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;
