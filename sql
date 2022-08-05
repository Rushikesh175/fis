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

