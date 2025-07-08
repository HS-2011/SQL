use details;
create table employeedata(
emp_id int,
age int,
name varchar(30));
insert into employeedata(emp_id,age,name)
values(1,34,'raju'),(2,26,'guna'),(3,54,'devi');
select * from employeedata;

alter table employeedata add phone_no varchar(20);

alter table employeedata modify phone_no varchar(20);

alter table employeedata change phone_no contact_no varchar(15);

rename table employeedata to staff;

select * from staff;