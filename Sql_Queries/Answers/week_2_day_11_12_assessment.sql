select * from AdventureWorksDW2019.dbo.DimEmployee;

/* Question 1 */
select distinct EmailAddress from AdventureWorksDW2019.dbo.DimEmployee where EmailAddress like '%vi%';

select * from AdventureWorksDW2019.dbo.DimProduct;

/* Question 2 */
select EnglishProductName from AdventureWorksDW2019.dbo.DimProduct where EnglishProductName like 'b%e';

/* Question 3 */
select EnglishProductName from AdventureWorksDW2019.dbo.DimProduct where EnglishProductName like '_r%';

/* Question 4 */
/*select * from AdventureWorksDW2019.dbo.DimEmployee;*/

select FirstName, DepartmentName, Title from AdventureWorksDW2019.dbo.DimEmployee where Title in ('Accountant' ,'Chief Financial Officer'); 

/* Question 5 */

select concat(FirstName , LastName) as 'Employee Full Name' from AdventureWorksDW2019.dbo.DimEmployee;

/*select OrderDate from AdventureWorksDW2019.dbo.FactInternetSales;*/

/* Question 6 */

select OrderDate from AdventureWorksDW2019.dbo.FactInternetSales where OrderDate between cast('2014-01-01' as date) and cast('2014-01-28' as date);

/* Question 7 */

select min(UnitPrice)  from AdventureWorksDW2019.dbo.FactInternetSales;

/* Question 8 */

select sum(SalesAmount)  from AdventureWorksDW2019.dbo.FactInternetSales;

/* Question 9 */

select avg(TaxAmt)  from AdventureWorksDW2019.dbo.FactInternetSales;

/* Question 10 */
select FirstName, BirthDate from AdventureWorksDW2019.dbo.DimCustomer where BirthDate between cast('1980-01-01' as date) and cast('1985-12-31' as date) order by BirthDate asc;
