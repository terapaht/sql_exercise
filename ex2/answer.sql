-- 1 Select the last name of all employees, without duplicates.
SELECT DISTINCT LastName FROM Employees;

-- 2 Select all the data of employees whose last name is "Smith" or "Doe".
SELECT * FROM Employees WHERE LastName = 'Smith' OR LastName = 'Doe';

-- 3 Select all the data of employees whose last name begins with an "S".
SELECT * FROM Employees WHERE LastName LIKE 'S%';

-- 4 Select all the data of employees, including each employee's department's data.
SELECT * FROM Employees,Departments WHERE Employees.Department = Departments.Code; 

-- 5 Select the name and last name of employees working for departments with a budget greater than $60,000.
SELECT e.Name,e.LastName FROM Employees e JOIN Departments d ON e.Department = d.Code WHERE d.Budget > 60000;

-- 6 Select the names of departments with more than two employees.
SELECT Name FROM Departments WHERE (SELECT DISTINCT COUNT(Department) from Employees) > 2;

-- 7 Select the name and last name of employees working for departments with second lowest budget.
SELECT e.Name,e.LastName FROM Employees e JOIN Departments d ON e.Department = d.Code 
WHERE d.Budget = (SELECT MIN(Budget) FROM Departments WHERE Budget > (SELECT MIN(Budget) FROM Departments));

-- 8 Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.
INSERT INTO Departments(Code,Name,Budget) VALUES(44,'Quality Assurance',40000);

-- 9 And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('847219811','Mary','Moore',44);

-- 10 Reassign all employees from the Research department (code 77) to the IT department (code 14).
UPDATE Employees SET Department = 14 WHERE Department = 77;

-- 11 Delete from the table all employees in the IT department (code 14).
DELETE FROM Employees WHERE Department = 14;

-- 12 Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
DELETE FROM Employees WHERE Department = (SELECT Code FROM Departments WHERE Budget >= 60000); 

-- 13 Delete from the table all employees.
DELETE FROM Employees;
