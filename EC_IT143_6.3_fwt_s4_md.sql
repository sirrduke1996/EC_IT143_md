-- Step 4: Create triggers to capture last modified info
-- Author: Sirr Duke
-- Date: 2026-02-13

-- LastModifiedDate trigger
CREATE TRIGGER trg_LastModifiedDate
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.t_w3_schools_customers
    SET LastModifiedDate = GETDATE()
    FROM inserted i
    WHERE dbo.t_w3_schools_customers.CustomerID = i.CustomerID;
END
GO

-- LastModifiedBy trigger
CREATE TRIGGER trg_LastModifiedBy
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.t_w3_schools_customers
    SET LastModifiedBy = SUSER_NAME()
    FROM inserted i
    WHERE dbo.t_w3_schools_customers.CustomerID = i.CustomerID;
END
GO
