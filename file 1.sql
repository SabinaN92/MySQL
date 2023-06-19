create database learnings;
use learnings;
-- drop database learnings;

-- how to create a table ?

-- data types --> int, char, varchar, decimal, date
create table customer( custid int, custname varchar(100), gender char(1), age int, city varchar(20), date_of_birth date);

-- * indicates all the columns
select * from customer;

-- load the values in customer table
insert into customer values(1000, 'abdul', 'M', 35, 'Bangalore', current_date());

-- load the multiple data
insert into customer values(1001, 'sabina', 'F', 30, 'Bangalore', current_date()), 
(1002, 'sainaj', 'F', 26, 'Bangalore', '1996-12-05');

-- if you don't kw the customer age, dob or you are not passing the values age and dob,
--  you have to specify (after customer name) which are the clm names you are giving

insert into customer (custid, custname, gender, city) values(1003, 'sana', 'F', 'pune');

-- you should follow the same sequence or  specify the clm names after the customer name
insert into customer (custname, gender, city, date_of_birth, age, custid) values('raju', 'M', 'pune', '1986-06-12', 36, 1004);

-- update data
-- syntax ==> update <table_name> set clom name=value where custid=1003

select * from customer;

-- this below line is just for we are using freeware software
set sql_safe_updates=0;

update customer set age=25 where custname='sana';

update customer set city = 'pune' where city = 'mumbai' and custname='raju';

update customer set date_of_birth = current_date() where custid=1003;

-- delete statement
-- syntax => delete from <table_name> where condition; 

delete from customer where custid=1001;
select * from customer;

delete from customer where age>30;
