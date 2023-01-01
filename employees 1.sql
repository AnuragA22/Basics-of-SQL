use employees;

show tables;

select first_name, last_name
from employees;

select *
from employees
where first_name = 'Denis' and gender ='M';

select *
from employees
where first_name in('Denis', 'Elvis');



select * 
from employees 
where first_name not in ('Cathie' , 'Mark' , 'Nathan');

select * 
from employees 
where first_name like 'Mar%';

select count(first_name like 'Mar%')
from employees;

Select * from employees where first_name regexp '^Mar';

select * 
from employees 
where last_name like '%Lay';

-- first name length = 4

Select * 
from employees 
where first_name like '____';

-- first name begin with mar and have length =4

Select * 
from employees 
where first_name like 'Mar_';

-- first name with ion anywhere in name

Select * 
from employees 
where first_name like '%ion%';


-- hire date in between

select * from employees where hire_date between '1990-01-01' and '1995-01-01';

-- 

select count(gender)

select distinct gender from employees;

-- finding duplicates more then 250

select 
first_name,
count(first_name) as first_count
from
employees
group by first_name
having first_count>=250;

select * from dept_manager;

select count(*) from dept_manager;

select * from employees;

select *
from employees
where emp_no in 
(
select emp_no
from dept_manager
);

show tables;


select d.emp_no, dt.dept_no, 
from dept_manager as d
inner join departments as dt
on d.dept_no = dt.dept_no;














