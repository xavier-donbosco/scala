/* Quesiton --1 */
create table Salesman(salesman_id int identity(5001,1)
NOT NULL PRIMARY KEY ,
name1 varchar(25) not null,
city varchar(25),
commission varchar(25));

/* Quesiton --2 */

insert into Salesman 
values ('James Hogg','New York','0.15'),
('Nail Knite','Paris','0.13'),
('Pit Ales','London','0.11'),
('Mc Lyon','Paris','0.14'),
('Paul Adam','Paris','0.13'),
('Lauson Hen','San Jose','0.12')

/* Quesiton --3 */

select * from Salesman;

/* Quesiton --4 */

select distinct city from Salesman;

/* Quesiton --5 */

select distinct * from Salesman;
select distinct salesman_id,name1,city,commission from Salesman;

/* Quesiton --6 */

select distinct name1,city from Salesman;

/* Quesiton --7 */

select * from Salesman where city='Paris';

/* Quesiton --8 */

select * from Salesman where city='Paris' and commission='0.14';

/* Quesiton --9 */

select * from Salesman order by commission asc;

/* Quesiton --10 */

select * from Salesman where city!='San Jose';

/* dropping the table */
drop table Salesman