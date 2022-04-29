/* Question 1 */
use School
create table Employee
(
EmployeeID Int 
not null primary key identity(1001,1),
Ename varchar(20) not null,
DeptID int not null,
Salary Int not null
)
drop table Employee
insert into Employee values
('John',2,4000),
('Anna',1,3500),
('James',1,2500),
('David',2,5000),
('Mark',2,3000),
('Steve',3,4500),
('Alice',3,3500)
select * from Employee


/* Question 2 */

select DeptID as 'Department Id', avg(Salary) as 'Average Salary' from School.dbo.Employee group by DeptID having avg(Salary)>3000

/* Question 3 */
use School
create table Department(DeptID Int not null,
Dname varchar(20) not null,
Dlocation varchar(20) not null
)
insert into Department values
(1,'HR','Mumbai'),
(2,'IT','New Delhi'),
(3,'Finance','Mumbai')

select * from Employee;
select * from Department
select * from Employee inner join Department on Employee.DeptId=Department.DeptID

select Employee.DeptID, Department.Dname,
Employee.Salary from Employee inner join 
Department on 
Employee.DeptId=Department.DeptID

/* Question 4 #Doubt
use School
select distinct DeptId, avg(Salary),Department.DeptID, Department.Dname from Employee
full join Department on Employee.DeptID=Department.DeptID

select Salary from Employee
union
select DeptId from Department

*/


/* Quesiton 5 */

select FirstName, BirthDate from AdventureWorksDW2019.dbo.DimCustomer where BirthDate between cast('1985-01-01' as date) and cast('1985-12-01' as date);