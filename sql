select * from employees -- all columns
/
select first_name,salary from employees
/
select first_name,salary,salary*12 from employees
/
select first_name fname,
salary as sal,
salary*12  "Annual_Salary"
from employees
/
select first_name,last_name,first_name||last_name full
from employees
where employee_id<106
/
select first_name||' has a lastname '||last_name full
from employees
where employee_id<106
/


[12:07 PM] varsha (Guest)
select first_name,salary

from employees

where salary=10000

/

select first_name,salary

from employees

where first_name='Peter'

/

select first_name,salary

from employees

where salary>10000

/

select first_name,salary

from employees

where salary between 10000 and 20000

/

select first_name,salary

from employees

where salary in (10000,12000,14000)

/

select first_name,commission_pct

from employees

where commission_pct is null

/

select first_name,commission_pct

from employees

where commission_pct is not null

/

LIKE operator : pattern matching

%: 0 or more character

_: exactly one character select first_name,commission_pct

from employees

where first_name like '%a%'

/

/

select first_name,commission_pct

from employees

where first_name like 'A%'

/

select first_name,commission_pct

from employees

where first_name like '_a%'

/

select first_name,commission_pct

from employees

where first_name like '_____'

/

[12:09 PM] varsha (Guest)
/

select first_name,salary

from employees

where first_name like '_____'

and salary>10000

/

select first_name,salary

from employees

where first_name like '_____'

or salary>10000

/





create table movies(movieId int,movieName varchar(30),Category char(2),language varchar(25))



create table shows(id int,DateandTime datetime,movieId int,price int)



insert into movies(movieId,movieName,Category,language)VALUES(100,'Speed','UA','English'),
(101,'Hanuman','U','Hindi'),
(102,'Terminator','UA','English'),
(103,'Matrix','UA','English'),
(104,'MyFriendGanesha','U','Hindi')



select * from movies



insert into shows(id,DateandTime,movieId,price)values
(1,'2009-07-21 12:00:00:000',100,120),
(2,'2009-07-21 16:00:00:000',100,150),
(3,'2009-07-21 19:00:00:000',101,175),
(4,'2009-07-22 11:30:00:000',102,150),
(5,'2009-07-21 23:30:00:000',102,175),
(6,'2009-07-22 09:30:00:000',103,100),
(7,'2009-07-21 11:30:00:000',103,120),
(8,'2009-07-22 14:30:00:000',103,150),
(9,'2009-07-21 14:30:00:000',103,150),
(10,'2009-07-21 20:30:00:000',104,175)



select * from shows



--1
select * from movies where language='HIndi'
--2
select movieid,movieName from movies where movieName like 'h%'
--3
select moviename,category,language,dateandtime,price from movies as m join
shows as s on m.movieId=s.movieId where language='English'



--4
select moviename,count(s.movieId) as 'NumberOfShows' from movies as m join
shows as s on m.movieId=s.movieId group by movieName



--5
select moviename,sum(price) as 'TotalPrice' from movies as m join
shows as s on m.movieId=s.movieId group by movieName having moviename='Matrix'



--6
select moviename,max(price) as 'MaxPrice' from movies as m join
shows as s on m.movieId=s.movieId group by movieName having moviename='Terminator'
--7



select moviename,
convert(varchar(10),DateandTime,105) as MovieDate,
count(s.movieId)
as 'TotalShows' from movies as m join
shows as s on m.movieId=s.movieId group by convert(varchar(10),dateandtime,105),movieName
