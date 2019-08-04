
create table account
(
ID int not null primary key,
name varchar(20),
login varchar(20),
password varchar(32)
)

insert into account values(1, 'Joyce P. Parry', 'Promeraw', 'noh1Oozei');
insert into account values(2, 'Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi');
insert into account values(3, 'Heather W. Lawless', 'Hankicht', 'diShono4');
insert into account values(4, 'Otis C. Hitt', 'Conalothe', 'zooFohH7w');
insert into account values(5, 'Roger N. Brownfield', 'Worseente', 'fah7ohNg');

select * from account;

select id, password, convert(varchar(32), HashBytes('md5', password), 2) as MD5
--select id, password, md5(password) as MD5
from account;
