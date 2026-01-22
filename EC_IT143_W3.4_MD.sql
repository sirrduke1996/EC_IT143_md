/*****************************************************************************************************************
NAME:    AdventureWorks W3.4 – Create Answers
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     01/22/2026   Mustapha       Initial creation for W3.4 assignment


RUNTIME: 
~5 minutes

NOTES: 
This script contains eight documented questions and their SQL answers using AdventureWorks.
 
******************************************************************************************************************/

/****************************************************************************************
  HEADER (already completed above)
****************************************************************************************/

-- Q1 (Business User – Marginal)
-- Author: Classmate A
-- Question: What are the top 10 products with the highest list price?

-- A1: This query identifies the ten most expensive products based on list price.
SELECT TOP (10)
       Name,
       ListPrice
FROM Production.Product
WHERE ListPrice IS NOT NULL
ORDER BY ListPrice DESC;


-- Q2 (Business User – Marginal)
-- Author: Classmate B
-- Question: How many customers are stored in the AdventureWorks database?

-- A2: This query returns the total number of customers.
SELECT COUNT(*) AS TotalCustomers
FROM Sales.Customer;


-- Q3 (Business User – Moderate)
-- Author: Classmate C
-- Question: What is the total sales amount for each sales territory?

-- A3: This query calculates total sales grouped by sales territory.
SELECT
       st.Name AS Territory,
       SUM(soh.TotalDue) AS TotalSalesAmount
FROM Sales.SalesOrderHeader AS soh
INNER JOIN Sales.SalesTerritory AS st
        ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
ORDER BY TotalSalesAmount DESC;


-- Q4 (Business User – Moderate)
-- Author: Classmate D
-- Question: Which customers have placed more than five sales orders?

-- A4: This query identifies customers with more than five orders.
SELECT
       CustomerID,
       COUNT(SalesOrderID) AS OrderCount
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
HAVING COUNT(SalesOrderID) > 5
ORDER BY OrderCount DESC;


-- Q5 (Business User – Increased)
-- Author: Classmate E
-- Question: What are the top five salespeople by total sales amount, including their territory?

-- A5: This query ranks salespeople based on total sales and shows their territories.
SELECT TOP 5
    sp.BusinessEntityID,
    p.FirstName + ' ' + p.LastName AS SalesPersonName,
    st.Name AS Territory,
    SUM(soh.TotalDue) AS TotalSales
FROM Sales.SalesPerson sp
JOIN Sales.SalesOrderHeader soh
    ON sp.BusinessEntityID = soh.SalesPersonID
JOIN HumanResources.Employee e
    ON sp.BusinessEntityID = e.BusinessEntityID
JOIN Person.Person p
    ON e.BusinessEntityID = p.BusinessEntityID
JOIN Sales.SalesTerritory st
    ON sp.TerritoryID = st.TerritoryID
GROUP BY sp.BusinessEntityID, p.FirstName, p.LastName, st.Name
ORDER BY TotalSales DESC;

-- Q6 (Business User – Increased)
-- Author: Classmate F
-- Question: What products have never been sold?

-- A6: This query identifies products that do not appear in any sales order.
SELECT p.ProductID,
       p.Name AS ProductName,
       p.ProductNumber
FROM Production.Product p
LEFT JOIN Sales.SalesOrderDetail sod
    ON p.ProductID = sod.ProductID
WHERE sod.SalesOrderID IS NULL
ORDER BY p.Name;


-- Q7 (Metadata)
-- Author: Classmate G
-- Question: What tables exist in the AdventureWorks database?

-- A7: This query lists all tables using the INFORMATION_SCHEMA views.
SELECT TABLE_SCHEMA,
       TABLE_NAME,
       TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'
ORDER BY TABLE_SCHEMA, TABLE_NAME;

-- Q8 (Metadata)
-- Author: Classmate H
-- Question: What columns and data types are defined for the Sales.SalesOrderHeader table?

-- A8: This query retrieves column metadata from the INFORMATION_SCHEMA.
SELECT COLUMN_NAME,
       DATA_TYPE,
       IS_NULLABLE,
       CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Sales'
  AND TABLE_NAME = 'SalesOrderHeader'
ORDER BY ORDINAL_POSITION;

--SELECT GETDATE() AS my_date;