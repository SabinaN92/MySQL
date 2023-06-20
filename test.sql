create table employee(
empid int,
empname varchar(50),
gender char(1),
experience int,
age int,
salary int,
city varchar(50) check(city in('pune', 'bangalore', 'hyderabad', 'chennai')),
Designation varchar(50) check(Designation in('Developer', 'Lead','Manager', 'Architect','Delivery_Manager', 'Director'))
);

select * from employee;

insert into employee values(100, 'sabina', 'F', 2, 30, 30000, 'Bangalore', 'Developer'),
(101, 'sainaj', 'F', 2, 26, 25000, 'Bangalore', 'Lead'),
(102, 'abdul', 'M', 10, 35, 70000, 'Bangalore', 'Manager'),
(103, 'sana', 'F', 4, 30, 40000, 'hyderabad', 'Architect'),
(104, 'abid', 'M', 4, 28, 50000, 'chennai', 'Delivery_Manager'),
(105, 'razak', 'M', 12, 36, 80000, 'pune', 'Director'),
(106, 'haji', 'M', 5, 27, 90000, 'Bangalore', 'Developer'),
(107, 'aira', 'F', 2, 29, 25000, 'Bangalore', 'Director'),
(108, 'puttu', 'M', 15, 45, 100000, 'Hyderabad', 'Managaer'),
(109, 'arfa', 'F', 7, 27, 45000, 'Bangalore', 'Lead'),
(110, 'ariz', 'M', 2, 26, 50000, 'Pune', 'Delivery_Manager');
insert into employee values(111, 'aish', 'F', 2, 26, 50000, 'Chennai', 'Delivery_Manager');

select * from employee;

alter table employee add column country varchar(50) default 'India';
select * from employee;

select avg(salary) from employee;

select max(salary),min(salary) from employee;

select count(*) from employee;
select count(city) from employee where city='Hyderabad';

select * from employee where salary>50000;

update employee set salary=100000 where city='chennai';
select * from employee;

select empname,city from employee where city='pune';

select salary,city from employee where city='chennai';

delete from employee where city='pune';
select * from employee;


-- constraints
  -- 1) unique
  -- 2) Not Null
  -- 3) check
  -- 4) default
  -- 5) primary key
  -- 6) Foreign key
  
-- primary key                  
   -- > it will not allow both null value and duplicate values
   -- > it will allow only one primery key in the table

-- Unique
   -- > it will allow null value but not duplicate values
   -- > it will allow to have a more unique value in the table