create database new;
use new;
create table employees(
emp_id int auto_increment primary key,
emp_name varchar(20),
salary decimal(10,2),
manager_id int,
 dept_id int,
 foreign key(dept_id) references departments(dept_id));
 
 insert into employees(emp_name,dept_id,salary,manager_id)
 values('john',101,35000.00,203),('ravi',102,65000.00,103),('harini',101,55000.00,221),('alice',104,68000.00,213);
 select * from employees;
 
 drop table employees;
create table department(
dept_id int primary key,
dept_name varchar(20),
location varchar(10) default 'coimbatore');


insert into department(dept_id,dept_name)
values(101,'HR'),(102,'manager'),(103,'HR'),('104','da');
select* from department;
drop table department;

create table projects(
proj_id int primary key,
proj_name varchar(20),
dept_id int,
foreign key(dept_id) references departments(dept_id),
budget decimal(10,3));

drop table projects;

insert into projects(proj_id,proj_name,dept_id,budget)
values(1,'alpha',101,540093.45),(2,'bheta',102,340008.00),(3,'delta',103,780008.00),(4,'gamma',104,90000.00);

select * from projects;

select emp_name from employees
 where dept_id=(select dept_id from employees where emp_name ='john');
 
 select distinct  dept_name from department as d
 join employees e 
 on d.dept_id=e.dept_id
 where e.salary>50000;
 
 select emp_name,salary from employees
 where salary=(select min(salary) from employees);
 
 select emp_name from employees
 where manager_id=(select manager_id from employees where emp_name='alice');
 
 
 

 