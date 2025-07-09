use details;

create table customers(
cust_id int,
name varchar(20),
city varchar(30));

create table orderss(
ord_id int,
cust_id int,
product varchar(20));

insert into customers value(1,'alice','newyork'),(2,'bob','chicago'),(3,'charlie','miami');

insert into orderss value(101,1,'laptop'),(102,1,'mouse'),(103,2,'keyboard'),(104,4,'monitor');

select * from customers;
select * from orderss;


select c.cust_id,c.name,c.city,o.ord_id,o.cust_id,o.product
from customers as c right join orderss as o
on c.cust_id=o.cust_id;

select c.cust_id,c.name,c.city,o.ord_id,o.cust_id,o.product
from customers as c left join orderss as o
on c.cust_id=o.cust_id;

select c.cust_id,c.name,o.cust_id
from customers as c left join orderss as o
on c.cust_id=o.cust_id;


select c.name,o.product
from customers as c left join orderss as o
on c.cust_id=o.cust_id;

select c.name,o.product
from customers as c inner join orderss as o
on c.cust_id=o.cust_id;

select c.name,o.product
from customers as c inner join orderss as o
on c.cust_id=o.cust_id 
where product='mouse';



