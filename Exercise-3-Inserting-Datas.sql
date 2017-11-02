USE TestDB
GO

INSERT dbo.Company (CompanyName, StaffCount)
VALUES ('Apple INC' , 2500)
GO

INSERT dbo.Company (CompanyName, StaffCount)
VALUES ('Microsoft' , 4700)
GO

INSERT dbo.Company (CompanyName)
VALUES ('Vestel')
GO

INSERT dbo.Company (CompanyName, StaffCount)
VALUES ('Arçelik' , 5000)
GO

INSERT dbo.Company (CompanyName, StaffCount)
VALUES ('Eti' , 12500)
GO

INSERT dbo.Department (DepartmentName)
VALUES ('Human Resources')
GO

INSERT dbo.Department (DepartmentName)
VALUES ('IT Department')
GO

INSERT dbo.Department (DepartmentName)
VALUES ('Accountanting')
GO

INSERT dbo.Department (DepartmentName)
VALUES ('Security')
GO

INSERT dbo.Department (DepartmentName)
VALUES ('Administrative')
GO

INSERT dbo.Employer (EmployerName, Age, CompanyID, Salary, DepartmentID)
VALUES('Ali ÖZTÜRK', 25, 4, 2540, 1)
GO

INSERT dbo.Employer (EmployerName, Age, CompanyID, Salary, DepartmentID)
VALUES('John DOE', 45, 2, 8540, 2)
GO

INSERT dbo.Employer (EmployerName, Age, CompanyID, Salary, DepartmentID)
VALUES('George HARTON', 37, 1, 9999, 5)
GO

INSERT dbo.Employer (EmployerName, Age, CompanyID, Salary, DepartmentID)
VALUES('Hasan ALÝ', 33, 3, 2500, 4)
GO

INSERT dbo.Employer (EmployerName, Age, CompanyID, Salary, DepartmentID)
VALUES('Melahat GÜLDÝKEN', 35, 5, 14540, 5)
GO