USE TestDB
GO

-- In SQL, a view is a virtual table based on the result-set of an SQL statement. 
-- A view contains rows and columns, just like a real table.

CREATE VIEW EmployersThatOlderThan25 
AS 
SELECT EmployerName, Salary FROM dbo.Employer WHERE Age > 25
-- We created and recorded the view

SELECT *FROM EmployersThatOlderThan25
-- And after, we are querying the view.

ALTER VIEW EmployersThatOlderThan25 
AS 
SELECT EmployerName, Salary FROM dbo.Employer WHERE Salary > 2400
-- We updated the last view

SELECT *FROM EmployersThatOlderThan25


CREATE VIEW EncryptionView
With Encryption
AS
SELECT * FROM dbo.Employer WHERE Age > 27
-- We can't see design page of encrypted views
SELECT *FROM EncryptionView

-- This is how we drop the view
DROP VIEW EncryptionView

-- And we recreate again
CREATE VIEW EncryptionView
With Encryption
AS
SELECT * FROM dbo.Employer WHERE Age > 27