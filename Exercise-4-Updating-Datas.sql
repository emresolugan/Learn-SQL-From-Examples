USE TestDB
GO

UPDATE dbo.Employer 
	   SET Age = 29 , EmployerName = 'Sevim GÜR'
	   WHERE EmployerID = 4
	   GO