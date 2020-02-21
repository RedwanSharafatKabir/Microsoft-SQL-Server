use [my_database]
go

create table Section_D_Gender_Table
(
ID int not null primary key,
gender varchar(10) not null
)

create table Section_D_Person_Table
(
ID int not null primary key,
Name varchar(20) not null,
Email varchar(20) not null,
Section varchar(10) not null,
GenderID int
)

alter table Section_D_Person_Table add constraint fk_PerSection_D_Person_Table /* Section_D_Person_Table_GenderID_FK */
Foreign Key (GenderID) references Section_D_Gender_Table (ID)

drop table Section_D_Gender_Table;
drop table Section_D_Person_Table;
