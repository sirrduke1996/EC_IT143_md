-- Step 2: Plan to add LastModifiedDate and LastModifiedBy columns
ALTER TABLE dbo.t_w3_schools_customers
ADD LastModifiedDate DATETIME NULL,
    LastModifiedBy NVARCHAR(128) NULL;

-- Check columns
SELECT TOP 5 *
FROM dbo.t_w3_schools_customers;
