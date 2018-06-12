1
select distinct LastName
from Employees;

2
select *
from Employees
where LastName ="Smith" or LastName = "Doe";

3
select *
from Employees
where LastName like "S%";

4
select e.*,d.Name,d.Budget
from Employees e,Departments d
where e.Department = d.Code;

5
select e.Name,e.LastName
from Employees e,Departments d
where e.Department = d.Code and d.Budget >= 60000;

6
select d.Name, count(e.SSN)
from Employees e,Departments d
where e.Department = d.Code 
group by e.Department
having count(e.SSN) > 2;

7
select e.Name,e.LastName
from Employees e, Departments d
where e.Department = d.Code and d.Budget =
(select min(Budget)
from Departments 
where Budget not in
(select min(Budget)
from Departments)
);

8
insert into Departments values (11,"Quality Assurance",40000);
insert into Employees values ('847219811','Mary','Moore',11);

9
update Employees set Department =14 where Department = 77;

10
delete from Employees where Department =14

11
delete from Employees where Department in (
select Code 
from Departments
where Budget >= 60000);

12
delete from Employees;