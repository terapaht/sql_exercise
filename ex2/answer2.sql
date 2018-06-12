-- Answer exercise 2
--2.1 Select the last name of all employees without diplication
SELECT Employees.LastName from Employees;
--2.2 Select all the data of employees whose last name is "Smith" or "DOr"
SELECT * from Employees WHERE Employees.lastname="Smith" OR Employees.lastname="Doe";
--2.3 Select all the data of employees whose lastname begins with as "S"
SELECT * from Employees Where Employees.lastname LIKE 'S%';
--2.4 Select all the data of employees,including each employee's department's data
SELECT * from Employees INNER JOIN Departments ON Employees.Department = Departments.Code;
--2.5 Select the name and last name of employees working for departments with a budget greater than $60,000
