-----Database -----
----create database---

create database emp ; 

-------use database -----
use emp ;

-------Drop database -----
drop database emp ;

-------Create -----

create table employee (emp_id int not null , emp_name varchar(20) , gender char(1) , emp_birthday date , primary key (emp_id) );

-------- Drop --- [Delete whole structure of table ]-----
drop table employee ; 

-------- Truncate -----[Delete data without structure ]------
truncate table employee ; 

------ Alter --------- [Add , alter , drop ]

alter table employee add age int ;
alter table employee alter column gender varchar (5) ; 
alter table employee drop column age ; 

------insert [3 types insert ]------

insert into employee values (1,'Abhi', 'M','2002-8-10' );
insert into employee(emp_id , emp_name , gender ,emp_birthday) values(2,'Bheem','M','2002-12-29');
insert into employee (emp_name , emp_id , gender , emp_birthday ) values ('Chiru',3,'M','2002-10-21');
insert into employee (emp_name , emp_id , gender , emp_birthday , age ) values ('Chiruk',4,'Male','2003-10-21',25);

--------select [2types . Distinct  ]--------

select * from employee ; 
select emp_id from employee ; 
select emp_id,emp_birthday from employee ;

select distinct gender from employee ; 

-------- update ----- 

update employee set gender = 'Male ' where emp_id = 3 ;
update employee set gender = 'Male' ; 
update employee set emp_name = 'Kavana', gender = 'Male' where emp_id = 4 ;


--------Delete ---------

------where clase ----- [we mainly use compare >,< , = , != ,>= , <= ] ----
select emp_name from employee where gender != 'f' ;


