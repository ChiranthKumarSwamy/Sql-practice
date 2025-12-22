create database company ;
use company ;


create table employee (emp_id int primary key,emp_name varchar(20) not null , emp_gender varchar(1) ,  emp_salary int ,emp_birthday date   );
insert into employee values (1 , 'Abhi' , 'M' , 5000 , '2002-08-10');
insert into employee values (2 , 'chiru' , 'M' , 15000 , '2002-10-21');
insert into employee values (3 , 'kavana' , 'F' , 125000 , '2002-06-29');
insert into employee (emp_birthday , emp_id , emp_name , emp_Salary , emp_gender ) values ('2004-10-09',4,'Bavya',9000 , 'F');

select * from employee ;
select emp_name , emp_Salary from employee ;
select distinct emp_gender from employee ; 
select * from employee where emp_gender = 'M';
select * from employee where emp_salary > 30000 ;
select * from employee where emp_salary between 5000 and 40000 ;
select * from employee where emp_gender = 'f' and emp_salary > 25000 ;
select * from employee where emp_gender = 'm' or emp_salary > 45000; 
select * from employee where emp_gender != 'f';
select * from employee where emp_name like 'a%';
select * from employee where emp_name like '%n';
select * from employee where emp_name like '_____';

update employee set emp_salary = 50000 where emp_id = 2 ;
update employee set emp_gender = 'm' where emp_name like 'b%'
delete from employee where emp_id = 3;

select * from employee where emp_birthday between '2002-01-01' and '2002-12-31' and emp_gender = 'm';





------- Solving advance questions ------------
--Display all employees except those whose salary is between 10,000 and 40,000.
select * from employee where emp_salary not between 10000 and 40000
--Display employees whose name does not start with ‘A’.
select emp_name from employee where emp_name not like 'a%'
--Display employees whose gender is ‘M’ and name ends with ‘u’.
select * from employee where emp_gender = 'M' and emp_name like '%u';
--Display employees whose birthday is NOT in the year 2002.
select * from employee where  emp_birthday != '2002-08-10' ;
--Display employees where:salary > 30,000 AND gender is not female 
select * from employee where emp_salary > 30000 and emp_gender !='f';
-----Display employees where:gender is female OR salary is less than 10,000
select * from employee where emp_gender = 'f' or emp_salary < 10000 ; 
--Display employees where:name starts with ‘A’ or ‘B’ AND salary is greater than 8,000
select * from employee where (emp_name like 'a%' or emp_name like 'b%' )and emp_salary > 8000 ;
--Q8.Display employees whose name:starts with any letter ends with ‘a’has exactly 5 characters
select * from employee where emp_name like '_____a'
--Display employees whose name has ‘a’ as the second character.
select * from employee where emp_name like '_a%'
--Display employees whose name contains ‘av’ anywhere.
select * from employee where emp_name like '%av%'
--Increase salary to 60,000 for employees:whose gender is M AND salary is less than 20,000
update  employee set emp_salary = 60000 where emp_gender = 'm' and emp_salary < 20000;
--Change gender to ‘F’ for employees whose name ends with ‘a’.
update employee set emp_gender = 'm' where emp_name like '%a';
--Delete employees whose salary is less than 7,000. 
delete employee where emp_salary <51000 ;
--select * from employee ;
--Delete employees whose:birthday is before 2002-01-01 AND gender is M
delete employee where emp_birthday  < '2002-01-01' ;
--Display employees whose:--name starts with ‘a’ OR birthday is between 2002-06-01 and 2002-12-31 AND salary is greater than 10,000
select *from employee where emp_name like 'a%' or emp_birthday between '2002-06-01' and ' 2002-12-31' and emp_salary > 10000 ;
--SELECT * FROM employee WHERE NOT emp_salary > 30000 AND emp_gender = 'F';
display employee where salary is not greater than 30000 and employee gender is female 

