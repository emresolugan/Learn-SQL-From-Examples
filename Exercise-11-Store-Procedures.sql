USE TestDB
GO

-- Stored Procedure is executed just one time and after that you can use this procedure everytime
-- It performs fast, you dont need to execute again, it gives you easy usage. 
CREATE PROC sp_AddEmployer
(
@EmployerName nvarchar(30),
@Age int,
@CompanyID int,
@Salary int,
@DepartmentID int
)
WITH ENCRYPTION
AS
BEGIN 
INSERT INTO dbo.Employer VALUES (@EmployerName, @Age, @CompanyID, @Salary, @DepartmentID)
PRINT 'Record has been added!'
END

GO

-- with this code, we call the stored procedure and insert some record
exec sp_AddEmployer 'John Lewis', 35, 4, 4500, 3
exec sp_AddEmployer 'Orhan Ölmez', 35, 1, 4500, 5

GO

-- Deleting Stored Procedure
CREATE PROC sp_DeletedEmployer
(
@EmployerName nvarchar(30)
)
WITH ENCRYPTION
AS 
IF EXISTS(SELECT * FROM dbo.Employer WHERE  EmployerName=@EmployerName)
BEGIN
DELETE FROM dbo.Employer 
WHERE EmployerName = @EmployerName
PRINT 'Record has been deleted!'
END
ELSE
BEGIN
PRINT 'Record has been not found!'
END

GO

-- with this code, we call the stored procedure and delete some record
exec sp_DeletedEmployer'John Lewis'
exec sp_DeletedEmployer'Ali Osman'

GO

-- Select Stored Procedure
CREATE PROC sp_SelectEmployer
(
@EmployerName nvarchar(30)
)
WITH ENCRYPTION
AS 
IF EXISTS(SELECT * FROM dbo.Employer WHERE  EmployerName=@EmployerName)
BEGIN
SELECT * FROM dbo.Employer WHERE  EmployerName=@EmployerName
END
ELSE
BEGIN
PRINT 'Record has been not found!'
END

GO

exec sp_SelectEmployer'Orhan Ölmez'
exec sp_SelectEmployer'Ali Osman'

GO