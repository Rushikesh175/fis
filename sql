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
