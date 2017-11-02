USE TestDB
GO


-- This SQL statement uses the IS NULL operator to list all Employes that have no salaries
SELECT * FROM dbo.Employer
WHERE Salary IS NULL