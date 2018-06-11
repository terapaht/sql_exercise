--Select the last name of all employees, without duplicates.
select distinct lastname from employees;

--Select all the data of employees whose last name is "Smith" or "Doe".
select * from employees where lastname in ('Smith','Doe');

--Select all the data of employees whose last name begins with an "S".
select * from employees where lastname like 'S%';

--Select all the data of employees, including each employee's department's data.
select e.*, d.* from employees e, departments d where e.department = d.code;

--Select the name and last name of employees working for departments with a budget greater than $60,000.
select name, lastname from employees where department in (select code from departments where budget > 60000);

--Select the names of departments with more than two employees.
select name from departments where code in (select department from employees group by department having count(*)>2);

--Select the name and last name of employees working for departments with second lowest budget.
select name, lastname from employees where department = 
	(select code from departments where budget=
		(select max(budget) from (select * from departments order by budget asc limit 2)));

--Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11.
--And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
INSERT INTO Departments(Code,Name,Budget) VALUES(11,'Quality Assurance',40000);
INSERT INTO Employees(SSN,Name,LastName,Department) VALUES('847219811','Mary','Moore',11);

--Reassign all employees from the Research department (code 77) to the IT department (code 14).
update employees set department = 14 where department = 77;

--Delete from the table all employees in the IT department (code 14).
delete from employees where department = 14;

--Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
delete from employees where department in (select code from departments where budget >= 60000);

--Delete from the table all employees.
delete from employees; 