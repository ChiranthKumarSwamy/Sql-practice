------ where clause ------  --[If both value is true then we will get output]--

select * from employee ; 
select emp_id, emp_name from employee where gender ='m' and emp_birthday = '2002-10-21' ;

------------- Or ------ [if any one is true then we will get out put [t - t = t][t-f=t][f-t=t]]
select emp_id from employee where gender = 'm' or emp_id = 1 ;
select emp_name from employee where emp_birthday = '2002-10-21' or gender = 'm';

------------- not --------  [ gender not male gives all female ]
select emp_name from employee where not gender = 'female'

--------- Like ------------- [Percentage and underscore [c% , a_]]
select emp_name from employee  where   emp_name like 'c%';
select emp_name from employee  where   emp_name like '%u';
select emp_name from employee  where   emp_name like 'c%u';
select emp_name from employee  where   emp_name like 'A__';

---------------Between ------------ 
select * from employee where emp_birthday between '2002-08-10' and '2002-10-2';


