USE TestDB 
GO

DROP TABLE IF EXISTS Univercity;

-- Create to work with it. 
CREATE TABLE Univercity (
    UniversityId int PRIMARY KEY,
    UniversityName nvarchar(50),
); 

-- Renaming the table
exec sp_rename 'Univercity' , 'Univercities'

-- Adding new columns
ALTER TABLE Univercities
ADD DepartmentID int,
    StudentCount int

-- Modifying the column
ALTER TABLE Univercities
ALTER COLUMN StudentCount nvarchar(30)

-- Dropping the column
ALTER TABLE Univercities
DROP COLUMN StudentCount 

-- Describing the table in SQL Server
exec sp_columns Univercities

-- After we're done with that table, we're deleting
DROP TABLE Univercities