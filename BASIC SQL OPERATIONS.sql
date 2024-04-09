-- DDL (Data Definition Language) - Creating Tables

drop table employees

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT
);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

-- DML (Data Manipulation Language) - Inserting Data
INSERT INTO Employees VALUES (1, 'John', 'Doe', 1);
INSERT INTO Employees VALUES (2, 'Jane', 'Smith', 2);
INSERT INTO Employees VALUES (3, 'Alice', 'Johnson', 1);

INSERT INTO Departments VALUES (1, 'HR');
INSERT INTO Departments VALUES (2, 'IT');
INSERT INTO Departments VALUES (3, 'Finance');

-- DQL (Data Query Language) - Selecting Data
SELECT * FROM Employees;

-- Built-in SQL Functions
-- Example: Count the number of employees in each department
SELECT DepartmentName, COUNT(EmployeeID) AS NumEmployees
FROM Departments
LEFT JOIN Employees ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY DepartmentName;

-- Subquery - Example: Select employees whose department has 'HR' in its name
SELECT * FROM Employees
WHERE DepartmentID IN (
    SELECT DepartmentID FROM Departments WHERE DepartmentName LIKE '%HR%'
);

-- All types of Joins
-- INNER JOIN
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- LEFT JOIN
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- RIGHT JOIN
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;

-- FULL OUTER JOIN
SELECT Employees.FirstName, Departments.DepartmentName
FROM Employees
FULL OUTER JOIN Departments ON Employees.DepartmentID = Departments.DepartmentID;
