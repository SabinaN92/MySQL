use learnings;
set sql_safe_updates=0;

create table employees(empid int, fname varchar(50), lname varchar(50), department varchar(50), status varchar(50), 
                         hiredate datetime, salary int, job_rating int);
                         
select * from employees
desc employees;
insert employees values(1, 'sana', 'nadaf', 'developer', 'full time', '2022-06-01', 30000, 2),
                        (2, 'saina', 'nadaf', 'designer', 'full time', '2023-06-01', 40000, 3),   
                        (3, 'sabina', 'pinjar', 'programer', 'part time', '2021-11-11', 20000, 1),
                        (4, 'abdul', 'doddamani', 'design', 'full time', '2008-08-01', 70000, 4),
                        (5, 'razak', 'abd', 'engineer', 'full time', '2008-02-04', 100000, 5);
                        
                        
select * from employees where department='developer';
select * from employees where department in('developer','design');

select * from employees where department in('developer', 'programer') and status='full time';

select * from employees where department in('developer', 'programer') and status in('full time', 'part time');

select * from employees where department='developer'  or status='part time';

select fname,lname, department, salary from employees where salary>30000;

select * from employees where department!='developer';

select count(*) from employees;

select max(salary) from employees;

select min(salary) from employees;

select avg(salary) from employees;

select max(salary), min(salary),avg(salary) from employees






