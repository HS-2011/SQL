use details;
create table users(
user_id int primary key unique,
name varchar(20) unique not null,
email varchar(20) unique not null,
password varchar(20) not null,
age int check(age >=13),
country varchar(30) default 'usa');
insert into users(user_id,name,email,password,age,country)
values(1,'ram','ytfu','aoi',23,'india'),(2,'teju','iryt','uti',34,'america'),(3,'ravi','juik','htr',62);
select * from users;