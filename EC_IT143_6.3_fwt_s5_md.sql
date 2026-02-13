-- Step 5: Test triggers
UPDATE dbo.t_w3_schools_customers
SET Address = '456 Updated Address'
WHERE CustomerID = 1;

SELECT CustomerID, LastModifiedDate, LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;
