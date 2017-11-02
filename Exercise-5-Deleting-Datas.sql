USE TestDB
GO

DELETE FROM dbo.Employer
	   WHERE EmployerID = 5
	   GO

-- this just one data, just one table is affecting from this codes. --

DELETE FROM dbo.Employer
			WHERE DepartmentID IN 
			(SELECT DepartmentID FROM dbo.Department
			 WHERE DepartmentName = 'Administrative')
			 GO

-- We want to remove data for all departments equals the Administrative from Employer.  We use the following that SQL statement to accomplish this. --