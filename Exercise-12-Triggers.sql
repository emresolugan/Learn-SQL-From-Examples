USE TestDB 
GO

-- Triggers have three types. These ara insert, update, delete.
CREATE TRIGGER insert_alert
ON dbo.Employer
FOR INSERT -- specified trigger's operations
AS
-- Do whatever 
SELECT * FROM inserted
GO

INSERT INTO dbo.Employer VALUES ('Emre SOLUGAN', 23, 2, 9562, 2)
GO

-- Control, if exists
IF EXISTS (SELECT name FROM sysobjects
        WHERE name = 'update_alert' AND type = 'TR')
    DROP TRIGGER update_alert
	GO
CREATE TRIGGER update_alert
ON dbo.Employer
FOR UPDATE -- specified trigger's operations
AS
-- Do whatever 
SELECT * FROM inserted
GO

UPDATE dbo.Employer SET Salary = 10450 WHERE EmployerName = 'Emre SOLUGAN'
GO

IF EXISTS (SELECT name FROM sysobjects
        WHERE name = 'delete_alert' AND type = 'TR')
    DROP TRIGGER delete_alert
	GO
CREATE TRIGGER delete_alert
ON dbo.Employer
FOR DELETE -- specified trigger's operations
AS
-- Do whatever 
Print('One record has been deleted')
GO

DELETE FROM dbo.Employer WHERE EmployerName = 'Emre SOLUGAN'