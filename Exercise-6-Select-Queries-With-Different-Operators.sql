USE TestDB
GO

-- It brings us to all data of the Employer table.
SELECT * FROM dbo.Employer

-- It brings us to just specified columns' datas of the Employer table.
SELECT Age,Salary FROM dbo.Employer

-- It brings us to just specified datas of the Employer table.
SELECT DISTINCT Age FROM dbo.Employer

-- Select query with a conditional clause
SELECT * FROM dbo.Employer WHERE Age = 29

-- OR Syntax
SELECT * FROM dbo.Employer WHERE Age = 29 OR Salary = 2540

-- AND Syntax
SELECT * FROM dbo.Employer WHERE Age = 29 AND Salary = 2540

-- NOT Syntax
SELECT * FROM dbo.Employer WHERE NOT Age = 29

-- ORDER BY Syntax
SELECT * FROM dbo.Employer ORDER BY Age ASC, Salary ASC

-- Mathematical Operations
SELECT MAX(Age) AS Maximum ,MIN(Salary) AS Minimum FROM dbo.Employer 
SELECT SUM(Age) AS Summition ,AVG(Salary) AS Average FROM dbo.Employer 

-- Like Syntax Operators
-- WHERE EmployerName LIKE 'a%'	Finds any values that starts with "a"
-- WHERE EmployerName LIKE '%a'	Finds any values that ends with "a"
-- WHERE EmployerName LIKE '%or%'	Finds any values that have "or" in any position
-- WHERE EmployerName LIKE '_r%'	Finds any values that have "r" in the second position
-- WHERE EmployerName LIKE 'a_%_%'	Finds any values that starts with "a" and are at least 3 characters in length
-- WHERE EmployerName LIKE 'a%o'	Finds any values that starts with "a" and ends with "o"

SELECT * FROM Employer
WHERE EmployerName LIKE 's%';

-- Between Syntax
SELECT * FROM dbo.Employer WHERE Age BETWEEN  28 AND 50





