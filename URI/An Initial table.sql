use [Basic]
go
--insert into products values(1, 25);
--insert into products values(2, 50);
--insert into products values(3, 100);
--insert into products values(4, 300);
--insert into products values(5, 800);

--select * from products;
--select max(price) as price, min(price) as price from products;
--select price from products where price = (select min(price) from products);
--union select c.name from product p, categories c

create table categories
(
ID int not null primary key,
name varchar(20)
)
create table product
(
ID int not null primary key,
amount int,
id_categories int
foreign key (id_categories) references categories(ID)
)
insert into categories values(1, 'sukahash');
insert into categories values(2, 'kabila');
insert into categories values(3, 'discout');
insert into categories values(4, 'habu');
insert into categories values(5, 'shojib');
insert into categories values(6, 'habu');

insert into product values(1, 100, 1);
insert into product values(2, 1000, 3);
insert into product values(3, 10000, 4);
insert into product values(4, 350, 2);
insert into product values(5, 3000, 4);
insert into product values(6, 750, 1);

select * from product;
select * from categories;

select c.name, sum(p.amount) as sum
from product p, categories c
where c.id = p.id_categories
group by c.name

select cast(avg(amount) as decimal(10,2)) from product

select name
from categories
where name = 'sukahash' or name = 'kabila'

select name, len(name) as length from categories order by length desc

select count(distinct name) from categories

drop table product
drop table categories
