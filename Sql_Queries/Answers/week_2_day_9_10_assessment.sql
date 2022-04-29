/* Quesiton 1*/
create table Person(PersonId int primary key,
LastName varchar(23),
FirstName varchar(23),
Age int)

insert into Person values
(1001,'bosco','xavier',22),
(1002,'gnanavel','kingston',22),
(1003,'prasanth','immanuvel',22),
(1004,'admin','praveen',22),
(1005,'meesa','murali',22)

create table Orders(OrderId int primary key,
OrderNumber int,
PersonId int foreign key references Person(PersonId))

insert into Orders values
(2001,501,1001),
(2002,502,1002),
(2003,503,1003),
(2004,504,1004),
(2005,505,1005)

/* Quesiton 2*/
select LastName as Lname , *  from AdventureWorksDW2019.dbo.DimCustomer order by LastName ASC;

/* Quesiton 3*/
select top 20 * from AdventureWorksDW2019.dbo.DimProduct;

/* Quesiton 4*/
select top 50 percent * from AdventureWorksDW2019.dbo.DimCustomer;

/* Quesiton 5*/
select MIN(YearlyIncome) as Minimum_Yearly_Income,MAX(YearlyIncome) as Maximum_Yearly_Income from AdventureWorksDW2019.dbo.DimCustomer;
