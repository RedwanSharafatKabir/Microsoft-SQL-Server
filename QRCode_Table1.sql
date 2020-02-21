use [QRCodeString_tbl]
go

create table table1
(
ID int not null primary key,
date_time date not null,
image varchar(500),
string varchar(100)
);
select * from table1;

drop table table1;