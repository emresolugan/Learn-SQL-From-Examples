USE TestDB
GO

UPDATE dbo.Employer 
	   SET Age = 29 , EmployerName = 'Sevim G�R'
	   WHERE EmployerID = 4
	   GO