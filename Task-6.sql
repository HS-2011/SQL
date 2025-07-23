use new;
create table employee(
emp_id int,
f_name varchar(20),
l_name varchar(20),
address varchar(30),
num bigint);

insert into employee value(1,'harini','shri','chennai abc',6798345012),(2,'tamil','selvan','madurai hyf',9875632356),(3,'bas','karan','theni tru',9821345670);

select * from employee;

drop table employee;

alter table employee add full_name varchar(30);

update employee set full_name=concat(f_name,l_name);

select concat(f_name,' ',l_name) as fname from employee;

select left(f_name,3) from employee;

select replace(address,' ','-')  as spacename from employee;

select right(num,5) from employee;

select upper(full_name) as upname from employee;
