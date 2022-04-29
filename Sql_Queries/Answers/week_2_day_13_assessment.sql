/* Question 1 */

create table School.dbo.EmployeeDetails
(
EmployeeId Int identity(1,1) not null primary key, FirstName varchar(20) not null,
LastName varchar(20) not null,Salary float not null,
Department varchar(20) not null,Gender varchar(20) not null
)

drop table School.dbo.EmployeeDetails
insert into School.dbo.EmployeeDetails values
('Vikas','Ahiawat',600000,'IT','Male'),
('nikita','Jain',530000,'HR','Female'),
('Ashish','Kumar',1000000,'IT','Male'),
('Nikhil','Shama',480000,'HR','Male'),
('anish','kadian',500000,'Payroll','Male')

create table School.dbo.ProjectDetails
(
ProjectDetailID Int identity(1,1) not null primary key, 
EmployeeID int not null foreign key references EmployeeDetails(EmployeeId),
ProjectName varchar(20) not null
)

insert into School.dbo.ProjectDetails( EmployeeID, ProjectName) values
(1,'Task Track'),
(1,'CLP'),
(1,'Survey Management'),
(2,'HR Management'),
(3,'Task Track'),
(3,'GRS'),
(3,'DDS'),
(4,'HR Management'),
(4,'GL Management')
drop table ProjectDetails
select * from School.dbo.EmployeeDetails
select * from School.dbo.ProjectDetails

/* Question 2 */
use School
select FirstName, ProjectName from EmployeeDetails  inner join ProjectDetails on EmployeeDetails.EmployeeId=ProjectDetails.EmployeeID

/* Question 3 */
use School
select FirstName, ProjectName from EmployeeDetails  full join ProjectDetails on EmployeeDetails.EmployeeId=ProjectDetails.EmployeeID 

/* Question 4 */
use School
select FirstName, ProjectName from EmployeeDetails  left join ProjectDetails on EmployeeDetails.EmployeeId=ProjectDetails.EmployeeID 

/* Question 5 */

select * from School.dbo.EmployeeDetails
select * from School.dbo.ProjectDetails

use School
select FirstName, ProjectName from EmployeeDetails  full join ProjectDetails on EmployeeDetails.EmployeeId=ProjectDetails.EmployeeID 
