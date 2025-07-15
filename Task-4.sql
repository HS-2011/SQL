use details;
delimiter $$
create function total(mark1 int,mark2 int,mark3 int)
returns int
deterministic
begin
return mark1+mark2+mark3;
end $$
delimiter ;

select  total (59,80,63) as final_value;

delimiter $$
create function detail_data(first_name varchar(20),last_name varchar(10))
returns varchar(20)
deterministic
begin
return (concat(first_name, ' ' ,last_name));
end $$
delimiter ;
drop function detail_data;


delimiter $$
create function total1(price1 int,price2 int,price3 int,discount int)
returns int
deterministic
begin
declare totalprice int ;
set totalprice=price1+price2+price3;
set totalprice=totalprice-(totalprice*discount/100);
return totalprice;
end $$
delimiter ;

select  total1(59,80,63,12) as totalprice;
