USE TestDB
GO

-- JOIN clauses are used to combine rows from two or more tables, based on a related column between them.

-- INNER JOIN: Returns records that have matching values in both tables
SELECT dbo.Employer.EmployerName, dbo.Company.CompanyName, dbo.Department.DepartmentName FROM dbo.Employer 
INNER JOIN dbo.Company ON dbo.Employer.CompanyID = dbo.Company.CompanyID
INNER JOIN dbo.Department ON dbo.Employer.DepartmentID = dbo.Department.DepartmentID

-- The LEFT JOIN keyword returns all records from the left table
SELECT dbo.Employer.EmployerName, dbo.Company.CompanyName FROM dbo.Employer 
LEFT JOIN dbo.Company ON dbo.Employer.CompanyID = dbo.Company.CompanyID
ORDER BY dbo.Employer.EmployerName

-- The RIGHT JOIN keyword returns all records from the right table
SELECT dbo.Employer.EmployerName, dbo.Company.CompanyName FROM dbo.Employer 
RIGHT JOIN dbo.Company ON dbo.Employer.CompanyID = dbo.Company.CompanyID
ORDER BY dbo.Employer.EmployerName

-- The FULL OUTER JOIN keyword returns all records from the both tables
SELECT dbo.Employer.EmployerName, dbo.Company.CompanyName FROM dbo.Employer 
FULL OUTER JOIN dbo.Company ON dbo.Employer.CompanyID = dbo.Company.CompanyID
ORDER BY dbo.Employer.EmployerName

