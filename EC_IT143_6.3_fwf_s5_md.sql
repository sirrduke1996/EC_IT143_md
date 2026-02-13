-- Step 5: Create scalar functions
-- Author: Sirr Duke
-- Date: 2026-02-13

-- Function to get first name
CREATE FUNCTION dbo.ufn_GetFirstName(@FullName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LEFT(@FullName, CHARINDEX(' ', @FullName + ' ') - 1);
END
GO

-- Function to get last name
CREATE FUNCTION dbo.ufn_GetLastName(@FullName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN RIGHT(@FullName, LEN(@FullName) - CHARINDEX(' ', @FullName));
END
GO
