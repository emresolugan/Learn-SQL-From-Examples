USE TestDB
GO
/* Selecting database.. */


/* Creating tables.. */

CREATE TABLE Employer
(EmployerID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
EmployerName nvarchar(30) NOT NULL, 
Age int NOT NULL,
CompanyID int NOT NULL,
Salary int NOT NULL,
DepartmentID int NOT NULL,
CONSTRAINT FK_EmployerCompany FOREIGN KEY (CompanyID)
REFERENCES Company(CompanyID),
CONSTRAINT FK_EmployerDepartment FOREIGN KEY (DepartmentID)
REFERENCES DEPARTMENT(DepartmentID))
GO

CREATE TABLE Company
(CompanyID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
CompanyName nvarchar(30) NOT NULL,
StaffCount int)
GO

CREATE TABLE Department
(DepartmentID int NOT NULL IDENTITY(1,1) PRIMARY KEY,
DepartmentName nvarchar(30) NOT NULL)
GO

 